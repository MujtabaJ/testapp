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
  // int active = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(0, 0), blurRadius: 2)
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => _onItemTapped(0),
                  icon: SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    height: 24,
                    color: _selectedIndex == 0 ? Colors.pink : Colors.grey,
                  )),
              Text(
                _selectedIndex == 0 ? "." : "",
                style: TextStyle(
                    color: Colors.pink,
                    height: 0.2,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => _onItemTapped(1),
                  icon: SvgPicture.asset(
                    "assets/icons/Heart Icon.svg",
                    height: 24,
                    color: _selectedIndex == 1 ? Colors.pink : Colors.grey,
                  )),
              Text(
                _selectedIndex == 1 ? "." : "",
                style: TextStyle(
                    color: Colors.pink,
                    height: 0.2,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _onItemTapped(2),
                icon: SvgPicture.asset(
                  "assets/icons/Conversation.svg",
                  color: _selectedIndex == 2 ? Colors.pink : Colors.grey,
                  height: 24,
                ),
              ),
              Text(
                _selectedIndex == 2 ? "." : "",
                style: TextStyle(
                    color: Colors.pink,
                    height: 0.2,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => _onItemTapped(3),
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  height: 24,
                  color: _selectedIndex == 3 ? Colors.pink : Colors.grey,
                ),
              ),
              Text(
                _selectedIndex == 3 ? "." : "",
                style: TextStyle(
                    color: Colors.pink,
                    height: 0.2,
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ],
      ),
    );

    // BottomNavigationBar(
    //   items: <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       activeIcon: SvgPicture.asset(
    //         "assets/icons/Shop Icon.svg",
    //         color: Colors.pink,
    //       ),
    //       icon: SvgPicture.asset(
    //         "assets/icons/Shop Icon.svg",
    //         color: Colors.grey,
    //       ),
    //       label: '.',
    //       // backgroundColor: Color.fromRGBO(17, 21, 30, 1)
    //     ),
    //     BottomNavigationBarItem(
    //       activeIcon: SvgPicture.asset(
    //         "assets/icons/Heart Icon.svg",
    //         color: Colors.pink,
    //       ),
    //       icon: SvgPicture.asset(
    //         "assets/icons/Heart Icon.svg",
    //         color: Colors.grey,
    //       ),
    //       label: '.',
    //       // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
    //     ),
    //     BottomNavigationBarItem(
    //       activeIcon: SvgPicture.asset(
    //         "assets/icons/Conversation.svg",
    //         color: Colors.pink,
    //       ),
    //       icon: SvgPicture.asset(
    //         "assets/icons/Conversation.svg",
    //         color: Colors.grey,
    //       ),
    //       label: '.',
    //       // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
    //     ),
    //     BottomNavigationBarItem(
    //       activeIcon: SvgPicture.asset(
    //         "assets/icons/User Icon.svg",
    //         color: Colors.pink,
    //       ),
    //       icon: SvgPicture.asset(
    //         "assets/icons/User Icon.svg",
    //         color: Colors.grey,
    //       ),
    //       label: '.',
    //       // backgroundColor: Color.fromRGBO(17, 21, 30, 1),
    //     ),
    //   ],
    //   currentIndex: _selectedIndex,
    //   backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    //   selectedItemColor: Colors.pink,
    //   iconSize: 30,
    //   showSelectedLabels: true,
    //   showUnselectedLabels: false,
    //   // unselectedItemColor: Colors.black,
    //   onTap: _onItemTapped,
    //   type: BottomNavigationBarType.fixed,
    //   selectedLabelStyle: TextStyle(
    //     fontSize: 24,
    //     fontWeight: FontWeight.w900,
    //   ),
    //   elevation: double.parse("20"),
    // );
  }
}
