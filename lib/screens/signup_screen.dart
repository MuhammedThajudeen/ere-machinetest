// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:ere_machinetest/screens/verify_screen.dart';
import 'package:ere_machinetest/widgets/arrow_button.dart';
import 'package:ere_machinetest/widgets/background_container.dart';
import 'package:ere_machinetest/widgets/top_backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class signup extends StatelessWidget {
  const signup({super.key, req});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          bgcontainer(
            bigtext: 'Create better\ntogether',
            smalltext: 'Join our community ',
          ),
          screenbackbutton(),
          Positioned(
              bottom: 0,
              child: Container(
                height: 356,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 36, left: 44),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 42, right: 42),
                        padding: EdgeInsets.only(left: 16, bottom: 9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 241, 241, 241),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your full name',
                              hintStyle: GoogleFonts.robotoFlex(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 198, 198, 198))),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 42, right: 42),
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 241, 241, 241),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 44,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your email id',
                              hintStyle: GoogleFonts.robotoFlex(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 198, 198, 198))),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    //phone number
                    Container(
                        margin: EdgeInsets.only(left: 42, right: 42),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 241, 241, 241),
                        ),
                        alignment: Alignment.centerLeft,
                        height: 44,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 9),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter your phone number',
                                      hintStyle: GoogleFonts.robotoFlex(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 198, 198, 198))),
                                ),
                              ),
                            )
                          ],
                        )),

                    //button
                    arrowbutton(
                      buttonname: 'Continue',
                      routescreen: verifyscreen(),
                      fontstyle: GoogleFonts.robotoFlex(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      topvalue: 24,
                      bottomvalue: 16,
                    ),

                    //bottom signup text
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Already a member? ",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 41, 79, 177)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
