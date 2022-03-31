import 'package:amosov/ui/home/bloc/home_bloc.dart';
import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/ui/widgets/widgets.dart';
import 'package:amosov/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeBloc _homeBloc;
  @override
  void initState() {
    _homeBloc = context.read<HomeBloc>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<HomeBloc>();
    return Scaffold(
      appBar: AppBarWithIcon(
        title: tr('training'),
        isIcon: true,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 25,
          ),
          color: AppColor.darkgreen,
          height: double.infinity,
          child: Center(
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  color: AppColor.white,
                  shadowColor: AppColor.darkBroun,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(
                      20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          tr('begin_text'),
                          style: AppText.textDarkBlue18.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            tr('amosov'),
                            style: AppText.textDarkBlue18.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  color: AppColor.lightgreen,
                  shadowColor: AppColor.darkBroun,
                  elevation: 10,
                  child: Image.asset('assets/img/photo.jpg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Widgets.button('Далее'),
              ],
            ),
          )),
    );
  }
}
