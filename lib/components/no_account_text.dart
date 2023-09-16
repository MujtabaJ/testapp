import 'package:flutter/material.dart';

import 'package:testapp/constants.dart';
import 'package:testapp/ui/pages/sign_up%20copy/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don’t have an account? ",
            style: TextStyle(fontSize: 16) //getProportionateScreenWidth(16)),
            ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 16, //getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
