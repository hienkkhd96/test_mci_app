import 'package:contera_pp/styles/icons.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/start.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.only(top: 22, bottom: 22, left: 5)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0))),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/start');
                    },
                    child: const Icon(AppIcons.arrowBack)),
                SizedBox(
                  width: size.width / 1.5,
                  child: const Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              
            )
          ],
        ),
      ),
    );
  }
}
