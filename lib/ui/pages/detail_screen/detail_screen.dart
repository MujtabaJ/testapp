import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testapp/config/size_config.dart';

import 'components/color_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int selectedImage = 0;
  String selectedColor = "red";
  bool favourite = false;
  Map<String, Color> colorsList = {
    'red': Colors.red,
    'green': Colors.green,
    'orange': Colors.orange,
    'blue': Colors.blue
  };
  void setImage(int index) {
    setState(() {
      selectedImage = index;
    });
  }

  void setColor(String item) {
    setState(() {
      selectedColor = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
          //   SafeArea(
          // child:
          Stack(
        children: [
          Image(
            image: AssetImage("assets/images/${selectedImage + 1}.jpg"),
            width: double.infinity,
            height: height * 0.45,
            fit: BoxFit.fitHeight,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: CircleBorder(
                        eccentricity: 0,
                      ),
                      backgroundColor: Colors.white,
                      tooltip: "Back",
                      child: Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 25,
                    child: FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: Row(
                          children: [
                            Text(
                              "4.5",
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow[700],
                            )
                          ],
                        )),
                  )
                ]),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: (height * 0.45) - 110),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [0, 1, 2, 3, 4, 5].map((e) {
                return (Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  // padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/${e + 1}.jpg"),
                          fit: BoxFit.fill),
                      border: selectedImage == e
                          ? Border.all(
                              color: Colors.orange,
                              strokeAlign: BorderSide.strokeAlignInside,
                              width: 2)
                          : Border.all(
                              color: Colors.transparent,
                              // strokeAlign: BorderSide.strokeAlignOutside,
                              width: 0),
                      borderRadius: BorderRadius.circular(5)),
                  child: MaterialButton(
                    onPressed: () {
                      print("ee => $e");
                      setImage(e);
                    },
                    // child: Image(
                    //   image: AssetImage("assets/images/${e + 1}.jpg"),
                    //   fit: BoxFit.fill,
                    //   width: double.infinity,
                    // ),
                  ),
                ));
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: (height * 0.45) - 40),
            width: double.infinity,
            height: (height * 0.55) + 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wireless Controller for PS4",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // height: 40,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.pink[100],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    favourite = !favourite;
                                  });
                                },
                                icon: Icon(
                                  favourite
                                      ? Icons.favorite_rounded
                                      : Icons.favorite_outline_rounded,
                                  color: favourite ? Colors.red : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Wireless controller for PS4 give you what you want in gaming from over precision control your game to sharing",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[600]),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "See More Detail ",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.orange[800]),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.orange[800],
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        padding: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ColorButton(
                                item: "red",
                                itemColor: colorsList['red']!,
                                selectedItem: selectedColor,
                                setSelectedItem: setColor),
                            ColorButton(
                                item: "green",
                                itemColor: colorsList['green']!,
                                selectedItem: selectedColor,
                                setSelectedItem: setColor),
                            ColorButton(
                                item: "orange",
                                itemColor: colorsList['orange']!,
                                selectedItem: selectedColor,
                                setSelectedItem: setColor),
                            ColorButton(
                                item: "blue",
                                itemColor: colorsList['blue']!,
                                selectedItem: selectedColor,
                                setSelectedItem: setColor),
                            Container(
                              width: 45,
                              height: 45,
                              margin: EdgeInsets.only(left: 30),
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.center,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  shape: CircleBorder(
                                    eccentricity: 0,
                                  ),
                                  backgroundColor: Colors.white,
                                  tooltip: "Minus",
                                  child: Center(
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(2),
                              alignment: Alignment.center,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  shape: CircleBorder(
                                    eccentricity: 0,
                                  ),
                                  backgroundColor: Colors.white,
                                  tooltip: "Plus",
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      // size: 25,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          height: 80,
                          margin: EdgeInsets.only(top: 80),
                          padding:
                              EdgeInsets.only(top: 20, left: 40, right: 40),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Container(
                            width: width * 0.8,
                            height: 60,
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.orange[800])),
                                onPressed: () {},
                                child: Text(
                                  "Add to Cart",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ))
                    ],
                  )
                ]),
          ),
        ],
      ),
      // )
    );
  }
}
