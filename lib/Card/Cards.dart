import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Generator.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xFF363f93),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 100,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 133,
                    left: 40,
                    child: Text(
                      'Team Liquid',
                      style: GoogleFonts.epilogue(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF363f93),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Generator(
              "Tenz",
              "Team of Sentinels having an accurate aim of 99.6 %",
              "assets/p1.webp",
              width * 0.9,
            ),
            Generator(
              "Scream",
              "Team of Liquid having an accurate aim of 99.61 %",
              "assets/p2.jpg",
              width * 0.9,
            ),
            Generator(
              "Shroud",
              "Team of Sentiels having an accurate aim of 99.62 %",
              "assets/p3.webp",
              width * 0.9,
            ),
            Generator(
              "Nivera",
              "Team of Liquid having an accurate aim of 99.64 %",
              "assets/p4.webp",
              width * 0.9,
            ),
            Generator(
              "Dheeraj Rai",
              "Team of Liquid having an accurate aim of 100 %",
              "assets/p5.jpeg",
              width * 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
