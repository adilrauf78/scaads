import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/account_screen/update_profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

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
                    text: 'Account',
                    fontWeight: FontWeight.w400,
                  ),
                  Container(),
                ],
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(5..r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black.withOpacity(.25),
                          blurRadius: 4,
                        )
                      ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text14(
                          color: AppColor.black.withOpacity(.4),
                          text: 'Name',
                        ),
                        SizedBox(height: 5..h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35..h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E6EA),
                            borderRadius: BorderRadius.circular(5..r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text14(
                                text: 'Jennifer Lopez',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(5..r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(.25),
                            blurRadius: 4,
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text14(
                          color: AppColor.black.withOpacity(.4),
                          text: 'Email',
                        ),
                        SizedBox(height: 5..h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35..h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E6EA),
                            borderRadius: BorderRadius.circular(5..r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text14(
                                text: 'adil377@gmail.com',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(5..r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(.25),
                            blurRadius: 4,
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text14(
                          color: AppColor.black.withOpacity(.4),
                          text: 'Phone',
                        ),
                        SizedBox(height: 5..h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35..h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E6EA),
                            borderRadius: BorderRadius.circular(5..r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text14(
                                text: '+1 800 555 5555',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(5..r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.black.withOpacity(.25),
                            blurRadius: 4,
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text14(
                          color: AppColor.black.withOpacity(.4),
                          text: 'Address',
                        ),
                        SizedBox(height: 5..h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35..h,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E6EA),
                            borderRadius: BorderRadius.circular(5..r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text14(
                                text: '172 Willowleaf Dr, Woodstock, GA',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30..h),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateProfile()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Button(
                        text: 'Edit profile',
                      ),
                    ),
                  ),
                  SizedBox(height: 20..h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
