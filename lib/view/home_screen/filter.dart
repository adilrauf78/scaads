import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

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
                  text: 'Filter',
                ),
                Container(),
              ],
            ),
          ),
          SizedBox(height: 40..h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text18(
                      text: 'Category',
                      fontWeight: FontWeight.w700,
                    ),
                    Text(
                      'Clear All',
                      style: TextStyle(
                        color: AppColor.primary_color,
                        fontWeight: FontWeight.w500,
                        fontSize: 12..sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20..h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
