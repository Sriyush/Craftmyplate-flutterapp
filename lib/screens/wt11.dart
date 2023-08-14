import 'package:flutter/material.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:my_app/screens/wt12.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class wt11 extends StatefulWidget {
  const wt11({Key? key});

  @override
  State<wt11> createState() => _wt11State();
}

class _wt11State extends State<wt11> {


  @override
  Widget build(BuildContext context) {
    double fem = 1.5;
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
            Container(
              padding: EdgeInsets.all(10),
              child: Column(  
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 9.w,
                        height: 3.0.h,
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h), // Add padding here
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // RotationTransition(
                    // turns: Tween(begin: 0.0, end: 0.5).animate(_rotationController), // Rotate to half a circle (180 degrees)
                    // child:
                     Transform.translate(
                      offset: Offset(0, 50), // Move img4.png down by 10 pixels
                      child: Image.asset(
                        'assets/img4.png', // Replace with the path to your first image
                        width: 80,
                        height: 80,
                      ),
                  ),
                  // SizedBox(width: 5),
                  // Transform.rotate(
                  
                    // child:
                     Image.asset(
                      'assets/img3.png', 
                      width: 40.w,
                      height: 210,
                    ),
                  // ),
                  // SizedBox(width: 5), // Add spacing between img3 and img2
                   Transform.translate(
                      offset: Offset(0, 50),
                      child: Image.asset(
                        'assets/img2.jpg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.33 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 229.33.w * fem,
              height: 8.17 * fem,
              child: Image.asset(
                'assets/Vector2.png',
                width: 229.33 * fem,
                height: 8.17 * fem,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Create Your Own Plate',
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
              'Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.',
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
                                  border: Border.all(color: Color(0xff6318af)),
                                  color: Color(0xff6318af),
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
                                  border: Border.all(color: Color(0x196318af)),
                                  color: Color(0x196318af),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            SizedBox(height: 10), // Add spacing between the last container and the circular avatar
            CircleAvatar(
              backgroundColor: Color(0xFFE0D4EC), // Set the outer circle's background color
              radius: 45, // Set the radius of the outer circle
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => wt12(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Color(0xff6318af), // Set the inner circle's background color
                  radius: 28, // Set the radius of the inner circle
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 35, // Set the color of the arrow icon
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
