import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ColorButton extends StatefulWidget {
  final String item;
  final Color itemColor;
  final String selectedItem;
  final Function setSelectedItem;

  const ColorButton(
      {super.key,
      required this.item,
      required this.itemColor,
      required this.selectedItem,
      required this.setSelectedItem});

  @override
  State<ColorButton> createState() => _ColorButtonState();
}

class _ColorButtonState extends State<ColorButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          // color: colorsList[item],
          color: Colors.transparent,
          border: widget.selectedItem == widget.item
              ? Border.all(
                  color: Colors.orange,
                  strokeAlign: BorderSide.strokeAlignInside,
                  width: 2)
              : Border.all(
                  color: Colors.transparent,
                  // strokeAlign: BorderSide.strokeAlignOutside,
                  width: 0),
          // borderRadius: BorderRadius.circular(5),
          shape: BoxShape.circle),
      child: Container(
        // width: 30,
        // height: 30,
        decoration:
            BoxDecoration(color: widget.itemColor, shape: BoxShape.circle),
        child: MaterialButton(
          onPressed: () {
            widget.setSelectedItem(widget.item);
          },
        ),
      ),
    );
  }
}
