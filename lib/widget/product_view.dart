// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/widget/custom_app_bar.dart';
import 'package:flutter_application/widget/custombuttom.dart';
import 'package:flutter_application/widget/details_view.dart';
import 'package:flutter_application/widget/product_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsView extends StatefulWidget {
  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  List<String> catagoryname = [
    'ملاكي',
    'الدينات',
    'شاحنات',
    'النقل التقيل',
    'الكل'
  ];
  int courrantindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 239, 239),
      body: Column(
        children: [
          SizedBox(height: 50.h),
          CustomAppBar(title: 'الفئات'),
          SizedBox(height: 17.h),
          SingleChildScrollView(
            scrollDirection: axisDirectionToAxis(AxisDirection.right),
            child: Row(
              children: List.generate(
                  catagoryname.length,
                  (index) => custombuttom(
                      name: catagoryname[index],
                      ispressed: courrantindex == index,
                      onPressed: () {
                        Navigator.pushNamed(context, '/search');
                        setState(() {
                          courrantindex = index;
                        });
                      })),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: GridView.builder(
                padding: EdgeInsets.all(0.w),
                itemCount: productsList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.w,
                    childAspectRatio: 2 / 2.8,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsView(items: productsList[index]),
                          ),
                        );
                      },
                      child: productsList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
