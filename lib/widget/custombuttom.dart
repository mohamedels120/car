// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types, must_be_immutable, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class custombuttom extends StatelessWidget {
  custombuttom(
      {super.key,
      required this.name,
      required this.onPressed,
      required this.ispressed});
  final String name;
  final void Function()? onPressed;

  final bool ispressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
              color: Color.fromRGBO(38, 38, 38, 1),
              fontFamily: "myfont",
              fontWeight: FontWeight.w700,
              fontSize: 12),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: ispressed
                ? Color.fromRGBO(249, 190, 8, 0.8)
                : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ispressed ? 30.0 : 0.0),
            )));
  }
}
