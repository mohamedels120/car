// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, unnecessary_import, unused_import, use_super_parameters

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/pages/home.dart';
import 'package:flutter_application/pages/page1.dart';
import 'package:flutter_application/pages/page2.dart';
import 'package:flutter_application/pages/search.dart';
import 'package:flutter_application/provider/carttt.dart';
import 'package:flutter_application/widget/Branches.dart';

import 'package:flutter_application/widget/cart_view.dart';
import 'package:flutter_application/widget/details_view.dart';
import 'package:flutter_application/widget/product_card.dart';
import 'package:flutter_application/widget/product_view.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: ChangeNotifierProvider(
        create: (BuildContext context) {
          return Cartt();
        },
        child: MaterialApp(
          initialRoute: '/branches',
          routes: {
            '/': (context) => Project1(),
            '/second': (context) => page1(),
            '/therd': (context) => page2(),
            '/home': (context) => home(),
            '/ProductsView': (context) => ProductsView(),
            '/CartView': (context) => CartView(),
            '/search': (context) => search(),
            '/branches': (context) => branches(),
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  bool isLoading = false;
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
            left: 89.w,
            top: 50.h,
            child: Image.asset(
              "assets/Group 48095479.png",
              fit: BoxFit.cover,
              height: 130.h,
              width: 190.w,
            )),
        Padding(
          padding: EdgeInsets.only(top: 195.h, bottom: 15),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)),
              width: 340.w,
              height: 580.h,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w700,
                          fontSize: 29.sp),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
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
                    padding: EdgeInsets.only(top: 25.h),
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
                                hintText: "رقم الهويه او رقم الاقامه",
                                suffixIcon: Icon(Icons.perm_identity_outlined),
                                hintStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: "myfont",
                                    fontWeight: FontWeight.w400),
                                // To delete borders
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                  borderSide: Divider.createBorderSide(context),
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
                        SizedBox(
                          height: 17.h,
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
                                hintText: "الكلمه السريه",
                                prefixIcon: Icon(Icons.visibility_off),
                                suffixIcon: Icon(Icons.lock),
                                hintStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: "myfont",
                                    fontWeight: FontWeight.w400),
                                // To delete borders
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.r),
                                  borderSide: Divider.createBorderSide(context),
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "هل نسيت كلمه السر؟",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(
                        width: 125.w,
                      ),
                      Text(
                        textDirection: TextDirection.ltr,
                        "تذكرني",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.check_box_outline_blank,
                        size: 17.sp,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.0.w,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        isLoading = true;
                        setState(() {});
                        Future.delayed(
                          Duration(seconds: 3),
                          () {
                            isLoading = false;
                            Navigator.pushNamed(context, '/ProductsView');
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "...تسجيل",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19.sp,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          isLoading
                              ? SizedBox(
                                  height: 25.h,
                                  width: 25.w,
                                  child: LoadingIndicator(
                                    indicatorType: Indicator.lineSpinFadeLoader,
                                    colors: const [
                                      Colors.black,
                                      // Colors.red,
                                    ],
                                    strokeWidth: 2.w,
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(249, 190, 8, 1)),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.only(top: 10.h, bottom: 10.h)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.r))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "او",
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontFamily: "myfont",
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/Facebook.png"),
                      Image.asset(
                        "assets/Google.png",
                        height: 80.h,
                        width: 150.w,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text(
                            "انشاء حساب",
                            style: TextStyle(
                                color: Color.fromARGB(255, 158, 158, 158),
                                fontSize: 10.sp,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.w900),
                          )),
                      Text(
                        "ليس لديك حساب؟ ",
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
      ]),
    );
  }
}
