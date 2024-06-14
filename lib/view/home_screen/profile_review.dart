import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class ProfileReview extends StatefulWidget {
  const ProfileReview({super.key});

  @override
  State<ProfileReview> createState() => _ProfileReviewState();
}

class _ProfileReviewState extends State<ProfileReview> {
  bool favorite = false;
  double _rating = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272D37),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 296..h,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAE8E9)
                      ),
                      child: Image.asset('${imagepath}jack.png'),
                    ),
                    Positioned(
                      top: 50,
                      left: 15,
                      right: 15,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              GestureDetector(
                                onTap:(){
                                  setState(() {
                                    favorite = !favorite;
                                  });
                                },
                                child: Container(
                                  width: 40..w,
                                  height: 40..h,
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: favorite ?Icon(Icons.favorite_border_outlined,size: 24,):
                                  Icon(Icons.favorite,color: Colors.red,size: 24,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15..h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40..w,
                                height: 60..h,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.circular(15..r),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: Color(0xFFFF7E00),),
                                    Text16(
                                      text: '5.0',
                                      fontWeight: FontWeight.w700,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15..h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40..w,
                                height: 40..h,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: SvgPicture.asset('${iconpath}chat.svg')
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25..r),
                       bottomRight: Radius.circular(25..r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text24(
                                text: 'Jack Marston',
                                color: AppColor.primary_color,
                              ),
                              SizedBox(height: 5..h),
                              Row(
                                children: [
                                  SvgPicture.asset('${iconpath}map.svg'),
                                  SizedBox(width: 10..w),
                                  Text14(
                                    text: 'Woodstock, GA',
                                  )
                                ],
                              )
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$20.00',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24..sp,
                                  ),
                                ),
                                TextSpan(
                                  text: '/hr',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 18..sp,
                                    fontWeight: FontWeight.w400,
                                  )
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25..h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100..w,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAE8E9),
                              borderRadius: BorderRadius.circular(16..r),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '\$50K+',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22..sp,
                                  ),
                                ),
                                Text(
                                  'Total Earned',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 12..sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100..w,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAE8E9),
                              borderRadius: BorderRadius.circular(16..r),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '375',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22..sp,
                                  ),
                                ),
                                Text(
                                  'Job Completed',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 12..sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 100..w,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAE8E9),
                              borderRadius: BorderRadius.circular(16..r),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '825',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22..sp,
                                  ),
                                ),
                                Text(
                                  'Hour',
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 12..sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25..h),
                      Text24(
                        text: 'Bio',
                        fontWeight: FontWeight.w700,
                        color: AppColor.primary_color,
                      ),
                      Container(
                        child: Text(
                          'Hey, I\'m Jack Marston and expert of plumb servicing. I having more '
                        'than 2 years of working experiance. I appreciate the best delivery from my side.',
                          style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12..sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25..h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Reviews ',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12..sp,
                                fontWeight: FontWeight.w700,
                              )
                            ),
                            TextSpan(
                                text: '(64)',
                                style: TextStyle(
                                  color: AppColor.white.withOpacity(.5),
                                  fontSize: 12..sp,
                                  fontWeight: FontWeight.w700,
                                ),
                            ),
                          ]
                        ),
                      ),
                      SizedBox(height: 15..h),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                          return Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('${imagepath}notif.png'),
                                        SizedBox(width: 15..w),
                                        Column(
                                          children: [
                                            Text(
                                              'Linda Lewis',
                                              style: TextStyle(
                                                color: AppColor.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12..sp,
                                              ),
                                            ),
                                            Text(
                                              'Nov 15, 2021',
                                              style: TextStyle(
                                                color: AppColor.white.withOpacity(.5),
                                                fontSize: 8..sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
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
                                  ],
                                ),
                                SizedBox(height: 15..h),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed '
                                      'do eiusmod tempor incididunt utertid labore et dolore magna '
                                      'aliqua. Ut enim ad minim veniam, quis nostrud exercitation '
                                      'ullamco aruun laboris nisi ut aliquip ex ea commodo consequat.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12..sp,
                                    color: AppColor.white,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              right: 15,
              top: 278,
              child: Container(
                width: 120..w,
                height: 37..h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30..r),
                  color: AppColor.primary_color,
                ),
                child: Center(
                  child: Text14(
                    text: 'Book Now',
                    fontWeight: FontWeight.w700,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
