import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:findresteau/utils.dart';

class first extends StatefulWidget {

  const first({super.key});
  @override
  State<first> createState() => _firstState();
}
class _firstState extends  State<first> {
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
            Container(
              // autogroup7frpDx9 (YVJcX597uzTZAa4GAm7FRP)
              padding: EdgeInsets.fromLTRB(55*fem, 22*fem, 55*fem, 61*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group3XC9 (1:119)
                    margin: EdgeInsets.fromLTRB(71.18*fem, 0*fem, 71*fem, 250.66*fem),
                    width: double.infinity,
                    height: 55.34*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupr9h7zLd (YVJdenkcp3sAJJtBZ4r9h7)
                          padding: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 0.9*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // autogroupfp77HKj (YVJcuK14gWipaoSsf3Fp77)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.47*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // groupmkh (1:120)
                                      margin: EdgeInsets.fromLTRB(5.98*fem, 0*fem, 0*fem, 18.06*fem),
                                      width: 11.01*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-nxd.png',
                                        width: 11.01*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                    Container(
                                      // groupmeD (1:140)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.98*fem, 0*fem),
                                      width: 11.01*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-nCV.png',
                                        width: 11.01*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // groupNP7 (1:144)
                                width: 3.98*fem,
                                height: 18.44*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-s17.png',
                                  width: 3.98*fem,
                                  height: 18.44*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupvicve5j (YVJd4tZSKHUKpH9tpcViCV)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.74*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // group8Wh (1:124)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.66*fem, 17.64*fem),
                                width: 19.66*fem,
                                height: 19.26*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-pKo.png',
                                  width: 19.66*fem,
                                  height: 19.26*fem,
                                ),
                              ),
                              Container(
                                // groupocq (1:148)
                                width: 15.6*fem,
                                height: 18.44*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-3Ch.png',
                                  width: 15.6*fem,
                                  height: 18.44*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupzdktJJh (YVJdCoVvGsvBBVxPXJZdKT)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // group2Vb (1:128)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.5*fem, 17.64*fem),
                                width: 19.66*fem,
                                height: 19.26*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group.png',
                                  width: 19.66*fem,
                                  height: 19.26*fem,
                                ),
                              ),
                              Container(
                                // group6kM (1:152)
                                width: 16.31*fem,
                                height: 18.44*fem,
                                child: Image.asset(
                                  'assets/page-1/images/group-hBT.png',
                                  width: 16.31*fem,
                                  height: 18.44*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnqzwoem (YVJdqNHKrKzrejw7oAnqZw)
                          padding: EdgeInsets.fromLTRB(5*fem, 0.39*fem, 0*fem, 0*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwk9buxh (YVJdLYn1fZ8fMtsENuWk9B)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.36*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // grouppJy (1:132)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18.06*fem),
                                      width: 16.31*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-xSH.png',
                                        width: 16.31*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                    Container(
                                      // group6GV (1:156)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.8*fem, 0*fem),
                                      width: 11.36*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-WvH.png',
                                        width: 11.36*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouphtzpB33 (YVJdUdNtC4osuwZNvghTZP)
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // groupJdT (1:136)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.19*fem, 18.06*fem),
                                      width: 3.98*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-3c1.png',
                                        width: 3.98*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                    Container(
                                      // groupnHj (1:160)
                                      width: 14.6*fem,
                                      height: 18.44*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-3ty.png',
                                        width: 14.6*fem,
                                        height: 18.44*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonprimary5Xj (1:164)
                    width: double.infinity,
                    height: 51*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff5db074),
                      borderRadius: BorderRadius.circular(100*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Get started now for free',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}