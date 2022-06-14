import 'package:mci/styles/texts.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/start.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: ListView(
          children: [
            Image.asset(
              'assets/images/logo_mci_1.png',
              height: 500,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 100, left: 100, right: 100),
              child: SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    primary: Colors.red[400], // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () => {Navigator.pushNamed(context, '/sign-in')},
                  child: Text(
                    'ĐĂNG NHẬP',
                    style: AppStyles.h1.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
