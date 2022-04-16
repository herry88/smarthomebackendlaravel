import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  late PageController _pageController;
  int _page = 0;
  List _title = ['Dashboard', 'Profile'];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title[_page],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          children: [
            Center(
              child: Text('Dashboard'),
            ),
            Center(
              child: Text('Profile'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _page,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _page = index;
          _pageController.jumpToPage(index);
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Dashboard', style: TextStyle(color: Colors.blueGrey)),
            activeColor: Colors.blueAccent,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile', style: TextStyle(color: Colors.blueGrey)),
            activeColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
