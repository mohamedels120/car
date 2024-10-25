// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class branches extends StatefulWidget {
  @override
  State<branches> createState() => _branchesState();
}

class _branchesState extends State<branches> {
  String selectedBranch = 'العويضة';

  // قائمة الفروع
  List<String> branche = ['العويضة', 'الدرعية', 'الخرج', 'الدوادمي'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 215, 215),
        appBar: AppBar(
          title: Text(
            'الفروع',
            style: TextStyle(
                fontFamily: "myfont",
                fontSize: 16.sp,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, right: 7),
                child: Text(
                  "برجاء اختيار الفرع الاقرب لك",
                  style: TextStyle(
                      fontFamily: "myfont",
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ListView.builder(
                itemCount: branche.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.store, color: Colors.orange),
                    title: Text(branche[index]),
                    trailing: Radio<String>(
                      value: branche[index],
                      groupValue: selectedBranch,
                      onChanged: (String? value) {
                        setState(() {
                          selectedBranch = value!;
                        });
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
