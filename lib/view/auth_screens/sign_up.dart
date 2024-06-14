import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scaads/constants/assets_path.dart';
import 'package:scaads/constants/colors.dart';
import 'package:scaads/custom_widgets/custom__text.dart';
import 'package:scaads/custom_widgets/custom_button.dart';
import 'package:scaads/view/auth_screens/otp_verification.dart';
import 'package:scaads/view/auth_screens/sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool hidden = true;
  bool hidden1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background_color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100..h),
              Center(
                child: MainText(
                  text: 'Sign Up',
                ),
              ),
              SizedBox(height: 5..h),
              Text14(
                text: 'Please enter your information below in order to\ncreate your account',
                color: AppColor.black.withOpacity(.25),
              ),
              SizedBox(height: 40..h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text16(
                    text: 'Phone Number',
                    color: AppColor.black.withOpacity(.25),
                  ),
                  SizedBox(height: 10..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(
                        color: AppColor.border_color,
                      ),
                      borderRadius: BorderRadius.circular(15..r),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.35,
                          child: CountryCodePicker(
                            showDropDownButton: true,
                            // flagWidth: 90,
                            padding: const EdgeInsets.all(2),
                            textStyle: const TextStyle(color: Colors.black),
                            initialSelection: "US",
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width*.5,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            cursorColor: Color(0xFF9FA3A8),
                            decoration: InputDecoration(
                              hintText: '000 000 000',
                              hintStyle: TextStyle(
                                color: AppColor.border_color,
                                fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20..h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text16(
                    text: 'Email Address',
                    color: AppColor.black.withOpacity(.25),
                  ),
                  SizedBox(height: 10..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(
                        color: AppColor.border_color,
                      ),
                      borderRadius: BorderRadius.circular(15..r),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Color(0xFF9FA3A8),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Transform.scale(
                            scale: .5,
                            child: SvgPicture.asset('${iconpath}email.svg',
                              color: Color(0xFFA2A7B2),
                            ),
                        ),
                        hintText: 'example@gmail.com',
                        hintStyle: TextStyle(
                          color: AppColor.border_color,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20..h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text16(
                    text: 'Password',
                    color: AppColor.black.withOpacity(.25),
                  ),
                  SizedBox(height: 10..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(
                        color: AppColor.border_color,
                      ),
                      borderRadius: BorderRadius.circular(15..r),
                    ),
                    child: TextField(
                      obscureText: hidden,
                      cursorColor: Color(0xFF9FA3A8),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Transform.scale(
                          scale: .5,
                          child: SvgPicture.asset('${iconpath}lock.svg',
                            color: Color(0xFFA2A7B2),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              hidden = !hidden;
                            });
                          },
                            icon: hidden ?Icon(Icons.visibility_off_outlined,color: Color(0xFFA2A7B2),):
                          Icon(Icons.visibility_outlined,color: Color(0xFFA2A7B2),)
                        ),
                        hintText: '********',
                        hintStyle: TextStyle(
                          color: AppColor.border_color,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20..h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text16(
                    text: 'Confirm Password',
                    color: AppColor.black.withOpacity(.25),
                  ),
                  SizedBox(height: 10..h),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(
                        color: AppColor.border_color,
                      ),
                      borderRadius: BorderRadius.circular(15..r),
                    ),
                    child: TextField(
                      obscureText: hidden1,
                      cursorColor: Color(0xFF9FA3A8),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        prefixIcon: Transform.scale(
                          scale: .5,
                          child: SvgPicture.asset('${iconpath}lock.svg',
                            color: Color(0xFFA2A7B2),
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                hidden1 = !hidden1;
                              });
                            },
                            icon: hidden1 ?Icon(Icons.visibility_off_outlined,color: Color(0xFFA2A7B2),):
                            Icon(Icons.visibility_outlined,color: Color(0xFFA2A7B2),)
                        ),
                        hintText: '********',
                        hintStyle: TextStyle(
                          color: AppColor.border_color,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40..h),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpVerification()));
                },
                child: Button(
                  text: 'Continue',
                ),
              ),
              SizedBox(height: 40..h),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.black.withOpacity(.25),
                            )
                        ),
                        TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontSize: 14..sp,
                              fontWeight: FontWeight.w700,
                              color: AppColor.primary_color,
                            )
                        ),
                      ]
                  ),
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
