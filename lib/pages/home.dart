// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/pages/page1.dart';
import 'package:flutter_application/pages/page2.dart';
import 'package:flutter_application/widget/cart_view.dart';
import 'package:flutter_application/widget/custombuttom.dart';
import 'package:flutter_application/widget/details_view.dart';
import 'package:flutter_application/widget/product_card.dart';
import 'package:flutter_application/widget/product_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List pages = [
    ProductsView(),
    home(),

    page1()
    // DetailsView(items: ProductCard(img: ,),)
  ];
  int curInd = 0;

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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curInd,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 17.sp),
          selectedLabelStyle: TextStyle(color: Colors.black, fontSize: 17.sp),
          onTap: (value) {
            curInd = value;
            setState(() {});
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pages[value]));
          },
          selectedItemColor: Colors.amber,
          // fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  // color: Colors.black,
                  size: 33,
                ),
                label: 'الرئيسيه'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  // color: Colors.black,
                  size: 33,
                ),
                label: 'مفضله'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  // color: Colors.black,
                  size: 33,
                ),
                label: 'السله'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  // color: Colors.black,
                  size: 33,
                ),
                label: 'حسابي'),
          ]),
      backgroundColor: Color.fromARGB(255, 240, 233, 233),
      appBar: AppBar(
          elevation: 0,
          leadingWidth: 120,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(28),
                      iconColor: MaterialStatePropertyAll(
                          Color.fromRGBO(249, 190, 8, 1))),
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active_outlined)),
              IconButton(
                  style: ButtonStyle(
                      iconSize: MaterialStatePropertyAll(33),
                      iconColor: MaterialStatePropertyAll(
                          Color.fromRGBO(249, 190, 8, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  icon: Icon(Icons.search)),
            ],
          ),
          actions: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2, right: 2),
                      child: Text(
                        "اهلا بيك",
                        style: TextStyle(
                            color: Color.fromRGBO(143, 143, 143, 0.94),
                            fontFamily: "myfont",
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6, top: 2),
                      child: Text(
                        "احمد شهاب",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: "myfont",
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, right: 6),
                  child: Image.asset(
                    'assets/IMG_20240317_135316_146 1.png',
                    width: 37.w,
                    height: 37.h,
                  ),
                ),
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromRGBO(249, 190, 8, 1),
                      ),
                      width: 320.w,
                      height: 139.h,
                    ),
                    Positioned(
                      left: -20,
                      child: Image.asset(
                          "assets/455885100_3679853392267487_1535572955640795003_n-removebg-preview 1 (2).png",
                          height: 180,
                          width: 450),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "اختر فئة",
                style: TextStyle(
                    color: Color.fromRGBO(15, 14, 14, 0.929),
                    fontFamily: "myfont",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 14.h,
              ),
              SingleChildScrollView(
                scrollDirection: axisDirectionToAxis(AxisDirection.right),
                child: Row(
                  children: List.generate(
                      catagoryname.length,
                      (index) => custombuttom(
                          name: catagoryname[index],
                          ispressed: courrantindex == index,
                          onPressed: () {
                            setState(() {
                              courrantindex = index;
                            });
                          })),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 1.w),
                child: Container(
                  width: 388.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "PRIMEWELL 750R16 - 14PR PWO1",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.937),
                                    fontFamily: "myfont",
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              // SizedBox(
                              //   height: 12,
                              // ),
                              Padding(
                                padding: EdgeInsets.all(6.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "تسوق الان",
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontFamily: "myfont",
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.h),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.arrow_forward_outlined)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Image.asset(
                        "assets/WhatsApp_Image_2024-09-12_at_10.33.34_PM-removebg-preview 1.png",
                        height: 230.h,
                        width: 100.w,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 220.h,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: ListView.builder(
                    itemCount: productsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 9.0.w),
                      child: ProductCard(
                        img: productsList[index].img,
                        title: productsList[index].title,
                        price: productsList[index].price,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
