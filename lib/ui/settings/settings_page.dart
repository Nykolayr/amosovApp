import 'package:amosov/ui/exercises/Exercises_page.dart';
import 'package:amosov/ui/settings/bloc/settings_bloc.dart';
import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/ui/widgets/dialogs.dart';
import 'package:amosov/ui/widgets/widgets.dart';
import 'package:amosov/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late SettingsBloc _settingsBloc;
  @override
  void initState() {
    _settingsBloc = context.read<SettingsBloc>();
    super.initState();
  }

  setSound() {
    _settingsBloc.add(PressSound());
  }

  @override
  Widget build(BuildContext context) {
    context.watch<SettingsBloc>();
    return Scaffold(
      backgroundColor: AppColor.meddleGrey,
      appBar: AppBarWithIcon(
        title: tr('settings'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: AppColor.gradDark, color: AppColor.darkBlue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 36,
            ),
            Widgets.lineGoPage(
              goto: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExercisesPage()));
              },
              title: tr('exercise_management'),
            ),
            Widgets.lineGoPage(
              goto: () async {
                await showModalBottomSheet(
                  enableDrag: true,
                  isScrollControlled: true,
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => dialogLang(context, _settingsBloc),
                );
              },
              title: tr('lang'),
              body: _settingsBloc.lang + '   ',
            ),
            Widgets.lineSwitch(
              title: tr('sound'),
              body: '',
              isSwitch: _settingsBloc.isSound,
              setSwitch: setSound,
            ),
          ],
        ),
      ),
    );
  }
}
