// ignore_for_file: prefer_const_constructors

import 'package:ere_machinetest/widgets/background_container.dart';
import 'package:ere_machinetest/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class signinscreen extends StatelessWidget {
  const signinscreen({super.key, req});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          bgcontainer(
            bigtext: 'Welcome \nback to',
            smalltext: 'CrowdAfrik ',
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 317,
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
                          'Sign In',
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
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 241, 241, 241),
                      ),
                      alignment: Alignment.centerLeft,
                      height: 44,
                      child: Text('Enter your phone number'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
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
                        children: const [
                          Text('Enter your password'),
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
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(right: 27),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 27, right: 27),
                      child: button(
                        buttontext: 'Sign In',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text(
                        "Don 't have an account yet? Sign Up",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 41, 79, 177)),
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
