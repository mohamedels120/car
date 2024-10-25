// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/carttt.dart';
import 'package:flutter_application/widget/add_to_cart.dart';
import 'package:flutter_application/widget/custom_app_bar.dart';
import 'package:flutter_application/widget/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CartView extends StatefulWidget {
  CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Cartt>(builder: ((context, Cartt, child) {
        return Column(
          children: [
            SizedBox(height: 50.h),
            CustomAppBar(
              onPress: () {
                // cartList = [];

                Cartt.delete(Cartt.selecteddproducts.length);
              },
              title: 'عربة التسوق',
              hasSearch: true,
              icon: Icons.delete_outline,
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0.w),
                child: ListView.separated(
                  padding: EdgeInsets.all(0.w),
                  itemCount: Cartt.selecteddproducts.length,
                  itemBuilder: (context, index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 80.w,
                            height: 85.h,
                            padding: EdgeInsets.all(8.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: Color.fromARGB(30, 190, 8, 32),
                            ),
                            child: Image.asset(
                                width: 80.w,
                                height: 80.h,
                                Cartt.selecteddproducts[index].img.toString()),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              SizedBox(
                                child: Text(
                                  Cartt.selecteddproducts[index].title
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    Cartt.selecteddproducts[index].price
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: "myfont",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    '2000 ر.س',
                                    style: TextStyle(
                                        color: Colors.red,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3.h),
                              // counter
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 50.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 24.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    "",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      ;

                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 35.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 35.sp, height: 0.h),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                        indent: 60,
                        endIndent: 60,
                        height: 40.h,
                        color: Color.fromARGB(95, 158, 158, 158));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' ر.س',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'اجمالي منتج واحد',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w600),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            const AddToCartButtom(
              title: 'اذهب للدفع',
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        );
      })),
    );
  }
}
