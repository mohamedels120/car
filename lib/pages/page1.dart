// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 215, 215),
        body: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/Head.png"),
              width: 360.w,
              height: 320.h,
            ),
            Positioned(
                left: 82.w,
                top: 45.h,
                child: Image.asset("assets/ASASAS.png",
                    fit: BoxFit.cover, height: 95.h, width: 200.w)),
            Padding(
              padding: EdgeInsets.only(top: 150.h),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  width: 340.w,
                  height: 520.h,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 11.h),
                        child: Text(
                          "أنشئ حسابًا",
                          style: TextStyle(
                              fontFamily: "myfont",
                              fontWeight: FontWeight.w700,
                              fontSize: 22.sp),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        "انشئ حسابًا او قم بتسجسل الدخول لاستكشاف تطبيقنا",
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "myfont",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 26.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: TextField(
                                  textDirection: TextDirection.rtl,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: "الاسم",
                                    suffixIcon:
                                        Icon(Icons.perm_identity_outlined),
                                    hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.w400),
                                    // To delete borders
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      borderSide:
                                          Divider.createBorderSide(context),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(249, 190, 8, 1),
                                      ),
                                    ),
                                    // fillColor: Colors.red,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(12.w),
                                  )),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: TextField(
                                  textDirection: TextDirection.rtl,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: "رقم الهويه او رقم الاقامه",

                                    suffixIcon: Icon(Icons.perm_identity),
                                    hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.w400),
                                    // To delete borders
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      borderSide:
                                          Divider.createBorderSide(context),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(249, 190, 8, 1),
                                      ),
                                    ),
                                    // fillColor: Colors.red,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(12.w),
                                  )),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: TextField(
                                  textDirection: TextDirection.rtl,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: "رقم الهاتف",

                                    suffixIcon: Icon(Icons.phone),
                                    hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.w400),
                                    // To delete borders
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      borderSide:
                                          Divider.createBorderSide(context),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(249, 190, 8, 1),
                                      ),
                                    ),
                                    // fillColor: Colors.red,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(12.w),
                                  )),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: TextField(
                                  textDirection: TextDirection.rtl,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: "الباسورد",
                                    prefixIcon: Icon(Icons.visibility_off),
                                    suffixIcon: Icon(Icons.lock),
                                    hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.w400),
                                    // To delete borders
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      borderSide:
                                          Divider.createBorderSide(context),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(249, 190, 8, 1),
                                      ),
                                    ),
                                    // fillColor: Colors.red,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(12.w),
                                  )),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w, right: 15.w),
                              child: TextField(
                                  textDirection: TextDirection.rtl,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: "تاكيد الباسورد",
                                    prefixIcon: Icon(Icons.visibility_off),
                                    suffixIcon: Icon(Icons.lock),
                                    hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.w400),
                                    // To delete borders
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                      borderSide:
                                          Divider.createBorderSide(context),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromRGBO(249, 190, 8, 1),
                                      ),
                                    ),
                                    // fillColor: Colors.red,
                                    filled: true,
                                    contentPadding: EdgeInsets.all(13.w),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/therd');
                        },
                        child: Text(
                          "انشاء حساب",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(249, 190, 8, 1)),
                          padding: MaterialStatePropertyAll(EdgeInsets.only(
                              left: 110.w,
                              right: 110.w,
                              top: 9.h,
                              bottom: 9.h)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.r))),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    color: Color.fromRGBO(249, 190, 8, 1),
                                    fontSize: 10.sp,
                                    fontFamily: "myfont",
                                    fontWeight: FontWeight.w900),
                              )),
                          Text(
                            "هل لديك حساب؟",
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
            )
          ],
        ));
  }
}
