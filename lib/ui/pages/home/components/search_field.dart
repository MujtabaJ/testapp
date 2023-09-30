import 'package:flutter/material.dart';
import '../../../../config/size_config.dart';
import '../../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        width: SizeConfig.blockH! * 60,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: kTextColor,
              ),
              SizedBox(
                  width:
                      10), // Adjust the spacing between the icon and text as needed
              Expanded(
                child: TextField(
                  onChanged: (value) => print(value),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search product",
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
