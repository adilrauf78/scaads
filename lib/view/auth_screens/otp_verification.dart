import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/auth_screens/profile.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 60..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: SvgPicture.asset('${iconpath}arrowback.svg'),
                  ),
                ],
              ),
              SizedBox(height: 20..h),
              MainText(
                text: 'OPT Verification',
                color: AppColor.black,
              ),
              SizedBox(height: 10..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text16(
                    text: 'Enter the OPT sent to ',
                    color: AppColor.black.withOpacity(.6),
                  ),
                  Text16(
                    text: '+1 111 222 3333',
                  )
                ],
              ),
              SizedBox(height: 60..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Pinput(
                      length: 4,
                      preFilledWidget: Text('-',
                        style: TextStyle(
                          color: Color(0xFF535353),
                          fontWeight: FontWeight.w400,
                          fontSize: 20..sp,
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 50..w,
                        height: 50..h,
                        textStyle: TextStyle(
                          fontSize: 24..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F5FA),
                          borderRadius: BorderRadius.circular(10..r),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,3),
                                color: Color(0xFFE5E3F1)
                            ),
                          ],
                        ),
                      ),
                      defaultPinTheme: PinTheme(
                        width: 50..w,
                        height: 50..h,
                        textStyle: TextStyle(
                          fontSize: 24..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white,
                        ),
                        decoration: BoxDecoration(
                          color: AppColor.primary_color,
                          borderRadius: BorderRadius.circular(10..r),
                        ),
                      ),
                      followingPinTheme: PinTheme(
                        width: 50..w,
                        height: 50..h,
                        textStyle: TextStyle(
                          fontSize: 24..sp,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F5FA),
                          borderRadius: BorderRadius.circular(10..r),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,3),
                                color: Color(0xFFE5E3F1)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70..h),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Didn\'t receive code? ',
                          style: TextStyle(
                            fontSize: 14..sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black.withOpacity(.6),
                          )
                      ),
                      TextSpan(
                          text: 'Resend OPT',
                          style: TextStyle(
                            fontSize: 14..sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          )
                      ),
                    ]
                ),
              ),
              SizedBox(height: 30..h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Button(
                    text: 'Verify',
                  ),
                ),
              ),
              SizedBox(height: 20..h),
            ],
          ),
        ),
      ),
    );
  }
}
