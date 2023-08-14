import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/ob15.dart';
import 'package:my_app/screens/ob4.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Ob11 extends StatefulWidget {
  late final String verificationId;

  Ob11({required this.verificationId});

  @override
  _Ob11State createState() => _Ob11State();
}

class _Ob11State extends State<Ob11> {
  final TextEditingController _otpController = TextEditingController();
  bool _otpVerified = true;
  bool otpSent = true;

  // void _changeText() {
  //   setState(() {
  //     otpSent = false;
  //   });

  //   Future.delayed(Duration(seconds: 2), () {
  //     setState(() {
  //       otpSent = true;
  //     });
  //   });
  // }
  
   void _verifyOTP() async {
  String enteredOTP = _otpController.text.trim();
  print('Entered OTP: $enteredOTP');
  print('Verification ID: ${widget.verificationId}');

  // Create a PhoneAuthCredential using the verification ID and the entered OTP
  PhoneAuthCredential credential = PhoneAuthProvider.credential(
    verificationId: widget.verificationId,
    smsCode: enteredOTP,
  );

  try {
    // Sign in with the credential
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print("OTP Verification Successful: ${userCredential.user?.phoneNumber}");
    setState(() {
      _otpVerified = true;
    });

    // Navigate to the Ob4 page after successful OTP verification
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ob4(), // Replace Ob4 with the actual Ob4 widget
      ),
    );
  } catch (e) {
    print("OTP Verification Failed: $e");
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('OTP Verification Failed'),
          content: Text('Please enter the correct OTP.'),
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
}


  void _resendOTP() async {
    String phoneNumber = '+91'; // Replace with the appropriate country code and phone number
    PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential credential) async {
      // This callback will be triggered when the auto-verification process has completed.
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print("Auto Verification Completed: ${userCredential.user?.phoneNumber}");
    };

    PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException e) {
      print("Auto Verification Failed: ${e.message}");
      // Handle verification failure, such as showing an error message to the user.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Auto Verification Failed'),
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
    };

    PhoneCodeSent codeSent = (String verificationId, int? resendToken) {
      // Store the verificationId somewhere or use it to show the OTP screen.
      // You can navigate to the OTP screen and pass verificationId to verify the OTP.
      print("Code Sent: $verificationId");
      String sixDigitOTP = verificationId.substring(0, 6);
      setState(() {
        // _otpResent = true;
        widget.verificationId = verificationId;
      });
    };

    PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      // Called when the automatic code retrieval has timed out with no success.
      print("Auto Retrieval Timeout: $verificationId");
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
  width: 72,
  height: 72,
  textStyle: TextStyle(fontSize: 18.sp, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Color.fromRGBO(234, 239, 243, 1),
  ),
);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Color(0xFFF7F6F0),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'OTP Verification',
          style: TextStyle(
            fontFamily: 'lexend',
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
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
      body: GestureDetector(
        onTap: () {
          // Request focus on a hidden text field to show the keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Color(0xFFF7F6F0),
          child: Stack(
            children: [
              Positioned(
                top: 4.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    otpSent
                        ? 'We have sent a verification code to'
                        : 'OTP ReSent- pls check',
                    style: TextStyle(
                      fontFamily: 'lexend',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF545454),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 9.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '+91-XXXXXX6794',
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF010F07),
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Image.asset(
                        'assets/tick.jpg',
                        width: 4.w,
                        height: 3.h,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 16.h,
                left: 0,
                right: 0,
                child:Pinput(
                  length: 6,
                     controller: _otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                onCompleted: (pin) => _verifyOTP(),
                  )
              ),
              Positioned(
                top: 25.h,
                left: 0,
                right: 0,
                child: TextButton(
                  onPressed: _verifyOTP,

                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 80.w,
                    height: 4.5.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF6318AF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'lexend',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30.h,
                left: 30,
                right: 0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(17.5, 0, 16.5, 0),
                  // width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Text(
                          otpSent
                              ? 'Didn’t receive code?'
                              : 'OTP Sent Successfully',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            letterSpacing: 0.5,
                            color: Color(0xFF010F07),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // _changeText();
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          otpSent ? 'Resend Again.' : '',
                          style: TextStyle(
                            fontFamily: 'lexend',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            letterSpacing: 0.5,
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
      ),
    );
  }
}