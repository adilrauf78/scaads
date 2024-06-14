import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentcolor = 0;

  _changecolor (index){
    setState(() {
      currentcolor = index;
    });
  }

  List<Map<String, dynamic>> items =[
    {'path' : 'assets/images/house.png', 'text': 'House Painting Services'},
    {'path' : 'assets/images/cleaning.png', 'text': 'Cleaning Services'},
    {'path' : 'assets/images/laundry.png', 'text': 'Laundry Services'},
    {'path' : 'assets/images/landscaping.png', 'text': 'Landscaping Services'},
    {'path' : 'assets/images/house.png', 'text': 'Carpentry Services'},
    {'path' : 'assets/images/laundry.png', 'text': 'Dog Walking Services'},
    {'path' : 'assets/images/laundry.png', 'text': 'Plumbing Services'},
  ];
  List<Map<String,dynamic>> items1 =[
    {'path' : 'assets/images/houseservice.png', 'text' : 'House Painting'},
    {'path' : 'assets/images/cleaningservice.png', 'text' : 'Cleaning Services'},
    {'path' : 'assets/images/laundaryservice.png', 'text' : 'Laundry Services'},
    {'path' : 'assets/images/landscapingservice.png', 'text' : 'Landscaping Services'},
    {'path' : 'assets/images/carpentryservice.png', 'text' : 'Carpentry Services'},
    {'path' : 'assets/images/dogservice.png', 'text' : 'Dog Walking services'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 50..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40..w,
                      height: 40..h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: SvgPicture.asset('${iconpath}arrowback.svg')
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainText(
                    text: 'Categories',
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            currentcolor = 0;
                          });
                        },
                        child: Container(
                          width: 30..w,
                          height: 30..h,
                          decoration: BoxDecoration(
                            color: currentcolor == 0? Color(0xFFE1E1E1) : Colors.transparent,
                            borderRadius: BorderRadius.circular(4..r),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                          ),
                          child: Center(
                              child: SvgPicture.asset('${iconpath}list.svg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10..w),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            currentcolor = 1;
                          });
                        },
                        child: Container(
                          width: 30..w,
                          height: 30..h,
                          decoration: BoxDecoration(
                            color: currentcolor == 1 ? Color(0xFFE1E1E1) : Colors.transparent,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(4..r),
                          ),
                          child: Center(
                            child: SvgPicture.asset('${iconpath}grid.svg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15..h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45..h,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(
                    color: AppColor.border_color,
                  ),
                  borderRadius: BorderRadius.circular(8..r),
                ),
                child: TextField(
                  cursorColor: Color(0xFF9FA3A8),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(11),
                    prefixIcon: Transform.scale(
                      scale: .5,
                      child: SvgPicture.asset('${iconpath}search.svg',
                        color: Color(0xFFA2A7B2),
                      ),
                    ),
                    hintText: 'Search here ',
                    hintStyle: TextStyle(
                      color: AppColor.border_color,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 5..h),
              ListView.builder(
                itemCount: items.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 15),
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
                            child: Image.asset(items[index]['path'])
                        ),
                        SizedBox(width: 25..w),
                        Text14(
                          text: items[index]['text'],
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 30..h),

            ],
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
