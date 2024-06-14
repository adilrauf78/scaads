import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/view/auth_screens/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  child: Image.asset('${imagepath}photo.png'),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: AppColor.k0xFFFF7E00,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60..r),
                  topRight: Radius.circular(60..r)
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 40..h),
                  MainText(
                    text: 'Welcome to Scaads',
                    color: AppColor.white,
                  ),
                  SizedBox(height: 20..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50..h,
                    decoration: BoxDecoration(
                      color: AppColor.primary_color,
                      borderRadius: BorderRadius.circular(30..r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('${iconpath}email.svg'),
                        SizedBox(width: 15..w),
                        SubText(
                          text: 'Sign in with Email',
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50..h,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(30..r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('${iconpath}facebook.svg'),
                        SizedBox(width: 15..w),
                        SubText(
                          text: 'Sign in Facebook',
                          color: AppColor.black,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24..h),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white,
                            )
                          ),
                          TextSpan(
                              text: 'SIGN UP',
                              style: TextStyle(
                                fontSize: 14..sp,
                                fontWeight: FontWeight.w700,
                                color: AppColor.primary_color,
                              )
                          ),
                        ]
                      ),
                    ),
                  ),
                  SizedBox(height: 20..h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
