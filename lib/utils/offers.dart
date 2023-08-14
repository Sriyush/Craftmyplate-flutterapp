import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class offers extends StatelessWidget {
  const offers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                    Container(
                      width: 85.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 1,
                             offset: Offset(0, 3),
                          )
                        ]
                      ),),
                      Positioned(
                        top: 2.h,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/cups.png',
                            width: 70.w,
                            height: 20.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.w),
                            Image.asset('assets/signbadge.png'),
                            SizedBox(width: 1.w),
                            Text('Signature',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6318AF),
                          ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('High Quality Disposable Cutlery',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Elegant Decorations & Table Settings',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Served by Waitstaff',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Best for Weddings, Corporate Events..',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(width: 17.w,),
                            Container(
                            child:Text('Know more',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6318AF),
                          ),
                            ),
                            )
                          ],
                        )
                        ],
                        ),
                        ),
                      Positioned(
                        top: 0.h,
                        // left: 80,
                        right: 0.h,
                        child: Container(
                          height: 3.h,
                          width: 20.w,
                          decoration: BoxDecoration(color: Color(0xFF6318AF),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10), // Make the top left corner circular
                            bottomLeft: Radius.circular(10), // Make the bottom right corner circular
                          ),
                          ),
                          child: Center(child: 
                          Text('Recommended',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          )),

                      ),),
                      ],
                    ),
                    SizedBox(width: 3.w,),
                    Stack(
                      children: [
                    Container(
                      width: 85.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                             offset: Offset(0, 3),
                          )
                        ]
                      ),),
                      Positioned(
                        top: 2.h,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                        Container(
                          height: 20.h,
                          width: 70.w,
                          
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.asset(
                            'assets/dhinka.jpeg',
                            // width: 180,
                            // height: 120,
                            fit: BoxFit.cover,
                          ),),
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.w),
                            Image.asset('assets/greenbadge.png',
                            height: 3.h,
                            ),
                            SizedBox(width: 1.w),
                            Text('Value',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6318AF),
                          ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Disposable Cutlery',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Basic Decorations & Table Settings',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Served by Buffet Style',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Best for Birthdays,family....',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Know more',
                            
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6318AF),
                          ),
                          )
                          ],
                        )
                        ],
                        ),
                        ),
                      ],
                    ),
                    SizedBox(width: 3.w,),
                    Stack(
                      children: [
                    Container(
                      width: 85.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                             offset: Offset(0, 3),
                          )
                        ]
                      ),),
                      Positioned(
                        top: 2.h,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                        Container(
                          height: 20.h,
                          width: 70.w,
                          
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.asset(
                            'assets/tableeee.jpeg',
                            // width: 180,
                            // height: 120,
                            fit: BoxFit.cover,
                          ),),
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.w),
                            Image.asset('assets/goldd.png',
                            height: 3.h,
                            ),
                            SizedBox(width: 1.w),
                            Text('Luxury',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6318AF),
                          ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('High End Reusuable Cutlery',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Elegant Decorations & Table Settings',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Served by Professional Waitstaff',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          children: [
                            SizedBox(width: 4.5.w,),
                            Image.asset('assets/sparkles.jpg'),
                            SizedBox(width: 2.5.w,),
                            Text('Best for Celebrity Parties, Political..',
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            // color: Color(0xFF6318AF),
                          ),
                            )
                          ],
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Know more',
                            
                            style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF6318AF),
                          ),
                          // textAlign: TextAlign.center,
                            )
                          ],
                        )
                        ],
                        ),
                        ),
                      ],
                    ),
                  ],
                )
              );
  }
}