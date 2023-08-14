import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_app/utils/mainourse.dart';
import 'package:my_app/utils/menuwidget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/difffood.dart';
import '../utils/offers.dart';
import '../utils/starters.dart';
import '../utils/working.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
} 

class _HomeState extends State<Home> {
  String userName = '';
  Widget currentscreen =Home();
  int currenttab =0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      'Hi, Monica!',
                      style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6318AF),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current Location',
                      style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF7B7B7B),
                      ),
                    ),
                    // SizedBox(width: 220),
                    GestureDetector(
                      onTap: () {
                        // Handle the tap event for the play image here
                        print("Play button tapped!");
                      },
                      child: Image.asset(
                        'assets/play.jpg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Icon(
                            Icons.place,
                            color: Color(0xFF6318AF),
                          ),

                        ),
                        SizedBox(width: 1.h),
                        Text(
                          'Hyderabad',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: 180),
                    Text(
                      'How it works?',
                      style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 1.w,),
                      Container(
                        alignment: Alignment.topLeft,
                      width: 80.w, // Adjust this according to your needs
                      height: 15.h, // Adjust this according to your needs
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/thali.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child:Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        
                        children: [
                          // SizedBox(width: 10.w,),
                           Container(
                            padding: EdgeInsets.only(left: 2.w),
                        width: 35.w,
                        // height: 1.h,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                        ),
                        
                         child: Text(
                              'Enjoy your first order, the taste of our delicious food!',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                      ),
                      SizedBox(height: 1.5.h,),
                      Container(
                        width: 20.w,
                        decoration: BoxDecoration(

                        ),
                        child: DottedBorder(
                          color: Color(0xFFF7E5B7),

                          child: Container(
                            alignment: Alignment.center,
                          width: 20.w,
                          height: 3.5.h,
                          child: Text('FIRSTPLATE01',
                          style: TextStyle(
                            fontFamily: 'lexend',
                             fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF7E5B7),

                          ),
                          ),
                        )),
                      )
                        ],
                      )
                    ),
                      SizedBox(width: 10),
                      Container(
                        alignment: Alignment.topLeft,
                width: 70.w,
                height: 15.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/sambosa.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  // mainAxisAlignment:MainAxisAlignment ,
                  children: [
                    Container(
                      
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 2.w,top: 1.w),
                      // margin: EdgeInsets.only(left: -10, right: 0),
                      decoration: BoxDecoration(
                        // color: Colors.red
                      ),
                      width: 40.w,
                      child: Text(
                        'Delicious Food',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.w,),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 2.w,top: 1.w),
                      // margin: EdgeInsets.only(left: 20),
                      width: 40.w,
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: Text(
                        'for happy life',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.w,),
                    Container(
                      padding: EdgeInsets.only(left: 2.w), 
                      width: 40.w,
                      alignment: Alignment.centerLeft,
                      child: DottedBorder(
                        color: Color(0xFFF7E5B7),
                        strokeWidth: 1,
                        child: Container(
                          // padding: EdgeInsets.only(left: ),
                          alignment: Alignment.center ,
                          width: 20.w,
                          height: 3.5.h,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'FIRSTPLATE01',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF7E5B7),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                    ],
                  ),
                ),
                SizedBox(height: 4.h), // Add space between the horizontal scroll and the search bar
                searchbar(),
                SizedBox(height: 4.h),
                Text(
                  'Start Crafting',
                  style: TextStyle(
                    fontFamily: 'lexend',
                    fontSize: 21.sp,
                    color: Color(0xFF6318AF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Container(
                      width: 45.w,
                      height: 20.h,
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
                              'assets/platter.png',
                              width: 45.w,
                              height: 13.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 2.w),
                          Text(
                            'Default Platters',
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
                      width: 45.w,
                      height: 20.h,
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
                              'assets/soup.png',
                              width: 45.w,
                              height: 13.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 2.w),
                          Text(
                            'Craft Your Own ',
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
                SizedBox(height: 3.h,),
               MenuWidget(),
                SizedBox(height: 2.h,),
                Text('Top Categories',
                style: TextStyle(
                  fontFamily: 'lexend',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),),
                SizedBox(height: 2.h,),
                difffood(),
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Starters',
                    style: TextStyle(
                      fontFamily: 'lexend',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'More Starters',
                          style: TextStyle(fontSize: 15.sp, color: Color(0xFF6318AF),fontFamily: 'lexend',),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 2.h,),
                starters(),
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Main Course',
                    style: TextStyle(
                      fontFamily: 'lexend',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp,
                    ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          'More Main Course',
                          style: TextStyle(fontSize: 15.sp, color: Color(0xFF6318AF),fontFamily: 'lexend',),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 2.h,),
                maincourse(),
                SizedBox(height: 3.h,),
                Text('Services',
                style: TextStyle(
                  fontFamily: 'lexend',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(height: 2.h,),
                offers(),
                SizedBox(height: 3.h,),
                Text('How does it work ?',
                style: TextStyle(
                  fontFamily: 'lexend', 
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(height: 2.h,),
                working(),
                SizedBox(height: 3.h,),
                Container(
                  // width: 50.w,
                  child: Text('Delicious food with professional service !',
                  style: TextStyle(
                  fontFamily: 'lexend',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF242424),
                ),
                  ),
                ),
                SizedBox(height: 4.h,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/Logonav.png'),
        onPressed: (){},),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 8.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[ 
              Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: 20,),
                  MaterialButton(
                    minWidth: 20.w, 
                    onPressed: () {
                      setState(() {
                        currentscreen=Home();
                        currenttab=0;
                      });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,
                      color:currenttab ==0? Color(0xFF6318AF):Colors.grey
                      ,size: 25.sp,
                      ),
                      Text('Home',
                       style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color:currenttab ==0? Color(0xFF6318AF):Colors.grey
                      ),
                      )
                    ],
                  ),
                  ),
                  MaterialButton(
                    minWidth: 20.w, 
                    onPressed: () {
                      setState(() {
                        // currentscreen=Home();
                        currenttab=1;
                      });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_border,size: 25.sp,
                      color:currenttab ==1? Color(0xFF6318AF):Colors.grey
                      ),
                      Text('Wishlist',
                       style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color:currenttab ==1? Color(0xFF6318AF):Colors.grey
                      ),
                      )
                    ],
                  ),
                  ),
                  
                ],
              ),
              Row( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: 10,),
                  MaterialButton(
                    minWidth: 20.w, 
                    onPressed: () {
                      setState(() {
                        currentscreen=Home();
                        currenttab=2;
                      });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dining_outlined,
                      color:currenttab ==2? Color(0xFF6318AF):Colors.grey
                      ,size: 25.sp,
                      
                      ),
                      Text('Orders',
                       style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color:currenttab ==2? Color(0xFF6318AF):Colors.grey
                      ),
                      )
                    ],
                  ),
                  ),
                  MaterialButton(
                    minWidth: 20.w, 
                    onPressed: () {
                      setState(() {
                        // currentscreen=Home();
                        currenttab=3;
                      });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_pin,size: 25.sp,
                      color:currenttab ==3? Color(0xFF6318AF):Colors.grey
                      ),
                      Text('Profile',
                       style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color:currenttab ==3? Color(0xFF6318AF):Colors.grey
                      ),
                      )
                    ],
                  ),
                  ),
                  
                ],
              )
              
            ],
          ),
        ),
        ),
    );
  }

  Container searchbar() {
    return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
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
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search food or events',
                          hintStyle: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            // color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Color(0xFF6318AF)),
                  ],
                ),
              );
  }

 
}