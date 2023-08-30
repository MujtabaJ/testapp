import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: 36, //getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: 265, //getProportionateScreenHeight(265),
          width: 235, //getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
