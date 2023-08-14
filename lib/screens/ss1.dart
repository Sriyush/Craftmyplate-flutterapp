import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/ss2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ss1 extends StatelessWidget {
  const ss1({super.key});

  @override
  Widget build(BuildContext context) {
     Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => ss2(),
      )),
    );
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        size: Size(360, 640), // Apply your desired design size
      ),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(6.5055),
          constraints: BoxConstraints(
            minWidth: 795.99994,
            minHeight: 812.21161,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF6318AF),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/Logo1.png',
                  scale: 0.8,
                  width: 88.w,
                  height: 110.h,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.6,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: 155.w,
                        height: 30.h,
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontFamily: 'Capriola',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            color: Color(0xFFF7E5B7),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
