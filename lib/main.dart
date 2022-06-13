import 'package:contera_pp/pages/signin_page.dart';
import 'package:contera_pp/pages/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/start': (context) => const MyHomePage(
              title: "dinhhien",
            ),
        '/sign-in': (context) => const SignInPage(
              title: "Sign In",
            ),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DinhHien App'),
    );
  }
}
