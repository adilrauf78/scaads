import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/view/account_screen/add_card.dart';
import 'package:scaads/view/account_screen/edit_profile.dart';
import 'package:scaads/view/account_screen/languages.dart';
import 'package:scaads/view/account_screen/privacy_policy.dart';
import 'package:scaads/view/notification/notification.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90..h,
            padding: EdgeInsets.only(top: 50,right: 20,left: 20,bottom: 15),
            decoration: BoxDecoration(
              color: AppColor.primary_color,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text14(
                  text: 'Sign out',
                  color: AppColor.white,
                ),
                SizedBox(width: 10..w),
                SvgPicture.asset('${iconpath}signout.svg'),
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 40..h),
                Container(
                    child: Image.asset('${imagepath}image.png',),
                ),
                SizedBox(height: 20..h),
                Text16(
                  text: 'Jennifer lopez',
                  fontWeight: FontWeight.w700,
                ),
                Text14(
                  text: 'Woodstock, GA',
                ),
                SizedBox(height: 20..h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5..r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.black.withOpacity(.25),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ]
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFC4C4C4),
                              )
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}person.svg'),
                                  SizedBox(width: 10..w),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(width: 15..w),
                                  Text16(
                                    text: 'Account',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('${iconpath}arrow.svg'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFC4C4C4),
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}notification.svg'),
                                  SizedBox(width: 10..w),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(width: 15..w),
                                  Text16(
                                    text: 'Notification',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('${iconpath}arrow.svg'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddCard()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFC4C4C4),
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}card.svg'),
                                  SizedBox(width: 3..w),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(width: 15..w),
                                  Text16(
                                    text: 'Add Card',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('${iconpath}arrow.svg'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFC4C4C4),
                                )
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('${iconpath}boking.svg',),
                                SizedBox(width: 10..w),
                                SizedBox(
                                  height: 15,
                                  child: VerticalDivider(
                                    color: AppColor.black.withOpacity(.25),
                                  ),
                                ),
                                SizedBox(width: 15..w),
                                Text16(
                                  text: 'Booking',
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                            SvgPicture.asset('${iconpath}arrow.svg'),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Languages()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFC4C4C4),
                                  )
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}language.svg'),
                                  SizedBox(width: 5..w),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(width: 15..w),
                                  Text16(
                                    text: 'Languages',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('${iconpath}arrow.svg'),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                      },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}privacy.svg'),
                                  SizedBox(width: 5..w),
                                  SizedBox(
                                    height: 15,
                                    child: VerticalDivider(
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(width: 15..w),
                                  Text16(
                                    text: 'Privacy Policy',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              SvgPicture.asset('${iconpath}arrow.svg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
