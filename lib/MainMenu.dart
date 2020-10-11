import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/pages/Contact.dart';
import 'package:myflutter/pages/Education.dart';
import 'package:myflutter/pages/HomePages.dart';
import 'package:myflutter/pages/Profile.dart';

// class ที่สร้างขึ้น
class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int bottomSelectedIndex = 0;


  // กำหนดให้แสดงเมนูที่ 1 เมื่อเปิดขึ้นมา
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  // เรียกใช้ page ตามรายการเมนู
  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        // เรียกใช้ 4 page ตามจำนวนเมนู
        HomePages(),
        Profile(),
        Education(),
        Contact(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  // function เมื่อกดปุ่มให้เปลี่ยน page
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  // function Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: FancyBottomNavigation(
        barBackgroundColor: Colors.pink.shade100,
        circleColor: Colors.pinkAccent.shade700,
        inactiveIconColor: Colors.brown.shade400,
        tabs: [
          TabData(iconData: Icons.home, title: "หน้าหลัก"),
          TabData(iconData: Icons.search, title: "ค้นหา"),
          TabData(iconData: Icons.shopping_cart, title: "ร้านค้า"),
          TabData(iconData: Icons.star, title: "อื่นๆ"),
        ],
        onTabChangedListener: (index) {
          bottomTapped(index);
        },
      ),
    );
  }
} // class
