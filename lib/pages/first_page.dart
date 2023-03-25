import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:findresteau/utils.dart';

import '../components/my_button.dart';
import 'aut_page.dart';

class first extends StatefulWidget {

  const first({super.key});
  @override
  State<first> createState() => _firstState();
}
class _firstState extends  State<first> {

  void passer() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AuthPage()),
    );
}
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginpage1Neh (1:102)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup8embsrM (YVJcDL9gUFR9ndiGXs8EmB)
              width: double.infinity,
              height: 404*fem,
              child: Stack(
                children: [
                  Positioned(
                    // frame3yeV (1:103)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 360*fem,
                      height: 339*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(112*fem),
                      ),
                      child: Align(
                        // image1fXK (1:104)
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 413*fem,
                          height: 413*fem,
                          child: Image.asset(
                            'assets/page-1/images/image-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // restaurant1ADB (1:105)
                    left: 126*fem,
                    top: 252*fem,
                    child: Align(
                      child: SizedBox(
                        width: 108*fem,
                        height: 108*fem,
                        child: Image.asset(
                          'assets/page-1/images/restaurant-1.png',
                          width: 108*fem,
                          height: 108*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/page-1/images/name.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            MyButton(
              texte: "GET STARTED ",
              onTap: passer,
            ),
                ],
              ),
            ),
          );
  }
}