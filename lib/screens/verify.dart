import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';
// import 'package:my_app/screens/ob11.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class verifypage extends StatelessWidget {
  const verifypage({Key? key});
  Future<void> _verifyUser(BuildContext context, String email, String password) async {
    try {
      // Query for the user document with the provided email
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance.collection('users').where('email', isEqualTo: email).get();

      if (querySnapshot.size == 1) {
        // User document found, check the password
        var userDoc = querySnapshot.docs[0];
        var storedPassword = userDoc['password']; // Replace 'password' with the actual field name in Firestore

        if (password == storedPassword) {
          // Email and password match, navigate to the Home screen or any other screen you want
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else {
          // Password doesn't match, show an error message
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Invalid Credentials'),
                content: Text('The email or password you entered is incorrect.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        // User document not found, show an error message
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Invalid Email'),
              content: Text('The email you entered is not registered.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error verifying user: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Ob15(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.white, 
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          
              Row(
                children: [
                  SizedBox(width: 2.w,height: 5.w,),
                  Text(
                    'Sign in to your exsisting account!',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'lexend',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF030303),
                    ),
                  ),
                ],
              ),  
           Column(
                children: [
                  SizedBox(height: 3.h,),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.2), width: 2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email id*',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.2), width: 2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField( 
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Pass*',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
             Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Aligns items at the bottom within this column
                children: [
                  // SizedBox(height: 10.w,),
                  Material(
                    
                    color: Color(0xFF6318AF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        String email = _emailController.text.trim();
                        String password = _passwordController.text.trim();

                        // Verify the user based on the provided email and password
                        _verifyUser(context, email, password);
                      },
                      child: Container(
                        width: 350,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lets Start',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
