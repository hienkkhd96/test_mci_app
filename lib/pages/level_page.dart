import 'package:mci/const/enum.dart';
import 'package:mci/controller/main_controler.dart';
import 'package:mci/pages/signup_success.dart';
import 'package:mci/styles/colors.dart';
import 'package:mci/styles/texts.dart';
import 'package:mci/widgets/buttons/outlined_fullwidth.dart';
import 'package:mci/widgets/leading_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickLevelPage extends StatefulWidget {
  const PickLevelPage({Key? key}) : super(key: key);

  @override
  State<PickLevelPage> createState() => _PickLevelPageState();
}

MainController mainState = Get.put(MainController());

class _PickLevelPageState extends State<PickLevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                child: Text(
                  'Skip',
                  style: AppStyles.h3.copyWith(
                    color: AppColors.textDarkColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const AddLeadingIcon()),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/start.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'BẠN ĐANG Ở LEVEL NÀO?',
              textAlign: TextAlign.center,
              style: AppStyles.h1.copyWith(
                  color: AppColors.textDarkColor, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: mainState.levelUser.value ==
                                      StringLevelUser.fresher
                                  ? AppColors.lightColor
                                  : null,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13))),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                mainState.setlevelUser(StringLevelUser.fresher);
                              });
                            },
                            title: Text(
                              'Fresher',
                              style: AppStyles.h3.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textDarkColor),
                            ),
                            leading: Radio<StringLevelUser>(
                              value: StringLevelUser.fresher,
                              groupValue: mainState.levelUser.value,
                              onChanged: (StringLevelUser? value) {
                                setState(() {
                                  mainState.setlevelUser(value!);
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: mainState.levelUser.value ==
                                      StringLevelUser.junior
                                  ? AppColors.lightColor
                                  : null,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13))),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                mainState.setlevelUser(StringLevelUser.junior);
                              });
                            },
                            title: Text('Junior',
                                style: AppStyles.h3.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.textDarkColor)),
                            leading: Radio<StringLevelUser>(
                              overlayColor: MaterialStateProperty.all(
                                  AppColors.lightColor),
                              value: StringLevelUser.junior,
                              groupValue: mainState.levelUser.value,
                              onChanged: (StringLevelUser? value) {
                                setState(() {
                                  mainState.setlevelUser(value!);
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: mainState.levelUser.value ==
                                      StringLevelUser.senior
                                  ? AppColors.lightColor
                                  : null,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13))),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                mainState.setlevelUser(StringLevelUser.senior);
                              });
                            },
                            title: Text(
                              'Senior',
                              style: AppStyles.h3.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textDarkColor),
                            ),
                            leading: Radio<StringLevelUser>(
                              value: StringLevelUser.senior,
                              groupValue: mainState.levelUser.value,
                              onChanged: (StringLevelUser? value) {
                                setState(() {
                                  mainState.setlevelUser(value!);
                                });
                              },
                            ),
                          ),
                        ),
                        GetOutLineButon(
                          marginVertical:
                              const EdgeInsets.symmetric(vertical: 34),
                          name: "Tiếp Tục",
                          backgroundColor: AppColors.primaryColor,
                          textColor: AppColors.lightColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          callbackOnpress: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SingupSuccess()),
                                (route) => false);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
