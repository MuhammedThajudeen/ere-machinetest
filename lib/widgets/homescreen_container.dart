import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class homecontainer extends StatelessWidget {
  const homecontainer({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 226, 239, 255)),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 14, right: 14),
            height: 93,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage('assets/street.jpg'),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 8, left: 14, right: 14),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: GoogleFonts.robotoFlex(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 8, left: 14, right: 14, bottom: 22),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                subtitle,
                style: GoogleFonts.robotoFlex(
                    fontSize: 11,
                    color: Color.fromARGB(255, 131, 131, 131),
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
