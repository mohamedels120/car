// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/provider/carttt.dart';
import 'package:flutter_application/widget/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 215, 215),
        appBar: AppBar(
            title: Text(
              "بحث",
              style: TextStyle(
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp),
            ),
            centerTitle: true,
            actions: [
              Consumer<Cartt>(builder: ((context, classInstancee, child) {
                return Stack(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/CartView');
                        },
                        icon: Icon(Icons.add_shopping_cart)),
                    Positioned(
                      right: 5,
                      bottom: 21,
                      child: Container(
                        child: Text(
                          "${classInstancee.selecteddproducts.length}",
                          style: TextStyle(fontSize: 13),
                        ),
                        padding: EdgeInsets.all(5.w),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(249, 190, 8, 1),
                            shape: BoxShape.circle),
                      ),
                    ),
                  ],
                );
              })),
            ]),
      ),
    );
  }
}
