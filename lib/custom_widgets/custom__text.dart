import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaads/constants/colors.dart';

class MainText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const MainText({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color?? AppColor.black,
        fontSize: fontSize?? 30..sp,
        fontWeight: fontWeight?? FontWeight.w700,
      ),
    );
  }
}

class SubText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const SubText({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color?? AppColor.white,
        fontSize: fontSize?? 18..sp,
        fontWeight: fontWeight?? FontWeight.w500,
      ),
    );
  }
}

class Text10 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Text10({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color?? AppColor.black.withOpacity(.45),
        fontSize: fontSize?? 10..sp,
        fontWeight: fontWeight?? FontWeight.w500,
      ),
    );
  }
}
class Text14 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Text14({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color?? AppColor.black,
        fontSize: fontSize?? 14..sp,
        fontWeight: fontWeight?? FontWeight.w400,
      ),
    );
  }
}

class Text16 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Text16({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color?? AppColor.black,
        fontSize: fontSize?? 16..sp,
        fontWeight: fontWeight?? FontWeight.w400,
      ),
    );
  }
}
class Text18 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Text18({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color?? AppColor.black,
        fontSize: fontSize?? 18..sp,
        fontWeight: fontWeight?? FontWeight.w500,
      ),
    );
  }
}

class Text24 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const Text24({super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color?? AppColor.white,
        fontSize: fontSize?? 24..sp,
        fontWeight: fontWeight?? FontWeight.w700,
      ),
    );
  }
}