// ignore_for_file: prefer_const_constructors

import 'package:amosov/ui/home/bloc/home_bloc.dart';
import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
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
      backgroundColor: AppColor.darkgreen,
      appBar: AppBarWithIcon(title: tr('statistics')),
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
