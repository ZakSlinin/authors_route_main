import 'package:author_route_main/features/home_page/home_page_screens/add_route/add_route.dart';
import 'package:author_route_main/features/home_page/home_page_screens/profile/profile.dart';
import 'package:author_route_main/features/home_page/home_page_screens/search/search.dart';
import 'package:author_route_main/ui/navigation_bar/bar.dart';
import 'package:flutter/material.dart';

class AuthorsRouteHome extends StatefulWidget {
  const AuthorsRouteHome({super.key});

  @override
  State<AuthorsRouteHome> createState() => _AuthorsRouteHomeState();
}

class _AuthorsRouteHomeState extends State<AuthorsRouteHome> {
  final PageController _pageController = PageController();
  int _selectedPageIndex = 0;


  void _openPage(int index) {
    setState(() => _selectedPageIndex = index);
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linearToEaseOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() => _selectedPageIndex = value);
            },
            children: const [
              SearchScreen(),
              AddRouteScreen(),
              ProfileScreen()
            ],
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 50,
            height: 101,
            child: CustomNavigationBar(
              selectedPageIndex: _selectedPageIndex,
              onTap: _openPage,
            ),
          ),
        ],
      ),
    );
  }
}
