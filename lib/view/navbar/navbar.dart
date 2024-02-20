import 'package:flutter/material.dart';
import 'package:snapchat_clone/view/homescreen/homescreen.dart';
import 'package:snapchat_clone/view/mapscreen/mapscreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [Mapscreen(), Homescreen()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
            radius: 20.0, // Adjust the radius to make it larger or smaller
          ),
          title: Icon(Icons.search),
        ),
        body: pages[selectedIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            print(value);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.mode_comment), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: ""),
          ],
        ));
  }
}
