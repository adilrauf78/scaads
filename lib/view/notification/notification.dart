import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('${iconpath}arrowback.svg'),
                  ),
                  Text24(
                    text: 'Notifications',
                  ),
                  Container(),
                ],
              ),
            ),
            SizedBox(height:40.h,),
            ListView.builder(
              itemCount: 4,
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
                      borderRadius: BorderRadius.circular(6..r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black.withOpacity(.25),
                          blurRadius: 3,
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(
                            child: Image.asset('${imagepath}notif.png',)
                        ),
                        SizedBox(width: 10..w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*.65,
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
                              width: MediaQuery.of(context).size.width*.6,
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
