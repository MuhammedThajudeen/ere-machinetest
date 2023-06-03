// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ere_machinetest/screens/home.dart';
import 'package:ere_machinetest/screens/reset_password_screen.dart';
import 'package:ere_machinetest/widgets/arrow_button.dart';
import 'package:ere_machinetest/widgets/background_container.dart';
import 'package:ere_machinetest/widgets/top_backbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class verifyscreen extends StatelessWidget {
  const verifyscreen({super.key, req});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          bgcontainer(
            bigtext: 'Verify your\nphone',
            smalltext:
                'We have send the verification to your\nphone number +91 9745640896 ',
          ),
          screenbackbutton(),
          Positioned(
              bottom: 0,
              child: Container(
                height: 349,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 31, left: 44),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Verify Phone',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 42, right: 42),
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 241, 241, 241),
                      ),
                      alignment: Alignment.centerLeft,
                      height: 44,
                      child: Text('Enter OTP',
                          style: GoogleFonts.robotoFlex(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 198, 198, 198))),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    //create password
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Create your password',
                              style: GoogleFonts.robotoFlex(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 198, 198, 198))),
                          Icon(
                            Icons.remove_red_eye,
                            size: 16,
                            color: Color.fromARGB(
                              255,
                              205,
                              205,
                              205,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    //reenter password
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Re-enter your password',
                              style: GoogleFonts.robotoFlex(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 198, 198, 198))),
                          Icon(
                            Icons.remove_red_eye,
                            size: 16,
                            color: Color.fromARGB(
                              255,
                              205,
                              205,
                              205,
                            ),
                          )
                        ],
                      ),
                    ),

                    //button
                    arrowbutton(
                      buttonname: 'Sign Up',
                      routescreen: resetpasswordscreen(),
                      fontstyle: GoogleFonts.robotoFlex(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      topvalue: 24,
                      bottomvalue: 32,
                    ),

                    //bottom signup text
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
