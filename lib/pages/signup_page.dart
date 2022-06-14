import 'package:contera_pp/pages/level_page.dart';
import 'package:contera_pp/styles/colors.dart';
import 'package:contera_pp/styles/texts.dart';
import 'package:contera_pp/widgets/appbar.dart';
import 'package:contera_pp/widgets/content_sign.dart';
import 'package:contera_pp/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
      child: ListView(
        children: [
          const MyAppBar(
            title: "Sign Up",
          ),
          const BodySign(
              title: "Create Account",
              des:
                  "“Chào mừng bạn đến với hệ thống ERP của Học viện đào tạo lập trình MCI”"),
          Padding(
            padding: const EdgeInsets.only(top: 34),
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormLogin(
                  name: "FullName",
                  placeHoder: "Enter your name",
                ),
                FormLogin(
                  name: "Email Address",
                  placeHoder: "Enter your email address",
                ),
                FormLogin(
                  name: "Password",
                  placeHoder: "Enter your password",
                ),
                FormLogin(
                  name: "Retype Password",
                  placeHoder: "Enter your retype password",
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 10)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primaryColor)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PickLevelPage()));
              },
              child: Text(
                'Create An Account',
                style: AppStyles.h2.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
              child: Text(
            'Or Sign Up with',
            style: AppStyles.h3.copyWith(
                color: AppColors.textNeutral, fontWeight: FontWeight.w500),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: AppColors.secondaryColor,
                  padding: const EdgeInsets.all(8.0),
                  shape: const CircleBorder(),
                  child: const FaIcon(
                    FontAwesomeIcons.google,
                    size: 26,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: AppColors.secondaryColor,
                  padding: const EdgeInsets.all(8.0),
                  shape: const CircleBorder(),
                  child: const FaIcon(
                    FontAwesomeIcons.apple,
                    size: 26,
                  ),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: AppColors.secondaryColor,
                  padding: const EdgeInsets.all(8.0),
                  shape: const CircleBorder(),
                  child: const FaIcon(
                    FontAwesomeIcons.facebookF,
                    size: 26,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
