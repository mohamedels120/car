import 'package:flutter/material.dart';
import 'package:flutter_application/widget/deatails2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartButtom extends StatelessWidget {
  final String title;
  const AddToCartButtom({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsView(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(11.w),
        margin: EdgeInsets.symmetric(horizontal: 28.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.r),
          color: Colors.amber,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "myfont",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
