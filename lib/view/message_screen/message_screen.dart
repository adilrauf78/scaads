import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90..h,
              padding: EdgeInsets.only(top: 25,right: 25,left: 25,),
              decoration: BoxDecoration(
                color: AppColor.primary_color,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text24(
                    text: 'Messages',
                  ),
                ],
              ),
            ),
            SizedBox(height:40..h,),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColor.white,
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.black.withOpacity(.25),
                        )
                      )
                    ),
                    child: Row(
                      children: [
                        Container(
                            child: Image.asset('${imagepath}message.png',)
                        ),
                        SizedBox(width: 10..w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Peter Morgan',
                                    style: TextStyle(
                                      fontSize: 12..sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.black,
                                    ),
                                  ),
                                  Text(
                                    '23 min ago',
                                    style: TextStyle(
                                      color: AppColor.black.withOpacity(.5),
                                      fontSize: 8..sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*.58,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'You: ',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: AppColor.black.withOpacity(.5),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10..sp,
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.4,
                                        child: Text(
                                          'Here is something that you might like to know.t like to know',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: AppColor.black.withOpacity(.5),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10..sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 20..w,
                                    height: 20..h,
                                    decoration: BoxDecoration(
                                      color: AppColor.primary_color,
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.white,
                                          fontSize: 12..sp,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                  ),
                );
              },
            ),
            SizedBox(height:20.h,),
          ],
        ),
      ),
    );
  }
}
