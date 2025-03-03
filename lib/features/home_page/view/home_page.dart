import 'package:author_route_main/ui/silver_app_bar/silver_app_bar.dart';
import 'package:flutter/material.dart';

class AuthorsRouteHome extends StatefulWidget {
  const AuthorsRouteHome({super.key});

  @override
  State<AuthorsRouteHome> createState() => _AuthorsRouteHomeState();
}

class _AuthorsRouteHomeState extends State<AuthorsRouteHome> {
  final _pageController = PageController();
  var _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {setState(() {
          _selectedPageIndex = value;
        });},
        children: [
          SearchScreen(),
          Scaffold(),
          Scaffold(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _openPage,
        selectedItemColor: Colors.blueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white24,
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white24,
            icon: Icon(Icons.add, size: 50, ),
            label: 'add route',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white24,
            icon: Icon(Icons.manage_accounts_outlined),
            label: 'profile',
          ),
        ],
      ),
    );
  }

  void _openPage(int index) {
    setState(() =>  _selectedPageIndex = index);
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.linearToEaseOut);
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SilverAppBar(),
      ],
    );
  }
}
