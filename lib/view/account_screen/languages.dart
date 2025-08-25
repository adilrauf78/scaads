import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}
class _LanguagesState extends State<Languages> {
  List<Map<String,dynamic>> item = [
    {'path': 'assets/images/usa.png', 'text' : 'English','subtext' : 'USA'},
    {'path': 'assets/images/germany.png', 'text' : 'Germany','subtext' : 'Central Europe'},
    {'path': 'assets/images/portuguese.png', 'text' : 'Portuguese','subtext' : 'Central Europe'},
    {'path': 'assets/images/dutch.png', 'text' : 'Dutch','subtext' : 'Central Europe'},
    {'path': 'assets/images/french.png', 'text' : 'French','subtext' : 'South Europe'},

  ];
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
                    text: 'Languages',
                    fontWeight: FontWeight.w400,
                  ),
                  Container(),
                ],
              ),
            ),
            SizedBox(height:40.h,),
            SizedBox(
              height: 550..h,
              child: ListView.builder(
                itemCount: item.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.black.withOpacity(.25),
                              blurRadius: 4,
                              spreadRadius: 1,
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(
                              child: Image.asset(item[index]['path'],width: 62..w,height: 62..h),
                          ),
                          SizedBox(width: 20..w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text16(
                                text: item[index]['text'],
                              ),
                              Text14(
                                  text: item[index]['subtext'],
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  );
                },
              ),
            ),
            SizedBox(height:20.h,),
          ],
        ),
      ),
    );
  }
}
