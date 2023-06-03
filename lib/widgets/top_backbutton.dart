import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class screenbackbutton extends StatelessWidget {
  const screenbackbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 63,
        left: 29,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: Colors.white,
                )),
            height: 25,
            width: 25,
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
          ),
        ));
  }
}
