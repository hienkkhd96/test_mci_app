import 'package:flutter/material.dart';

class AddLeadingIcon extends StatelessWidget {
  const AddLeadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
      margin: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
              ))
        ],
      ),
    );
  }
}
