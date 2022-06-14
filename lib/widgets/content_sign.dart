import 'package:contera_pp/styles/colors.dart';
import 'package:contera_pp/styles/texts.dart';
import 'package:flutter/cupertino.dart';

class BodySign extends StatelessWidget {
  final String title;
  final String des;
  const BodySign({Key? key, required this.title, required this.des})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(title,
              textAlign: TextAlign.left,
              style: AppStyles.h1.copyWith(
                  wordSpacing: 1.2,
                  height: 1.8,
                  color: AppColors.textDarkColor,
                  fontWeight: FontWeight.w700)),
        ),
        Text(des,
            textAlign: TextAlign.left,
            style: AppStyles.h4.copyWith(
                height: 1.4,
                color: AppColors.textGrey,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
