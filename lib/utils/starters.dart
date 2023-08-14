import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class starters extends StatelessWidget {
  const starters({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/chicken.png',
                            width: 30.w,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Grill Chicken',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5 ,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/mushroom.png',
                            width: 30.h,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Mashroom Fry',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(width: 3.w),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/pakora.jpeg',
                            width: 30.h,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Veggies Fry',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/chicken.png',
                            width: 30.w,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Grill Chicken',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(width: 3.w,),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/chicken.png',
                            width: 30.w,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Grill Chicken',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(width: 3.w,),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/chicken.png',
                            width: 30.w,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Grill Chicken',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                   SizedBox(width: 3.w,),
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/chicken.png',
                            width: 30.w,
                            height: 10.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Grill Chicken',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                    
                ],
              ),
              );
  }
}