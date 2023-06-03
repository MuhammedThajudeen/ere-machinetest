// ignore_for_file: camel_case_types

import 'package:ere_machinetest/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class arrowbutton extends StatelessWidget {
  const arrowbutton(
      {super.key,
      required this.routescreen,
      required this.buttonname,
      required this.fontstyle,
      required this.topvalue,
      required this.bottomvalue});
  final Widget routescreen;
  final String buttonname;
  final TextStyle fontstyle;
  final double topvalue;
  final double bottomvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
            top: topvalue, left: 27, right: 27, bottom: bottomvalue),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
              fixedSize: MaterialStatePropertyAll(Size.fromHeight(49)),
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 41, 79, 177))),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => routescreen));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(buttonname, style: fontstyle),
              Icon(
                Icons.arrow_forward,
                size: 24,
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}
