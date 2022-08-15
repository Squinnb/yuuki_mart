import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  final Function setStage;
  const BottomNavBar(this.setStage, {Key? key}) : super(key: key);
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> body = ["Home", "Mart", "Auth"];
  Map<String, Icon> navIcons = {
    "Home": const Icon(
      FontAwesomeIcons.houseChimney,
      size: 20,
    ),
    "Mart": const Icon(
      FontAwesomeIcons.store,
      size: 20,
    ),
    "Auth": const Icon(
      FontAwesomeIcons.user,
      size: 20,
    ),
  };

  int selectedIndex = 0;

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: Color.fromARGB(218, 86, 86, 86),
      onTap: (int i) {
        widget.setStage(body[i]);
        selectedIndex = i;
      },
      items: <BottomNavigationBarItem>[
        ...body.map((String b) {
          return BottomNavigationBarItem(
            icon: navIcons[b]!,
            label: b,
          );
        })
      ],
    );
  }
}
