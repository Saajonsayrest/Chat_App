import 'package:chat_app/extensions/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onTap, required this.text});

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black.withOpacity(0.8)]),
              borderRadius: BorderRadius.circular(15.r)),
          child: Center(
              child: Text(
            text,
            style: AppTextStyle.mediumText14.copyWith(color: Colors.white),
          )),
        ));
  }
}
