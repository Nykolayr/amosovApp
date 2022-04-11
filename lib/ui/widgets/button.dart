import 'package:amosov/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GenericButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  Key? key;
  bool isEnabled;
  Color buttonBg;
  Color bgColor;
  bool hasGradient;
  double borderRadius;

  GenericButton(
    this.title,
    this.onTap, {
    this.key,
    this.isEnabled = true,
    this.buttonBg = AppColor.green3,
    this.bgColor = AppColor.green2,
    this.hasGradient = true,
    this.borderRadius = 13,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        height: 62,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(
            color: isEnabled ? AppColor.green : AppColor.darkgrey,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: AnimatedContainer(
                width: double.infinity,
                duration: Duration(milliseconds: 300),
                height: 58,
                decoration: BoxDecoration(
                  gradient: isEnabled
                      ? hasGradient
                          ? AppColor.gradGreen
                          : null
                      : null,
                  color: isEnabled ? AppColor.grey : AppColor.darkgrey,
                ),
                child: Center(
                  child: Text(title,
                      style: TextStyle(
                        fontSize: 18,
                        color: isEnabled ? AppColor.white : AppColor.grey,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
