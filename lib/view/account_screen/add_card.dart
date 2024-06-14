import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/account_screen/payment_method.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    text: 'Add card',
                  ),
                  Container(),
                ],
              ),
            ),
            SizedBox(height:40.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text14(
                    text: 'Name on the Card',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height:10.h,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    child: TextField(
                      cursorColor: Color(0xFF9FA3A8),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        fillColor: AppColor.white,
                        hintText: 'Card Hold Name',
                        hintStyle: TextStyle(
                          fontSize: 12..sp,
                          color: AppColor.border_color,
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5..r),
                          borderSide: BorderSide(
                            color: AppColor.border_color,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5..r),
                            borderSide: BorderSide(
                              color: AppColor.border_color,
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20.h,),
                  Text14(
                    text: 'Card Number ',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height:10.h,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Color(0xFF9FA3A8),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        fillColor: AppColor.white,
                        hintText: '4950 54XX XXXX XXXX',
                        hintStyle: TextStyle(
                          fontSize: 12..sp,
                          color: AppColor.border_color,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: Image.asset('${imagepath}visa.png'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5..r),
                          borderSide: BorderSide(
                            color: AppColor.border_color,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5..r),
                            borderSide: BorderSide(
                              color: AppColor.border_color,
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text14(
                              text: 'Expiry Date',
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height:10.h,),
                            Container(
                              height: 35,
                              child: TextField(
                                cursorColor: Color(0xFF9FA3A8),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                  fillColor: AppColor.white,
                                  hintText: 'MM/YY',
                                  hintStyle: TextStyle(
                                    fontSize: 12..sp,
                                    color: AppColor.border_color,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5..r),
                                    borderSide: BorderSide(
                                      color: AppColor.border_color,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5..r),
                                      borderSide: BorderSide(
                                        color: AppColor.border_color,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text14(
                              text: 'CVV',
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height:10.h,),
                            Container(
                              height: 35,
                              child: TextField(
                                cursorColor: Color(0xFF9FA3A8),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                  fillColor: AppColor.white,
                                  hintText: 'XXX',
                                  hintStyle: TextStyle(
                                    fontSize: 12..sp,
                                    color: AppColor.border_color,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5..r),
                                    borderSide: BorderSide(
                                      color: AppColor.border_color,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5..r),
                                      borderSide: BorderSide(
                                        color: AppColor.border_color,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20.h,),
                  Row(
                    children: [
                      SizedBox(
                        width:15..w,
                        height: 15..h,
                        child: Checkbox(
                            value: checked,
                          activeColor: AppColor.primary_color,
                          onChanged: (value){
                            setState(() {
                              checked = value!;
                            }
                            );
                          },

                        ),
                      ),
                      SizedBox(width: 15..w),
                      Text(
                        'Set as your default payment method',
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 12..sp,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50..h),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod()));
                    },
                    child: Button(
                      text: 'Add Card',
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
