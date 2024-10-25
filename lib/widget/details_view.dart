// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/carttt.dart';
import 'package:flutter_application/widget/add_to_cart.dart';
import 'package:flutter_application/widget/custom_app_bar.dart';
import 'package:flutter_application/widget/product_card.dart';
import 'package:flutter_application/widget/rate_list_view.dart';
import 'package:provider/provider.dart';

class DetailsView extends StatelessWidget {
  ProductCard items;
  DetailsView({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              icon: Icons.search,
              hasSearch: true,
              title: items.title,
            ),
            const SizedBox(height: 10),
            Image.asset(
              height: 250,
              items.img,
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      width: 80,
                      height: 85,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(30, 190, 8, 32),
                      ),
                      child: Image.asset(width: 80, height: 80, items.img),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'PRIMEWELL 750R16 - 14PR PWO1',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                items.price,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'تعمل التقنية التي تحتوي على مستشعرين للضوضاء وميكروفونين على كل قطعة أذن على اكتشاف الضوضاء المحيطة وترسل البيانات إلى معالج تقليل الضوضاء عالي الدقة QN1. وباستخدام خوارزمية جديدة، يقوم QN1 بعد ذلك بمعالجة الضوضاء وتقليلها في البيئات الصوتية المختلفة في الوقت الفعلي. جنبًا إلى جنب مع تقنية Bluetooth Audio SoC الجديدة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: "my font",
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'اضافة تقييم',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'تقييمات (102)',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const RateListView(),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: const Text(
                'عرض جميع تقييم',
                // textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const AddToCartButtom(
              title: 'اضافة الي عربة التسوق',
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عرض المزيد",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'منتجات ذات صلة',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Consumer<Cartt>(builder: ((context, Cartt, child) {
              return ProductListView();
            })),
          ],
        ),
      ),
    );
  }
}
