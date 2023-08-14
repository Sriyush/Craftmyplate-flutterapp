import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class working extends StatelessWidget {
  const working({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 80.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    // SizedBox(width: 1,),
                    Container(
                     color: Color(0xFFF7E5B7).withOpacity(0.2), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/nidhi.png'),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Customize Menu',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width:50.w,
                            child: Text(
                              'Select items for a single event or multiple events',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                  // ]
                  // ),
                  //   ),
                    ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                  //     Container(
                  // height: 110,
                  // width: 380,
                  // decoration: BoxDecoration(color: Colors.white),
                  // child: Row(children: [
                    SizedBox(width: 20,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Choose Services',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width: 50.w,
                            child: Text(
                              'Select the type of services from varying cutlery, mode of serving options, & more',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                      SizedBox(width: 2.w,),
                    Container(
                     color: Color(0xFFF7E5B7).withOpacity(0.2), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/ni2.png'),
                      ),
                    ),
                    ],
                ),
                SizedBox(height: 2.h,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    // SizedBox(width: 1,),
                    Container(
                     color: Color(0xFFF7E5B7).withOpacity(0.2), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/bowl.png'),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Dynamic Pricing',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width:50.w,
                            child: Text(
                              'Price per plate varies with no. of items in a plate and no. of plates selected',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                    ],
                ),
                
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Track Your Order',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width: 50.w,
                            child: Text(
                              'Track the order status and seek help from the executives anytime',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                      SizedBox(width: 2.w,),
                    Container(
                      
                     color: Color(0xFFF7E5B7).withOpacity(0.1), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/ni3.png'),
                      ),
                    ),
                    // SizedBox(width: 10,),
                    
                  
                    ],
                ),
                 SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    // SizedBox(width: 2.w,),
                    Container(
                     color: Color(0xFFF7E5B7).withOpacity(0.1), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/ni4.png'),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Taste Your Samples',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width: 50.w,
                            child: Text(
                              'Explode your taste bud with samples of what you order(on request for eligible orders)',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                  
                    ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h),
                          Text(
                            'Enjoy Food and Services',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 18.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Container(
                            width: 50.w,
                            child: Text(
                              'Enjoy event with delicious and customized food',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      ),
                      SizedBox(width: 2.w,),
                    Container(
                     color: Color(0xFFF7E5B7).withOpacity(0.1), // Set your desired background color
                      child: ClipRRect(
                        child: Image.asset('assets/ni5.png'),
                      ),
                    ),
                    ],
                ),
                ],
              ),
              );
  }
}