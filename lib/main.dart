import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/ss1.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer( // Use ResponsiveSizer.builder instead of ResponsiveSizer
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Online food ordering app',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => ss1(),
          },
        );
      },
    );
  }
}
