// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/homescreen_container.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 63,
                width: 63,
                margin: EdgeInsets.only(top: 6, left: 23),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/logo.jpg'),
                ),
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(top: 19, right: 25),
                    height: 37,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 4, 85, 191),
                        ),
                        borderRadius: BorderRadius.circular(11)),
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 4, 85, 191),
                    )),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            height: 207,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 40, 77, 173),
                  Color.fromARGB(255, 15, 52, 147)
                ]),
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 34),
                  child: Text(
                    'Area of Funding',
                    style: GoogleFonts.robotoFlex(
                        fontSize: 26, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 52, top: 7, right: 52),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoFlex(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 107,
                  height: 38,
                  margin: EdgeInsets.only(top: 22, bottom: 24),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Apply',
                        style: GoogleFonts.robotoFlex(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 37, 74, 170)),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem Ipsum',
                style: GoogleFonts.robotoFlex(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children: [
              homecontainer(
                title: 'Agriculture',
                subtitle: 'Lorem Ipsum is simply dummy \ntext of the printing',
              ),
              SizedBox(
                height: 15,
              ),
              homecontainer(
                  title: 'Logistics',
                  subtitle:
                      'Lorem Ipsum is simply dummy \ntext of the printing'),
              SizedBox(
                height: 15,
              ),
              homecontainer(
                  title: 'Logistics',
                  subtitle:
                      'Lorem Ipsum is simply dummy \ntext of the printing'),
            ],
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22), topRight: Radius.circular(22)),
        child: BottomNavigationBar(currentIndex: 1, items: [
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ]),
      ),
    );
  }
}
