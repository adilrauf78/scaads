import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/account_screen/account_screen.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: Column(
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
                  text: 'Payment Method',
                ),
                Container(),
              ],
            ),
          ),
          SizedBox(height:40.h,),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15),
              scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                child: Image.asset('${imagepath}visaa.png',)
                            ),
                            SizedBox(width: 15..w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '**** **** **** 7824 ',
                                  style: TextStyle(
                                    fontSize: 12..sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.black,
                                  ),
                                ),
                                Text(
                                  'expires 10/25',
                                  style: TextStyle(
                                    color: AppColor.black.withOpacity(.5),
                                    fontSize: 12..sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 68..w,
                          height: 33..h,
                          decoration: BoxDecoration(
                            color: AppColor.primary_color,
                            borderRadius: BorderRadius.circular(5..r),
                          ),
                          child: Center(
                            child: Text16(
                              text: 'Edit',
                              color: AppColor.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height:200.h,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Button(
                text: 'Add Card',
              ),
            ),
          ),
          SizedBox(height:20.h,),
        ],
      ),
    );
  }
}
