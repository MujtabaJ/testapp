import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            color: Colors.pink,
          ),
          icon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            color: Colors.grey,
          ),
          label: '.',
          // backgroundColor: Color.fromRGBO(17, 21, 30, 1)
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/icons/Heart Icon.svg",
            color: Colors.pink,
          ),
          icon: SvgPicture.asset(
            "assets/icons/Heart Icon.svg",
            color: Colors.grey,
          ),
          label: '.',
          // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/icons/Conversation.svg",
            color: Colors.pink,
          ),
          icon: SvgPicture.asset(
            "assets/icons/Conversation.svg",
            color: Colors.grey,
          ),
          label: '.',
          // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
        ),
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            "assets/icons/User Icon.svg",
            color: Colors.pink,
          ),
          icon: SvgPicture.asset(
            "assets/icons/User Icon.svg",
            color: Colors.grey,
          ),
          label: '.',
          // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
        ),
      ],
      currentIndex: _selectedIndex,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      selectedItemColor: Colors.pink,
      iconSize: 30,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // unselectedItemColor: Colors.black,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
      ),
      elevation: double.parse("20"),
    );
  }
}
