import 'package:flutter/material.dart';
import 'package:mova/screens/explore_screen.dart';
import 'package:mova/screens/home_screent.dart';
import 'package:mova/screens/my_list_screen.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  _TabbarScreenState createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: 'Explore'),
              BottomNavigationBarItem(icon: Icon(Icons.list), label: 'My List'),
            ],
            currentIndex: currentPageIndex,
            onTap: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
          body: const TabBarView(
            children: [
              HomeScreen(),
              ExploreScreen(),
              MyListScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
