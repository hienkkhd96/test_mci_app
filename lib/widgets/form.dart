import 'package:mci/styles/colors.dart';
import 'package:mci/styles/texts.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  final String name;
  final String placeHoder;
  const FormLogin({Key? key, required this.name, required this.placeHoder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: AppStyles.h2.copyWith(
            color: AppColors.textDarkColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
              decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.lightColor,
            hintText: placeHoder,
            hintStyle: AppStyles.h5.copyWith(color: AppColors.textDarkColor),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                borderSide: BorderSide.none),
          )),
        )
      ],
    );
  }
}
