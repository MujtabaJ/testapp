import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/config/size_config.dart';

import '../../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: SizeConfig.blockV! * 13,
            width: SizeConfig.blockH! * 13,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: SvgPicture.asset(svgSrc),
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: 8,
              right: -2,
              child: Container(
                height: SizeConfig.blockV! * 5,
                width: SizeConfig.blockH! * 5,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "$numOfitem",
                      style: TextStyle(
                        fontSize: 10,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
