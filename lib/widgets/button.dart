// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class button extends StatelessWidget {
  const button({super.key, required this.buttontext});

  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20, left: 27, right: 27),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
              fixedSize: MaterialStatePropertyAll(Size.fromHeight(49)),
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 41, 79, 177))),
          onPressed: () {},
          child: Text(buttontext,
              style: GoogleFonts.overpass(fontSize: 13, color: Colors.white)),
        ));
  }
}
