import 'package:mci/pages/HomePages/courses_page.dart';
import 'package:mci/pages/enterotp_page.dart';
import 'package:mci/pages/forgot_pass.dart';
import 'package:mci/pages/signin_page.dart';
import 'package:mci/pages/signup_page.dart';
import 'package:mci/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/start': (context) => const MyHomePage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/forgot-pass': (context) => const ForgotPass(),
        '/enter-otp': (context) => const EnterOtpPage(),
        '/courses': (context) => const CoursesPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
