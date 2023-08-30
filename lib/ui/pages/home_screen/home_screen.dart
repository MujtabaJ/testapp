import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/ui/pages/home_screen/components/category_button.dart';
import 'package:testapp/config/size_config.dart';
import 'dart:ui';
import 'components/bottom_navigation.dart';
import 'components/popular_cards.dart';
import 'components/search_bar.dart';
import 'components/special_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchText = "";
  List categoryItems = [
    {
      'text': "Flash Deal",
      'icon': "assets/icons/Flash Icon.svg",
      "padding": 13.00
    },
    {"text": "Bill", "icon": "assets/icons/Bill Icon.svg", "padding": 13.00},
    {"text": "Game", "icon": "assets/icons/Game Icon.svg", "padding": 10.00},
    {
      "text": "Daily Gift",
      "icon": "assets/icons/Gift Icon.svg",
      "padding": 12.00
    },
    {"text": "More", "icon": "assets/icons/Discover.svg", "padding": 8.00},
  ];
  List<String> _dataList = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Grapes",
    "Lemon",
    "Orange",
    "Peach",
    "Strawberry",
    "Watermelon",
  ];

  List<String> _filteredDataList = [];

  @override
  void initState() {
    _filteredDataList = _dataList;
    super.initState();
  }

  void _filterDataList(String searchText) {
    setState(() {
      _filteredDataList = _dataList
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Column(children: [
            SearchBar(),
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  color: Colors.deepPurple[900],
                  borderRadius: BorderRadius.circular(20)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categoryItems.map((item) {
                // print("sad $item");
                return CategoryButton(
                    iconPath: item['icon'],
                    padding: item['padding'],
                    text: item['text']); // Replace with your item data
                // return Text("A");
              }).toList(),
            ),
            SpecialCards(),
            PopularCards(),
            SpecialCards(),
            PopularCards()
          ]),
        ),
      ),
    ));
  }
}
