import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
  children: [
    Container(
      width: 180,
      height: 150,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 150,
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
          ),
          Positioned(
            right: 90,
            top:20,
            child: Image.asset('assets/yuk.png'),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Default Menu 1',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 90,
            child: Text(
              '3 starters ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 90,
            child: Text(
              '3 maincourse ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 90,
            child: Text(
              '3 desserts ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 85,
            left: 90,
            child: Text(
              '3 drinks   ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 25,
            child: Text(
              'Min 800',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF7E7E7E),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 8,
            child: Icon(Icons.person,
            color: Color(0xFF7E7E7E),
            size: 15,)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Starts at ₹ 777',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6318AF),
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 20), // Add spacing between the two containers
    Container(
      width: 180,
      height: 150,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 150,
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
          ),
          Positioned(
            right: 90,
            top:20,
            child: Image.asset('assets/yuk.png'),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Default Menu 2',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 90,
            child: Text(
              '3 starters ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 90,
            child: Text(
              '3 maincourse ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 90,
            child: Text(
              '3 desserts ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 85,
            left: 90,
            child: Text(
              '3 drinks   ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 25,
            child: Text(
              'Min 800',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF7E7E7E),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 8,
            child: Icon(Icons.person,
            color: Color(0xFF7E7E7E),
            size: 15,)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Starts at ₹ 777',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6318AF),
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 20),
    Container(
      width: 180,
      height: 150,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          Positioned(
            right: 90,
            top:20,
            child: Image.asset('assets/yuk.png'),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Default Menu 2',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 90,
            child: Text(
              '3 starters ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 90,
            child: Text(
              '3 maincourse ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 90,
            child: Text(
              '3 desserts ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 85,
            left: 90,
            child: Text(
              '3 drinks   ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 25,
            child: Text(
              'Min 800',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF7E7E7E),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 8,
            child: Icon(Icons.person,
            color: Color(0xFF7E7E7E),
            size: 15,)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Starts at ₹ 777',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6318AF),
              ),
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 20,),
    Container(
      width: 180,
      height: 150,
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 150,
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
          ),
          Positioned(
            right: 90,
            top:20,
            child: Image.asset('assets/yuk.png'),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Default Menu 1',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 90,
            child: Text(
              '3 starters ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 90,
            child: Text(
              '3 maincourse ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 90,
            child: Text(
              '3 desserts ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            top: 85,
            left: 90,
            child: Text(
              '3 drinks   ',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF242424),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 25,
            child: Text(
              'Min 800',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF7E7E7E),
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 8,
            child: Icon(Icons.person,
            color: Color(0xFF7E7E7E),
            size: 15,)
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Starts at ₹ 777',
              style: TextStyle(
                fontFamily: 'lexend',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6318AF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ... Add more containers wrapped with Stack here
                  ],
                ),
              );
  }
  
}
