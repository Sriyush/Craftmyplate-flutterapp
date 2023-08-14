import 'package:flutter/material.dart';
import 'package:my_app/screens/ob11.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:my_app/screens/wt13.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class wt12 extends StatefulWidget {
  const wt12({super.key});

  @override
  _wt12State createState() => _wt12State();
}

class _wt12State extends State<wt12> with TickerProviderStateMixin {
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
            Container(  
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 9.w,
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/bg.jpg',
                    height: 300,
                    width: 300,
                  ),
                  Transform.translate(
                    offset: Offset(0, 120),
                    child: Image.asset('assets/floor.jpg', height: 40, width: 40),
                  ),
                  Transform.translate(
                    offset: Offset(10, 20),
                    child: Image.asset(
                      'assets/guy.jpg',
                      width: 330,
                      height: 330,
                    ),
                  ),
                  _buildContinuousDiagonalAnimation(-43, -47, 'assets/sandwich.jpg', 5, -5, 60, 60),
                  _buildContinuousDiagonalAnimation(-65, -80, 'assets/donut.jpg', 9, 0, 50, 50),
                  _buildContinuousDiagonalAnimation(-30, -120, 'assets/burger.jpg', 7, 7, 50, 50),
                  _buildContinuousDiagonalAnimation(30, -120, 'assets/salad.jpg', -5, 5, 50, 50),
                  _buildContinuousDiagonalAnimation(65, -80, 'assets/apple.jpg', -9, 0, 50, 50),
                  _buildContinuousDiagonalAnimation(43, -47, 'assets/fish.jpg', -7, -7, 60, 60),
                ],
              ),
            ),
            // SizedBox(height: 10,),
             Text(
              'Exquisite Catering',
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
              'Experience culinary artistry like never before with our innovative and exquisite cuisine creations',
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
                      builder: (context) => wt13(), 
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

  Widget _buildContinuousDiagonalAnimation(double beginX, double beginY, String assetPath, double endX, double endY, double width, double height) {
    AnimationController controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);

    Animation<Offset> animation = Tween<Offset>(
      begin: Offset(beginX, beginY),
      end: Offset(beginX + endX, beginY + endY),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: animation.value,
          child: child,
        );
      },
      child: Image.asset(assetPath, width: width, height: height),
    );
  }
}
