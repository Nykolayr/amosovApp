import 'package:amosov/ui/history/history_page.dart';
import 'package:amosov/ui/home/bloc/home_bloc.dart';
import 'package:amosov/ui/home/home_page.dart';
import 'package:amosov/ui/settings/bloc/settings_bloc.dart';
import 'package:amosov/ui/settings/settings_page.dart';
import 'package:amosov/utils/colors.dart';
import 'package:amosov/utils/value.dart';
import 'package:bart/bart/bart_model.dart';
import 'package:bart/bart/bart_scaffold.dart';
import 'package:bart/bart/bottom_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/statistics/statistics_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final CustomNavigatorObserver<PageRoute> routeObserver =
    CustomNavigatorObserver<PageRoute>();

Future appPushNamed(String route, {Object? arguments}) =>
    navigatorKey.currentState!.pushNamed(route, arguments: arguments);

List<BartMenuRoute> subRoutes() {
  return [
    BartMenuRoute.bottomBar(
      label: tr("training"),
      icon: Icons.home,
      path: '/training',
      pageBuilder: (context, settings) => const HomePage(),
    ),
    BartMenuRoute.bottomBar(
      cache: true,
      label: tr('statistics'),
      icon: Icons.timeline,
      path: '/statistics',
      pageBuilder: (context, settings) => const ProgressPage(),
    ),
    BartMenuRoute.bottomBar(
      cache: true,
      label: tr('history'),
      icon: Icons.list,
      path: '/history',
      pageBuilder: (context, settings) => const HistoryPage(),
    ),
    BartMenuRoute.bottomBar(
      label: tr('settings'),
      icon: Icons.settings,
      path: '/settings',
      pageBuilder: (context, settings) => BlocProvider(
        create: (_) => SettingsBloc(userRepository),
        child: const SettingsPage(),
      ),
    ),
  ];
}

Route<dynamic> routes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (_) => const MainPageMenu(routesBuilder: subRoutes),
      );
    default:
      throw 'unexpected Route';
  }
}

class MainPageMenu extends StatefulWidget {
  final BartRouteBuilder routesBuilder;
  const MainPageMenu({Key? key, required this.routesBuilder}) : super(key: key);

  @override
  State<MainPageMenu> createState() => _MainPageMenuState();
}

class _MainPageMenuState extends State<MainPageMenu> {
  @override
  Widget build(BuildContext context) {
    context.watch<HomeBloc>();
    return BartScaffold(
      routesBuilder: widget.routesBuilder,
      navigatorObservers: [routeObserver],
      bottomBar: BartBottomBar.fromFactory(
        elevation: 10,
        selectedItemColor: AppColor.yellow,
        unselectedItemColor: Colors.white,
        bgColor: AppColor.darkBroun,
        bottomBarFactory: BartMaterialBottomBar.bottomBarFactory,
      ),
    );
  }
}

class CustomNavigatorObserver<T> extends RouteObserver<PageRoute<T>> {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
  }
}
