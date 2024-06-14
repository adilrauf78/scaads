import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaads/constants/colors.dart';


class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Button({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55..h,
      decoration: BoxDecoration(
          color: AppColor.primary_color,
          borderRadius: BorderRadius.circular(15..r),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color?? AppColor.white,
            fontSize: fontSize?? 18..sp,
            fontWeight: fontWeight?? FontWeight.w500,
          ),
        ),
      ),
    );
  }
}