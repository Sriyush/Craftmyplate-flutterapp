import 'package:flutter/material.dart';
import 'package:my_app/screens/ob11.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class wt13 extends StatelessWidget {
  const wt13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 10.w,
                        height: 3.h,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Ob15(),
                                ),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE8E0EA), // Button background color
                            padding: EdgeInsets.all(2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4), // Set rounded corners
                            ),
                          ),
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontFamily: 'lexend',
                              fontSize: 15.sp,
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/human.png')],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Personal Order Executive',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.sp,
                fontFamily: 'lexend',
                fontWeight: FontWeight.w400,
                height: 1.25,
                color: Color(0xff030303),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
                height: 1.5,
                color: Color(0xff7b7b7b),
              ),
            ),
            SizedBox(height: 40),
             Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 4,
                    // color: Colors.amber,
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                            children: [
                              Container(
                                width: 24,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.5),
                                  border: Border.all(color: Color(0x196318af)),
                                  color: Color(0x196318af),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                               Container(
                                width: 24,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.5),
                                  border: Border.all(color: Color(0x196318af)),
                                  color: Color(0x196318af),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                             Container(
                                width: 24,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.5),
                                  border: Border.all(color: Color(0xff6318af)),
                                  color: Color(0xff6318af),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                TextButton(
                  onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ob15(), 
                    ),
                  );
              },
              child: Container(
                // alignment: Alignment.topCenter,
                width: 40.w,
                height: 10.h,
                decoration: BoxDecoration(
                  color: Color(0xffe0d4ec),
                  borderRadius: BorderRadius.circular(25.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          // height: 1.75,
                          color: Color(0xff6318af),
                        ),
                      ),
                      SizedBox(width: 2.5.w,),
                      CircleAvatar(
                        backgroundColor: Color(0xff6318af),
                        radius: 18.sp,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20.sp  ,
                        ),
                      ),
                  ],
                ),
              )
              ),
          ],
        ),
      ),
    );
  }
}
