import 'package:findresteau/favorite.dart';
import 'package:findresteau/Map.dart';
import 'package:findresteau/pages/MapPage.dart';
import 'package:findresteau/pages/Profile_Page.dart';
import 'package:findresteau/pages/favorite_restaurants_page.dart';
import 'package:flutter/material.dart';
import 'package:findresteau/components/map_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}): super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  final PageController _pageController = PageController(initialPage: 1);
  final List<Widget> _pages = [
    const ProfilePage(),
 const MapPage(),
    const FavoriteRestaurantsPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) => _pages[index],
        itemCount: _pages.length,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: GNav(
          onTabChange: _navigateBottomBar,
          backgroundColor: Colors.white70,
          color: Colors.black38,
          activeColor: Colors.green,
          gap: 8,
          selectedIndex: _selectedIndex,
          tabs: const [
            GButton(
              icon: Icons.person,
              text: 'Mon compte ',
            ),
            GButton(
              icon: Icons.map,
              text: 'Map',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'favorite',
            )
          ]
      ),
    );
  }
}
