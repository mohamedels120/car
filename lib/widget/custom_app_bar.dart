// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool hasSearch;
  final IconData icon;
  final void Function()? onPress;
  const CustomAppBar({
    super.key,
    required this.title,
    this.hasSearch = false,
    this.icon = Icons.search,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontFamily: "myfont",
                fontSize: 19,
                fontWeight: FontWeight.w700),
          ),
          hasSearch
              ? IconButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(28, 28))),
                  icon: Icon(
                    icon,
                    size: 26,
                  ),
                  onPressed: onPress,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
