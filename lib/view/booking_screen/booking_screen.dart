import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  List<Map<String, dynamic>> items =[
    {'path' : 'assets/images/electric.png', 'pathh' : 'assets/images/mastercard.png', 'text': 'Electrical Installations'},
    {'path' : 'assets/images/mechanic.png', 'pathh' : 'assets/images/paypal.png', 'text': 'Carpentry Service '},
    {'path' : 'assets/images/mechanic.png', 'pathh' : 'assets/images/paypal.png', 'text': 'Dog Walking Service'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                      text: 'My Booking',
                    ),
                  ],
                ),
              ),
              SizedBox(height:20..h,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(8..r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.border_color,
                            blurRadius: 2,
                          )
                        ]
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Image.asset(items[index]['path']),
                              ),
                              SizedBox(height: 4),
                              Text10(
                                text: 'More info.',
                                color: AppColor.primary_color,
                              )
                            ],
                          ),
                          SizedBox(width: 20..w),
                          Container(
                            width: MediaQuery.of(context).size.width*.48,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text14(
                                  text: items[index]['text'],
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 10..h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text10(
                                      text: 'Services fee',
                                    ),
                                    Text10(
                                      text: '\$149.99',
                                    )
                                  ],
                                ),
                                Divider(
                                  color: AppColor.border_color,
                                ),
                                SizedBox(height: 4..h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text10(
                                      text: 'Tax',
                                    ),
                                    Text10(
                                      text: '\$10.00',
                                    )
                                  ],
                                ),
                                Divider(
                                  color: AppColor.border_color,
                                ),
                                SizedBox(height: 4..h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text10(
                                      text: 'Total',
                                    ),
                                    Text10(
                                      text: '\$159.99',
                                    )
                                  ],
                                ),
                                Divider(
                                  color: AppColor.border_color,
                                ),
                                SizedBox(height: 4..h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text10(
                                      text: 'Paid',
                                    ),
                                    Container(
                                      child: Image.asset(items[index]['pathh']),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
              ),
              SizedBox(height: 30..h),
            ],
          ),
        ),
      ),
    );
  }
}
