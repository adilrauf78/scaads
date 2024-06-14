import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/view/home_screen/categories.dart';
import 'package:scaads/view/home_screen/filter.dart';
import 'package:scaads/view/home_screen/profile_review.dart';
import 'package:scaads/view/notification/notification.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool favorite = false;
  bool favorite1 = false;
  double _rating = 5;
  double _rating1 = 5;
  List<Map<String, dynamic>> items =[
    {'path' : 'assets/images/cleaning.png', 'text': 'Cleaning'},
    {'path' : 'assets/images/house.png', 'text': 'House Painting'},
    {'path' : 'assets/images/laundry.png', 'text': 'Laundry'},
    {'path' : 'assets/images/landscaping.png', 'text': 'Landscaping'},
    {'path' : 'assets/images/house.png', 'text': 'Carpentry'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50..h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('${imagepath}row.png'),
                      SizedBox(width: 15..w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text14(
                            text: 'Location',
                            fontWeight: FontWeight.w500,
                            color: AppColor.black.withOpacity(.25),
                          ),
                          Row(
                            children: [
                              Text14(
                                text: 'Washington DC',
                                fontWeight: FontWeight.w500,
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                    },
                    child: Container(
                      width: 40..w,
                      height: 35..h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(30..r),
                        border: Border.all(
                          color: AppColor.black.withOpacity(.25),
                        )
                      ),
                      child: Center(
                          child: SvgPicture.asset('${iconpath}alarm.svg'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25..h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.74,
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
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Filter()));
                    },
                    child: Container(
                      width: 45..w,
                      height: 45..h,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(
                          color: AppColor.border_color,
                        ),
                        borderRadius: BorderRadius.circular(8..r),
                      ),
                      child: Center(
                          child: SvgPicture.asset('${iconpath}filter.svg'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20..h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text18(
                    text: 'Categories',
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
                    },
                    child: Text(
                      'Sell All',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 14..sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary_color,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20..h),
            SizedBox(
              height: 90..h,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 15,bottom: 2),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(items[index]['path']),
                          SizedBox(height: 8..h),
                          Text(
                              items[index]['text'],
                            style: TextStyle(
                              color: AppColor.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 10..sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20..h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text18(
                        text: 'Best Handyman,',
                        fontWeight: FontWeight.w700,
                      ),
                      Text18(
                        text: 'In The Community',
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Text(
                    '1/10',
                    style: TextStyle(
                      color: AppColor.black.withOpacity(.25),
                      fontSize: 12..sp,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25..h),
            SizedBox(
              height: 315..h,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 15,),
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileReview()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          Container(
                            width:210..w,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAE8E9),
                              borderRadius: BorderRadius.circular(15..r)
                            ),
                            child: Image.asset('${imagepath}man.png'),
                          ),
                          Positioned(
                            right:12,
                            top:12,
                            child: GestureDetector(
                              onTap:(){
                                setState(() {
                                  favorite = !favorite;
                                });
                              },
                              child: Container(
                                width: 25..w,
                                height: 25..h,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle,
                                ),
                                child: favorite ?Icon(Icons.favorite_border_outlined,size: 18,):
                                Icon(Icons.favorite,color: Colors.red,size: 18,),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            child: Container(
                              width:210..w,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(15..r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                  )
                                ]
                              ),
                              child: Column(
                                children: [
                                  Text14(
                                    text: 'Jack Marston',
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.primary_color,
                                  ),
                                  Text(
                                    'Plumber',
                                    style: TextStyle(
                                      fontSize: 10..sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.black.withOpacity(.25),
                                    ),
                                  ),
                                  SizedBox(height: 2..h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 1,
                                          itemCount: 5,
                                          itemSize: 16,
                                          itemPadding: EdgeInsets.only(right: 2),
                                          direction: Axis.horizontal,
                                          unratedColor: Color(0x4DF9E005),
                                          itemBuilder: (context, index)=>Icon(Icons.star,color: Color(0xFFFF7E00),),
                                          onRatingUpdate: (rating){
                                            setState(() {
                                              _rating = rating;
                                            });
                                          }
                                      ),
                                      Text(
                                        '$_rating',
                                        style: TextStyle(
                                          color: AppColor.black,
                                          fontSize: 12..sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5..h),
                                  Text(
                                    '\$20.00/hr',
                                    style: TextStyle(
                                      fontSize: 10..sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.black,
                                    ),
                                  ),
                    
                                ],
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
            SizedBox(height: 20..h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text18(
                    text:'Recommended',
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25..h),
            SizedBox(
              height: 315..h,
              child: ListView.builder(
                itemCount: 1,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 15,),
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Stack(
                      children: [
                        Container(
                          width:210..w,
                          decoration: BoxDecoration(
                              color: Color(0xFFEAE8E9),
                              borderRadius: BorderRadius.circular(15..r)
                          ),
                          child: Image.asset('${imagepath}man.png'),
                        ),
                        Positioned(
                          right:12,
                          top:12,
                          child: GestureDetector(
                            onTap:(){
                              setState(() {
                                favorite1 = !favorite1;
                              });
                            },
                            child: Container(
                              width: 25..w,
                              height: 25..h,
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                shape: BoxShape.circle,
                              ),
                              child: favorite1 ?Icon(Icons.favorite_border_outlined,size: 18,):
                              Icon(Icons.favorite,color: Colors.red,size: 18,),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          child: Container(
                            width:210..w,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(15..r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Text14(
                                  text: 'Jack Marston',
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.primary_color,
                                ),
                                Text(
                                  'Plumber',
                                  style: TextStyle(
                                    fontSize: 10..sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.black.withOpacity(.25),
                                  ),
                                ),
                                SizedBox(height: 2..h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RatingBar.builder(
                                        initialRating: 5,
                                        minRating: 1,
                                        itemCount: 5,
                                        itemSize: 16,
                                        itemPadding: EdgeInsets.only(right: 2),
                                        direction: Axis.horizontal,
                                        unratedColor: Color(0x4DF9E005),
                                        itemBuilder: (context, index)=>Icon(Icons.star,color: Color(0xFFFF7E00),),
                                        onRatingUpdate: (rating){
                                          setState(() {
                                            _rating1 = rating;
                                          });
                                        }
                                    ),
                                    Text(
                                      '$_rating1',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 12..sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5..h),
                                Text(
                                  '\$20.00/hr',
                                  style: TextStyle(
                                    fontSize: 10..sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.black,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20..h),
          ],
        ),
      ),
    );
  }
}
