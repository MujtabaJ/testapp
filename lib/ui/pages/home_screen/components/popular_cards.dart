import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PopularCards extends StatefulWidget {
  const PopularCards({super.key});

  @override
  State<PopularCards> createState() => _PopularCardsState();
}

class _PopularCardsState extends State<PopularCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Popular Products",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "See More",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset(
              //   "assets/images/image1.png",
              //   width: 150,
              //   height: 80,
              // )
              Container(
                width: 200,
                height: 150,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.orange,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/3.jpg"))),
                child: MaterialButton(onPressed: () {
                  Navigator.pushNamed(context, "/detail");
                }),
              ),
              Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.orange,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/5.jpg"))),
              ),
              Container(
                width: 200,
                height: 150,
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.orange,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/6.jpg"))),
              ),
            ],
          ),
        )
      ],
    );
  }
}
