import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:coral/common.dart';
import 'package:coral/homepage.dart';
import 'package:coral/loginpage.dart';
import 'package:coral/mepage.dart';

void main() {
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coral',
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return CommonData.me==null ? LoginPage(callback: () => onChanged()) : Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_mall,
            ),
            label: '领养',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '我的',
          ),
        ],

        currentIndex: _currentIndex,
        onTap: (int i) => {
          setState(() {
            _currentIndex = i;
          })
        },
      ),
      body: pages[_currentIndex],
    );
  }

  @override
  void initState() {
    super.initState();
    pages = [const HomePage(), MePage(callback: () => onChanged(),)];
  }

  void onChanged(){
    setState(() {
      _currentIndex = 0;
    });
  }
}