import 'package:mci/styles/texts.dart';
import 'package:flutter/material.dart';

class GetOutLineButon extends StatelessWidget {
  final String? name;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? marginVertical;
  final VoidCallback callbackOnpress;
  const GetOutLineButon(
      {Key? key,
      this.name,
      this.textColor,
      this.fontWeight,
      this.marginVertical,
      this.backgroundColor,
      this.fontSize,
      required this.callbackOnpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginVertical,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            minimumSize: const Size.fromHeight(40),
            padding: const EdgeInsets.symmetric(vertical: 16)),
        onPressed: () => callbackOnpress(),
        child: Text(
          name ?? "OutlineButton",
          style: AppStyles.h3.copyWith(
              color: textColor, fontWeight: fontWeight, fontSize: fontSize),
        ),
      ),
    );
  }
}
