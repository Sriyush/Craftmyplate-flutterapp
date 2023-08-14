import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class difffood extends StatelessWidget {
  const difffood({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/roll.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Starters',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        Image.asset(
                          'assets/cocktail.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Drinks',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        Image.asset(
                          'assets/noodles.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Rice',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        Image.asset(
                          'assets/stew.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Curry',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        Image.asset(
                          'assets/cake.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Deserts',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                    SizedBox(width: 1.w,),
                    Column(
                      children: [
                        Image.asset(
                          'assets/junk.png',
                          width: 17.w,
                          height: 10.h,
                        ),
                        SizedBox(height: 2.h,),
                        Text('Starters',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color:Color(0xFF030303),
                        ),
                        )
                      ],
                    ),
                ],),
              );
  }
}