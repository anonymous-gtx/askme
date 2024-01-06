
import 'package:askme/home_page.dart';
import 'package:askme/pallete.dart' as appPallete;
import 'package:flutter/material.dart';
import 'package:askme/login_page.dart';
import 'package:askme/signup_page.dart' as SignupPage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ask Me',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: appPallete.Pallete.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: appPallete.Pallete.whiteColor,
        ),
      ),
      initialRoute: '/', // Set initial route to the login page
      routes: {
        '/': (context) => LoginPage(), // Login Page
        '/signup': (context) => SignupPage.SignupPage(), // Signup Page
        '/home': (context) => HomePage(), // Home Page
      },
    );
  }
}
