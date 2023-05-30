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
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 31),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 41, right: 42),
                      child: Center(child: TextField()),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 41, right: 42),
                      child: Center(child: TextField()),
                    ),
                    Text(
                      'Forgot Password',
                      textAlign: TextAlign.right,
                    ),
                    button(
                      buttontext: 'Sign In',
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
