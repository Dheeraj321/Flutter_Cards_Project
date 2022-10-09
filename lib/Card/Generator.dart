import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Generator(String name, String info, String assetLoc, double sizeWidth) {
  return Container(
    height: 230,
    child: Stack(
      children: [
        Positioned(
          top: 35,
          left: 25,
          child: Material(
            child: Container(
              height: 180,
              width: sizeWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0.0),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: new Offset(-10.0, 10.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: Card(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(assetLoc),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 45,
          left: 200,
          child: Container(
            height: 150,
            width: 160,
            //color: Color.fromARGB(255, 255, 153, 153),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.epilogue(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF363f93),
                  ),
                ),
                Divider(color: Colors.black),
                Text(
                  info,
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF363f93),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
