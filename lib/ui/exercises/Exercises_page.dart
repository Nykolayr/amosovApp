// ignore_for_file: prefer_const_constructors

import 'package:amosov/ui/home/bloc/home_bloc.dart';
import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  _ExercisesPageState createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  late HomeBloc _homeBloc;
  @override
  void initState() {
    _homeBloc = context.read<HomeBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int count = _homeBloc.userRepository.falseAnswer +
        _homeBloc.userRepository.trueAnswer;
    int countAll = _homeBloc.userRepository.falseAnswerAll +
        _homeBloc.userRepository.trueAnswerAll;
    if (count == 0) count = 1;
    if (countAll == 0) countAll = 1;
    context.watch<HomeBloc>();
    return Scaffold(
      backgroundColor: AppColor.darkgreen,
      appBar: AppBarWithIcon(title: tr('exercises')),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.darkgreen,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
