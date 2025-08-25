import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/account_screen/account_screen.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

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
                    text: 'Updated Profile',
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
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: 'Jennifer Lopez',
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              helperStyle: TextStyle(
                                color: AppColor.black,
                                fontSize: 14..sp,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: Color(0xFFE8E6EA),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                                borderRadius: BorderRadius.circular(5..r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5..r),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'adil377@gmail.com',
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              helperStyle: TextStyle(
                                color: AppColor.black,
                                fontSize: 14..sp,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: Color(0xFFE8E6EA),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                                borderRadius: BorderRadius.circular(5..r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5..r),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '+1 800 555 5555',
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              helperStyle: TextStyle(
                                color: AppColor.black,
                                fontSize: 14..sp,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: Color(0xFFE8E6EA),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                                borderRadius: BorderRadius.circular(5..r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5..r),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                          child: TextField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              hintText: '172 Willowleaf Dr, Woodstock, GA',
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              helperStyle: TextStyle(
                                color: AppColor.black,
                                fontSize: 14..sp,
                                fontWeight: FontWeight.w400,
                              ),
                              filled: true,
                              fillColor: Color(0xFFE8E6EA),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                                borderRadius: BorderRadius.circular(5..r),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5..r),
                                borderSide: BorderSide(
                                  color: Color(0xFFE8E6EA),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30..h),
                  GestureDetector(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Button(
                        text: 'Save change',
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
