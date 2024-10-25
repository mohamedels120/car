// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 215, 215),
        body: Stack(children: [
          Positioned(
            child: Image.asset("assets/Head.png"),
            width: 360.w,
            height: 320.h,
          ),
          Positioned(
              left: 82.w,
              top: 60.h,
              child: Image.asset("assets/ASASAS.png",
                  fit: BoxFit.cover, height: 95.h, width: 200.w)),
          Padding(
            padding: EdgeInsets.only(top: 170.h),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 340.w,
                height: 350.h,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 21.h),
                      child: Text(
                        "تاكيد رقم الهاتف",
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w700,
                            fontSize: 26.sp),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "  فالذي أرسلناه للتو على بريدك الإلكتروني/رقم الهاتف otp ادخل رمز ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "myfont",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    OtpTextField(
                      showFieldAsBox: true,
                      filled: false,
                      borderWidth: 1,
                      borderRadius: BorderRadius.circular(14.r),
                      numberOfFields: 4,
                      fieldHeight: 60.h,
                      fieldWidth: 60.w,
                      fillColor: Color.fromRGBO(249, 189, 8, 1),
                      focusedBorderColor: Color.fromRGBO(249, 190, 8, 1),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        "تحقق",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w600),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(249, 190, 8, 1)),
                        padding: MaterialStatePropertyAll(EdgeInsets.only(
                            left: 130.w,
                            right: 130.w,
                            top: 11.h,
                            bottom: 11.h)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.r))),
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "اعاده ارسال",
                              style: TextStyle(
                                  color: Color.fromRGBO(249, 190, 8, 1),
                                  fontSize: 10.sp,
                                  fontFamily: "myfont",
                                  fontWeight: FontWeight.w900),
                            )),
                        Text(
                          "؟otpلم نحصل علي",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
