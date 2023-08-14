import 'package:flutter/material.dart';
import 'package:my_app/screens/ob11.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/screens/verify.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Ob15 extends StatefulWidget {
  const Ob15({super.key});

  @override
  State<Ob15> createState() => _Ob15State();
}

class _Ob15State extends State<Ob15> {
  final TextEditingController _phoneNumberController = TextEditingController();
  bool _isPhoneNumberVerified = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 340,
                        decoration: BoxDecoration(
                          color: Color(0xFF6318AF),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(80),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 340,
                        decoration: BoxDecoration(
                          color: Color(0xFF6318AF),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                            bottomLeft: Radius.circular(80),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/Logo1.png',
                                  // width: 90,
                                  // height: 95,
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'CraftMyPlate ',
                                style: TextStyle(
                                  fontFamily: 'lexend',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: 340,
                        decoration: BoxDecoration(
                          color: Color(0xFF6318AF),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 380,
                    left: 0,
                    right: 0,
                    child: Center( // Center the Login or Signup text
                      child: Text(
                        'Login or Signup',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          color: Color(0xFF787878),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 440,
                    left: 0,
                    right: 0,
                    child: Center( // Center the phone number container
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              '+91',
                              style: TextStyle(
                                fontFamily: 'lexend',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                        child: TextField(
                          controller: _phoneNumberController, // Connect the controller to TextField
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Phone Number',
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 515,
                    left: 0,
                    right: 0,
                    child: Center( // Center the Continue button
                      child: Material(
                        color: Color(0xFF6318AF),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () => _handlePhoneAuth(context),
                          // onTap: () =>  Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (context) => _handlePhoneAuth(context), 
                          //       ),
                          //     ),

                          child: Container(
                            width: 350,
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Continue',
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
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 70,
                    right: 70,
                    child: Column(
                      children: [
                        Text(
                          'By continuing, you agree to our',
                          style: TextStyle(
                            color: Color(0xFF7B7B7B),
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Service ',
                              style: TextStyle(
                                color: Color(0xFF7B7B7B),
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            Text(
                              ' Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF7B7B7B),
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
            top: 570,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account? ',
                    style: TextStyle(
                      fontFamily: 'lexend',
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF7B7B7B),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle the action when the user taps on "Sign in to your account"
                      // For example, navigate to the SignIn page
                      // Replace SignInPage with the actual page where you handle sign-in
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => verifypage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign in to your account',
                      style: TextStyle(
                        fontFamily: 'lexend',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        color: Color(0xFF6318AF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    ); 
  }
  Future<void> _handlePhoneAuth(BuildContext context) async {
    String phoneNumber = _phoneNumberController.text.trim();

    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91$phoneNumber',
        verificationCompleted: (PhoneAuthCredential credential) async {
          UserCredential userCredential =
              await FirebaseAuth.instance.signInWithCredential(credential);
          print("Verification Completed: ${userCredential.user?.phoneNumber}");
          setState(() {
            _isPhoneNumberVerified = true;
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print("Verification Failed: ${e.message}");
          // Handle verification failure, such as showing an error message to the user.
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Verification Failed'),
                content: Text(e.message ?? 'An error occurred during verification.'),
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
        },
        codeSent: (String verificationId, int? resendToken) {
          // Store the verificationId somewhere or use it to show the OTP screen.
          // You can navigate to the OTP screen and pass verificationId to verify the OTP.
          print("Code Sent: $verificationId");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Ob11(verificationId: verificationId),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Called when the automatic code retrieval has timed out with no success.
          print("Auto Retrieval Timeout: $verificationId");
        },
      );
    } catch (e) {
      print("Error during phone authentication: $e");
      // Handle other errors related to phone authentication, if any.
    }
  }
}