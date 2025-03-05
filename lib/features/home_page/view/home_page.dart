import 'package:author_route_main/screens/profile/profile.dart';
import 'package:author_route_main/screens/search/search.dart';
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
      curve: Curves.easeOut,
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
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              SearchScreen(),
              AddRouteScreen(),
              ProfileScreen(),
            ],
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 50,
            height: 101,
            child: _buildCustomNavBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomNavBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.add, 'Add Route', 1),
          _buildNavItem(Icons.person, 'Profile', 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _openPage(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedPageIndex == index
                ? Colors.blueAccent
                : Colors.grey,
            size: index == 1 ? 40 : 30,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: _selectedPageIndex == index
                  ? Colors.blueAccent
                  : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class AddRouteScreen extends StatelessWidget {
  const AddRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Add Route Screen'));
  }
}
