import 'package:amosov/ui/widgets/app_bar.dart';
import 'package:amosov/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.meddleGrey,
      appBar: AppBarWithIcon(title: tr('profile')),
      body: const SizedBox(
        width: double.infinity,
        child: Text('profile'),
      ),
    );
  }
}
