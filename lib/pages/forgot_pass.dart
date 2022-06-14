import 'package:contera_pp/pages/enterotp_page.dart';
import 'package:contera_pp/styles/colors.dart';
import 'package:contera_pp/styles/texts.dart';
import 'package:contera_pp/widgets/appbar.dart';
import 'package:contera_pp/widgets/content_sign.dart';
import 'package:contera_pp/widgets/form.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const String desForgot =
        "Forgotten your password? Enter your e-mail address below, and we'll send you an e-mail allowing you to reset it.";
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
              title: "Forgot Password",
            ),
            const BodySign(
                title: "Password Reset",
                des:
                    "“Chào mừng bạn đến với hệ thống ERP của Họcviện đào tạo lập trình MCI”"),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: Text(desForgot,
                  style: AppStyles.h4.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: AppColors.textDarkColor,
                  )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 35, bottom: 20),
                child: const FormLogin(
                    name: "E-mail", placeHoder: "E-mail address")),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primaryColor)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const EnterOtpPage()),
                      (route) => false);
                },
                child: Text(
                  'Reset My Password',
                  style: AppStyles.h2.copyWith(fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                'Please contact us if you have any trouble resetting your password.',
                style: AppStyles.h4.copyWith(
                    color: AppColors.textDarkColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
