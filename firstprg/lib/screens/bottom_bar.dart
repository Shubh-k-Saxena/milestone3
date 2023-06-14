import 'package:firstprg/screens/search.dart';
import 'package:firstprg/screens/signup.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //navigation between the below tabs
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("accounts"),
    const Search(),
    const SignUp()
  ];

  int onTappedValue = 0;
  void onTapped(int i) {
    setState(() {
      onTappedValue = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:const Center(child:Text("Accounts")),
      //   backgroundColor: const Color(0xDF8BEB42),
      // ),
      //body
      body: Center(
        child: _widgetOptions[onTappedValue],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: onTappedValue,
        onTap: onTapped,
        backgroundColor: Colors.lightGreen,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFFF8FAF9),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
            activeIcon:Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
            label: "account",

          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_block_filled),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_person_block_filled),
              label: "signup"),
        ],
      ),
    );
  }
}
