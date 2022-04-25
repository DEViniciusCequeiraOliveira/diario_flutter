import 'package:flutter/material.dart';
import 'package:login_flutter/screen/signUpPage.dart';
import 'screen/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(fontFamily: "MPLUSRounded1c"),
      home: loginPage()
    );
  }
}
