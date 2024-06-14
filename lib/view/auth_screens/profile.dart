import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/bottom_navigator/bottom_navigator.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  DateTime? dateTime;
  void imagePickerOption(String imageType) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        pickImage(ImageSource.camera,imageType);
                        Get.back();

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primary_color,
                      ),
                      icon: const Icon(Icons.camera,color: Colors.white),
                      label: const Text("CAMERA",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        pickImage(ImageSource.gallery,imageType);
                        Get.back();

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primary_color,
                      ),
                      icon: const Icon(Icons.image,color: Colors.white),
                      label: const Text("GALLERY",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primary_color,
                      ),
                      icon: const Icon(Icons.close,color: Colors.white,),
                      label: const Text("CANCEL",style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

  File? image1;
  pickImage(ImageSource Imagetype,String imagefirst) async {
    final image= await ImagePicker().pickImage(source: Imagetype);
    if (image==null) return;
    final imagetemp =  File(image.path);
    if (imagefirst=='Profile'){
      this.image1=imagetemp;
      setState(() => this.image1=imagetemp);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 60..h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('${iconpath}arrowback.svg'),
                  ),
                ],
              ),
              SizedBox(height: 20..h),
              MainText(
                text: 'Upload Picture',
                color: AppColor.black,
              ),
              SizedBox(height: 40..h),
              Center(
                child: Stack(
                  children: [
                    Container(
                      child: image1 != null ?ClipRRect(
                          borderRadius: BorderRadius.circular(50..r),
                          child: Image.file(image1!,fit: BoxFit.fill,width: 100..w,height: 100..h,)) : Image.asset("${imagepath}upload.png",fit: BoxFit.fill,width: 100..w,height: 100..h,),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: ()=>imagePickerOption('Profile'),
                        child: Container(
                          width: 40..w,
                          height: 40..h,
                          decoration: BoxDecoration(
                            color: AppColor.primary_color,
                            shape: BoxShape.circle
                          ),
                          child: Center(
                              child: SvgPicture.asset("${iconpath}camera.svg",width: 20..w,height: 20..h,)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55..h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Color(0xFF9FA3A8),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    fillColor: AppColor.white,
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: AppColor.black.withOpacity(.25),
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      color: AppColor.border_color,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15..r),
                      borderSide: BorderSide(
                        color: AppColor.border_color,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15..r),
                        borderSide: BorderSide(
                          color: AppColor.border_color,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20..h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Color(0xFF9FA3A8),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    fillColor: AppColor.white,
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                      color: AppColor.black.withOpacity(.25),
                      fontSize: 16..sp,
                      fontWeight: FontWeight.w400,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                      color: AppColor.border_color,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15..r),
                      borderSide: BorderSide(
                        color: AppColor.border_color,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15..r),
                        borderSide: BorderSide(
                          color: AppColor.border_color,
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25..h),
              GestureDetector(
                onTap: () {
                  showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.h,
                        child: CupertinoDatePicker(
                          backgroundColor: AppColor.white,
                          initialDateTime: dateTime,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime newTime) {
                            setState(() {
                              dateTime = newTime;
                            });
                          },
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55..h,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF1B1C1E),
                    borderRadius: BorderRadius.circular(15..r),
        
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('${iconpath}calendar.svg'),
                      SizedBox(width: 15..w),
                      Text(
                        dateTime== null
                            ? 'Choose birthday date' : 'Birthday date: ${DateFormat('MM/dd/yyyy').format(dateTime!)}',
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 14..sp,
                          fontWeight: FontWeight.w700,
                        ),
        
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60..h),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigator()));
                },
                child: Button(
                  text: 'Confirm',
                ),
              ),
              SizedBox(height: 20..h),
            ],
          ),
        ),
      ),
    );
  }
}
