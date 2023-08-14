import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:my_app/screens/wt11.dart';
import 'package:my_app/screens/wt12.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ss2 extends StatelessWidget {
  const ss2({Key? key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => wt11(),
      )),
    );
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(6.5055.sp),
          width: 1140.w,
          height: 1140.h,
          color: Color(0xFF6318AF),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Logo1.png',
                width: 124.61839.w,
                height: 141.54619,
              ),
              SizedBox(height: 3.h),
              Text(
                'Craft My Plate',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontFamily: 'Capriola',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.sp,
                  wordSpacing: 2.sp,
                  color: Color(0xFFF7E5B7),
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                'You customise, We cater',
                style: TextStyle(
                  fontFamily: 'Courgette',
                  fontSize: 16.sp,
                  color: Color(0xFFF7E5B7),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
