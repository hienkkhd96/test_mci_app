import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
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
            child: Column(
          children: [
            Image.asset(
              'assets/images/logo_mci_1.png',
              width: 300,
              height: 500,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                primary: Colors.red[400], // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () => {Navigator.pushNamed(context, '/sign-in')},
              child: const Text(
                'BẮT ĐẦU',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
