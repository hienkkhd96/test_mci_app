// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:mci/styles/colors.dart';
import 'package:mci/styles/texts.dart';
import 'package:mci/widgets/otp_input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterOtpPage extends StatelessWidget {
  const EnterOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _fieldOne = TextEditingController();
    final TextEditingController _fieldTwo = TextEditingController();
    final TextEditingController _fieldThree = TextEditingController();
    final TextEditingController _fieldFour = TextEditingController();
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/start.png"),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text('Enter OTP',
                    style: AppStyles.h1.copyWith(
                        fontSize: 28,
                        color: AppColors.textDarkColor,
                        fontWeight: FontWeight.w600)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                    'We have just sent you 4 digit code via your email email@gmail.com',
                    textAlign: TextAlign.center,
                    style: AppStyles.h4.copyWith(
                      color: AppColors.textGrey,
                    )),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OtpInput(_fieldOne, true),
                OtpInput(_fieldTwo, false),
                OtpInput(_fieldThree, false),
                OtpInput(_fieldFour, false),
              ]),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
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
                          MaterialPageRoute(
                              builder: (_) => const EnterOtpPage()),
                          (route) => false);
                    },
                    child: Text(
                      'Continue',
                      style: AppStyles.h2.copyWith(fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: RichText(
                    text: TextSpan(
                        text: 'Didn’t receive code?',
                        style: AppStyles.h3
                            .copyWith(color: AppColors.textLightColor),
                        children: [
                      TextSpan(
                        text: "Resend Code",
                        style: AppStyles.h3.copyWith(
                            color: AppColors.textDarkColor,
                            fontWeight: FontWeight.w600),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Resended Code');
                          },
                      ),
                    ])),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
