// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/carttt.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  const ProductCard({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.all(10.w),
        height: 226.h,
        width: 180.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              img,
              height: 110.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              maxLines: 2,
              title,
              style: TextStyle(
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.start,
            ),
            Text(
              '$price ر.س',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
      Positioned(
          top: 13.h,
          left: 15.w,
          child: SizedBox(
              height: 30.h,
              width: 30.w,
              child: Consumer<Cartt>(builder: ((context, Cartt, child) {
                return IconButton.filled(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber)),
                  iconSize: 16.sp,
                  onPressed: () {
                    Cartt.add(
                        ProductCard(img: img, title: title, price: price));
                  },
                  icon: Icon(Icons.favorite_border),
                );
              }))))
    ]);
  }
}

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                right: 20.w,
              ),
              child: productsList[index],
            );
          },
        ),
      ),
    );
  }
}

List productsList = [
  ProductCard(
    img:
        'assets/WhatsApp_Image_2024-09-12_at_10.33.34_PM-removebg-preview 1.png',
    price: '506',
    title: 'PRIMEWELL 750R16 - 14PR PWO1',
  ),
  ProductCard(
    img:
        'assets/WhatsApp_Image_2024-10-08_at_12.08.11_AM__1_-removebg-preview 1.png',
    price: '800',
    title: 'PRIMEWELL 385/65 i5-20PR PTL7',
  ),
  ProductCard(
    img:
        'assets/WhatsApp_Image_2024-10-08_at_12.08.12_AM-removebg-preview 1.png',
    price: '620',
    title: 'PRIMEWELL 750R16 - 14PR PWO1',
  ),
  ProductCard(
    img:
        'assets/WhatsApp_Image_2024-10-08_at_12.08.11_AM__1_-removebg-preview 1.png',
    price: '506',
    title: 'PRIMEWELL 750R16 - 14PR PWO1',
  ),
];
