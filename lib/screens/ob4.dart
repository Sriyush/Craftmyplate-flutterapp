import 'package:flutter/material.dart';
import 'package:my_app/screens/home.dart';
// import 'package:my_app/screens/ob11.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class ob4 extends StatelessWidget {
  const ob4({Key? key});
  Future<void> _saveUserData(String fullName, String email, String password) async {
    try {
      // Reference to the 'users' collection in Firestore
      CollectionReference users = FirebaseFirestore.instance.collection('users');

      // Create a new document with an auto-generated ID
      await users.add({
        'fullName': fullName,
        'email': email,
        'password': password,
        // Add other fields as needed
      });

      print('User data saved successfully!');
    } catch (e) {
      print('Error saving user data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _fullNameController = TextEditingController();
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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Ob11(),
            //   ),
            // );
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
          children: [
            Row(
             children: [
               Column(
                children: [
                  SizedBox(width: 3.w,height: 5.w,),
                  Text(
                    'Just a step away!',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontFamily: 'lexend',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF030303),
                    ),
                  ),
                ],
              ),
             ],
            ),
            Column(
              children: [
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
                            controller: _fullNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Full name*',
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
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email ID*',
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
                              hintText: 'Set Password*',
                              contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ],
            ),
            SizedBox(height: 3.h,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Material(
                    
                    color: Color(0xFF6318AF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: () {
              String fullName = _fullNameController.text.trim();
              String email = _emailController.text.trim();
              String password = _passwordController.text.trim();

              // Validate the data (you can add more validation as needed)
              if (fullName.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
                // Save user data to Firestore
                _saveUserData(fullName, email, password);

                // Navigate to the Home screen or any other screen you want after data is saved
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              } else {
                // Show a warning or error message if any of the fields are empty
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Incomplete Data'),
                      content: Text('Please fill in all the required fields.'),
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
          ],
        ),
      ),
    );
  }
}
