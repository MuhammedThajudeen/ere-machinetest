// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ere_machinetest/screens/home.dart';
import 'package:ere_machinetest/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ere_machinetest/widgets/arrow_button.dart';
import 'package:google_fonts/google_fonts.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(
              image: AssetImage('assets/church.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 284,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 31),
                      child: Center(
                        child: Text(
                          'Welcome to',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 41, right: 42),
                      child: Center(
                        child: Text(
                          'CrowdAfrik is a Financial technology (fintech) initiative with a broad range of ideas that aim to provide support, finances and deploy technical exchanges to Africans with the main goal of poverty reduction, industrial development and creating job opportunities.',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    arrowbutton(
                      routescreen: signinscreen(),
                      buttonname: 'Get Started',
                      fontstyle: GoogleFonts.overpass(
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                      topvalue: 20,
                      bottomvalue: 32,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
