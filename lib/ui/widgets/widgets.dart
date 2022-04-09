import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:amosov/utils/colors.dart';

class Widgets {
  static Widget lineGoPage(
      {required Function() goto, required String title, String body = ''}) {
    return GestureDetector(
      onTap: goto,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
        ),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: AppColor.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  body,
                  style: const TextStyle(
                      color: AppColor.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SvgPicture.asset('assets/icon/arrow_right.svg',
                    height: 14, color: AppColor.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget lineSwitch(
      {required String title,
      required String body,
      required bool isSwitch,
      required Function setSwitch}) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: AppColor.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  (body == '')
                      ? const SizedBox.shrink()
                      : Text(
                          body,
                          style: const TextStyle(
                              color: AppColor.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                ],
              ),
            ),
            switcherWidget(isSwitch, setSwitch),
          ],
        ),
      ],
    );
  }

  static Widget switcherWidget(bool isActive, Function setActive) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      color: Colors.transparent,
      child: FlutterSwitch(
          activeColor: AppColor.green,
          inactiveColor: AppColor.lightBlue,
          activeToggleColor: AppColor.white,
          inactiveToggleColor: AppColor.green,
          width: 40.0,
          height: 24.0,
          toggleSize: 16.0,
          value: isActive,
          borderRadius: 100.0,
          padding: 4.0,
          onToggle: (val) {
            setActive();
          }),
    );
  }

  static Widget progressBar(int procent, BuildContext context) {
    return Container(
      color: AppColor.yellow,
      height: 25,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            color: AppColor.red,
            width: (MediaQuery.of(context).size.width - 50) * (procent / 100),
          ),
          Align(
            child: Text(
              '$procent%',
              style: TextStyle(
                  color: (procent < 51) ? AppColor.darkgrey : Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  static Widget iconAction(String sign, Function callBack) {
    return GestureDetector(
      onTap: () => callBack(),
      child: Container(
        padding: const EdgeInsets.only(right: 16, left: 8, top: 8, bottom: 8),
        color: Colors.transparent,
        child: CircleAvatar(
          radius: 16,
          child: SvgPicture.asset(
            sign,
            width: 20,
            height: 20,
            fit: BoxFit.fill,
            color: AppColor.green,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  static Widget genericContainer(
      {Widget? child,
      EdgeInsets padding = const EdgeInsets.all(10),
      EdgeInsets margin = const EdgeInsets.symmetric(
        vertical: 10,
      ),
      Gradient? gradient,
      BorderRadius? radius}) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        gradient: AppColor.twoColorGradient(),
        borderRadius: radius ?? BorderRadius.circular(10.0),
        boxShadow: AppColor.borderGradientLight(),
      ),
      child: child,
    );
  }

  static Widget buttonDialog(String title, Function callBack) {
    return GestureDetector(
      onTap: () => callBack(title),
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          gradient: AppColor.gradGreen,
          borderRadius: BorderRadius.circular(10),
          border: AppColor.border,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppText.textWhite18,
        ),
      ),
    );
  }
}
