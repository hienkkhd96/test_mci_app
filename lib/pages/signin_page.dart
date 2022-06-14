import 'package:mci/styles/colors.dart';
import 'package:mci/styles/texts.dart';
import 'package:mci/widgets/appbar.dart';
import 'package:mci/widgets/content_sign.dart';
import 'package:mci/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isRemindPass = false;
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
              title: "Sign In",
              router: '/start',
            ),
            const BodySign(
                title: "Sign In",
                des:
                    "“Chào mừng bạn đến với hệ thống ERP của Học viện đào tạo lập trình MCI”"),
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
                child: InkWell(
                  child: Text(
                    'Forgot Password',
                    style:
                        AppStyles.h3.copyWith(color: AppColors.textGreyBlack),
                  ),
                  onTap: () {
                    Get.toNamed('/forgot-pass');
                  },
                ),
                onPressed: () {},
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
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primaryColor)),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: AppStyles.h2.copyWith(fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/sign-up');
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an account  ",
                        style: AppStyles.h3.copyWith(
                          color: AppColors.textDarkColor,
                        ),
                        children: [
                      TextSpan(
                        text: "Sign up >>",
                        style: AppStyles.h3.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
