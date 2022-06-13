import 'package:contera_pp/styles/colors.dart';
import 'package:contera_pp/styles/texts.dart';
import 'package:contera_pp/widgets/appbar.dart';
import 'package:contera_pp/widgets/form.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isRemindPass = false;
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: ListView(
          children: [
            const MyAppBar(
              title: "Sign In",
              router: '/start',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text("LOG IN 👋",
                  textAlign: TextAlign.left,
                  style: AppStyles.h1.copyWith(
                      wordSpacing: 1.2,
                      height: 1.8,
                      color: AppColors.textDarkColor,
                      fontWeight: FontWeight.w700)),
            ),
            Text(
                '“Chào mừng bạn đến với hệ thống ERP của Học viện đào tạo lập trình MCI”',
                textAlign: TextAlign.left,
                style: AppStyles.h3.copyWith(
                    height: 1.4,
                    color: AppColors.textDarkColor,
                    fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  FormLogin(
                    name: "UserName",
                    placeHoder: "Enter your email address",
                  ),
                  FormLogin(
                    name: "Password",
                    placeHoder: "Enter your password",
                  )
                ],
              )),
            ),
            CheckboxListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -10),
              value: _isRemindPass,
              controlAffinity: ListTileControlAffinity.leading,
              secondary: TextButton(
                child: Text(
                  'Forgot Password',
                  style: AppStyles.h3.copyWith(color: AppColors.textGreyBlack),
                ),
                onPressed: () {
                  print(_isRemindPass);
                },
              ),
              checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              title: Text(
                "Remember Me",
                style: AppStyles.h3.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.textDarkColor),
              ),
              onChanged: (value) {
                setState(() {
                  _isRemindPass = !_isRemindPass;
                });
              },
            ),
            ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primaryColor)),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: AppStyles.h2.copyWith(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
