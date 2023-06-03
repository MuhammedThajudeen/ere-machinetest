// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class bgcontainer extends StatelessWidget {
  const bgcontainer(
      {super.key, required this.bigtext, required this.smalltext});
  final String bigtext;
  final String smalltext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color.fromARGB(255, 39, 68, 143),
      child: Stack(
        children: [
          Positioned(
              top: 50,
              left: 137,
              right: 138,
              child: Image(image: AssetImage('assets/logo.jpg'))),
          Positioned(
              top: 195,
              left: 35,
              child: Text(
                bigtext,
                style: GoogleFonts.robotoFlex(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          SizedBox(
            height: 10,
          ),
          Positioned(
              top: 289,
              left: 35,
              child: Text(
                smalltext,
                style:
                    GoogleFonts.robotoFlex(fontSize: 13, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
