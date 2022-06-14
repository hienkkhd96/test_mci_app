import 'package:mci/styles/colors.dart';
import 'package:mci/styles/icons.dart';
import 'package:mci/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget {
  final String? title;
  final String? router;
  const MyAppBar({Key? key, this.title, this.router}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        OutlinedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.only(top: 22, bottom: 22, left: 5)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0))),
            ),
            onPressed: () {
              widget.router == null
                  ? Navigator.pop(context)
                  : Get.toNamed(widget.router!);
            },
            child: const Icon(AppIcons.arrowBack)),
        SizedBox(
          width: size.width / 1.6,
          child: Text(
            widget.title ?? "",
            textAlign: TextAlign.center,
            style: AppStyles.h2.copyWith(
                color: AppColors.textDarkColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
