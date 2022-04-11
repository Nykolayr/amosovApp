import 'package:amosov/ui/home/bloc/home_bloc.dart';
import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/ui/widgets/button.dart';
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
            vertical: 15,
            horizontal: 25,
          ),
          color: AppColor.darkgreen,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Widgets.genericContainer(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: AppColor.white,
                        shadowColor: AppColor.black,
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
                    ),
                    Widgets.genericContainer(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: AppColor.lightgreen,
                        shadowColor: AppColor.black,
                        elevation: 10,
                        child: Image.asset('assets/img/photo.jpg'),
                      ),
                    ),
                  ],
                ),
                GenericButton(
                  tr("begin"),
                  () => {},
                  isEnabled: true,
                ),
              ],
            ),
          )),
    );
  }
}
