import 'package:contera_pp/styles/colors.dart';
import 'package:contera_pp/styles/texts.dart';
import 'package:contera_pp/widgets/buttons/outlined_fullwidth.dart';
import 'package:contera_pp/widgets/leading_icon.dart';
import 'package:flutter/material.dart';

class PickLevelPage extends StatefulWidget {
  const PickLevelPage({Key? key}) : super(key: key);

  @override
  State<PickLevelPage> createState() => _PickLevelPageState();
}

enum StringLevelUser { junior, fresher, senior }

class _PickLevelPageState extends State<PickLevelPage> {
  StringLevelUser _levelUser = StringLevelUser.fresher;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: AppStyles.h3.copyWith(
                    color: AppColors.textDarkColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
                          decoration: BoxDecoration(
                              color: AppColors.lightColor,
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(13))),
                          child: ListTile(
                            title: const Text('Fresher'),
                            leading: Radio<StringLevelUser>(
                              value: StringLevelUser.fresher,
                              groupValue: _levelUser,
                              onChanged: (StringLevelUser? value) {
                                setState(() {
                                  _levelUser = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          title: const Text('Junior'),
                          leading: Radio<StringLevelUser>(
                            overlayColor:
                                MaterialStateProperty.all(AppColors.lightColor),
                            value: StringLevelUser.junior,
                            groupValue: _levelUser,
                            onChanged: (StringLevelUser? value) {
                              setState(() {
                                _levelUser = value!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: const Text('Senior'),
                          leading: Radio<StringLevelUser>(
                            value: StringLevelUser.senior,
                            groupValue: _levelUser,
                            onChanged: (StringLevelUser? value) {
                              setState(() {
                                _levelUser = value!;
                              });
                            },
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
                          callbackOnpress: () {},
                        )
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
