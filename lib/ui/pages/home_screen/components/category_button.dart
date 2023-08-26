import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryButton extends StatefulWidget {
  final String iconPath;
  final String text;
  final double padding;

  const CategoryButton(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.padding});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 40,
              height: 40,
              padding: EdgeInsets.all(widget.padding),
              margin: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(5)),
              child: SvgPicture.asset(
                widget.iconPath,
                color: Colors.white,
              )
              // Icon(
              //   Icons.flash_on_sharp,
              //   color: Colors.white,
              // )
              ),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
