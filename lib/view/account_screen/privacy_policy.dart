import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';


class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80..h,
              padding: EdgeInsets.only(top: 25,right: 25,left: 25,),
              decoration: BoxDecoration(
                color: AppColor.primary_color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('${iconpath}arrowback.svg'),
                  ),
                  Text24(
                    text: 'Privacy Policy',
                    fontWeight: FontWeight.w400,
                  ),
                  Container(),
                ],
              ),
            ),
            SizedBox(height:40.h),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'It\'s important that you understand what information scaads collects, uses and how you can control it. '
                          'We explain it in detail in our updated Scaads\s Privacy Policy and you can review the key points below.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 30..h),
                    Text(
                      'Why does Scaads use your data?',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'To give you a customized Scaads '
                          'experience, improve our services, understand how users use Scaads, show ads, and more.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 30..h),
                    Text(
                      'Why does Scaads use your data?',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'To give you a customized Scaads '
                          'experience, improve our services, understand how users use Scaads, show ads, and more.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20..h),
                    Text(
                      'Some examples of data Scaads collects and uses are:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20..h),
                    Text(
                      'Your Scaads information & content',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20..h),
                    Text(
                      'This may include any information you share with us, for example: your '
                          'saved home or work address and photo you upload to the Scaad map.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20..h),
                    Text(
                      'Location & activity',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 16..sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20..h),
                    Text(
                      'This may include any information you share with us, for example: your '
                          'saved home or work address and photo you upload to the Scaad map.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20..h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
