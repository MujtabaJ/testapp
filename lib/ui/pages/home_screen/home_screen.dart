import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/ui/pages/home_screen/components/category_button.dart';
import 'package:testapp/config/size_config.dart';

import 'components/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     actionsIconTheme: IconThemeData(
      //         color: Colors.black,
      //         opacity: double.parse("1"),
      //         size: double.parse("20")),
      //     actions: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.shopping_cart_outlined),
      //         // style: ButtonStyle(
      //         //   iconColor: MaterialStatePropertyAll(Colors.black),
      //         //   backgroundColor: MaterialStatePropertyAll(Colors.grey),
      //         //   // padding: MaterialStatePropertyAll(EdgeInsets.all(1))
      //         // )
      //       ),
      //       IconButton(
      //           onPressed: () {},
      //           icon: SvgPicture.asset("assets/icons/Bell.svg")),
      //     ]),
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // prefixIconConstraints: BoxConstraints(
                        //     maxWidth: 20,
                        //     maxHeight: 20,
                        //     minHeight: 20,
                        //     minWidth: 20),
                        // prefixIcon: ,
                        prefix: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          child: SvgPicture.asset(
                            "assets/icons/Search Icon.svg",
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain,
                          ),
                        )),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                  // style: ButtonStyle(
                  //   iconColor: MaterialStatePropertyAll(Colors.black),
                  //   backgroundColor: MaterialStatePropertyAll(Colors.grey),
                  //   // padding: MaterialStatePropertyAll(EdgeInsets.all(1))
                  // )
                ),
                IconButton(
                    onPressed: () {},
                    // style: ButtonStyle(
                    //     shape: MaterialStatePropertyAll(CircleBorder(
                    //         eccentricity: 1,
                    //         side: BorderSide(color: Colors.red))),
                    //     padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                    //     backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                    icon: SvgPicture.asset("assets/icons/Bell.svg")),
              ],
            ),
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("A summer surprise",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text("Cashback 20%",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ]),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryButton(
                  iconPath: "assets/icons/Flash Icon.svg",
                  text: "Flash Deal",
                  padding: 10,
                ),
                CategoryButton(
                  iconPath: "assets/icons/Bill Icon.svg",
                  text: "Bill",
                  padding: 10,
                ),
                CategoryButton(
                  iconPath: "assets/icons/Game Icon.svg",
                  text: "Game",
                  padding: 7,
                ),
                CategoryButton(
                  iconPath: "assets/icons/GIft Icon.svg",
                  text: "Daily Gift",
                  padding: 8,
                ),
                CategoryButton(
                  iconPath: "assets/icons/Discover.svg",
                  text: "More",
                  padding: 5,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Special for you",
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
                    width: 180,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Smartphones",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "18 brands",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 180,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
