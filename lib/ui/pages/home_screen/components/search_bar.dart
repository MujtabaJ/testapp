import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.grey[350], borderRadius: BorderRadius.circular(15)),
          child: TextFormField(
            keyboardType: TextInputType.text,
            // style: TextStyle(height: 2),
            maxLines: 1,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIconConstraints: BoxConstraints(
                    maxWidth: 30, maxHeight: 30, minHeight: 30, minWidth: 30),
                prefixIcon:
                    // prefix:
                    Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SvgPicture.asset(
                    "assets/icons/Search Icon.svg",
                    // height: 20,
                    // width: 20,
                    fit: BoxFit.contain,
                  ),
                )),
          ),
        ),
        Container(
          // padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: Colors.grey[350], shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Cart Icon.svg",
              color: Colors.black,
            ),
          ),
        ),
        Container(
          // padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 20),
          decoration:
              BoxDecoration(color: Colors.grey[350], shape: BoxShape.circle),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Bell.svg",
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
