import 'package:flutter/material.dart';

import 'constants.dart';

class NormalButton extends StatelessWidget {
  final String? text;
  final Function? press;
  const NormalButton({Key? key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPurpleColor,
          ),
          onPressed: press as void Function()?,
          child: Text(text!,style: TextStyle(color: Colors.white),)),
    );
  }
}

class BorderButton extends StatelessWidget {
  final String? text;
  final Function? press;
  const BorderButton({Key? key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: kPurpleColor, width: 3),
            backgroundColor: Colors.white,
          ),
          onPressed: press as void Function()?,
          child: Text(text!,style: TextStyle(color: Colors.black),)),
    );
  }
}
