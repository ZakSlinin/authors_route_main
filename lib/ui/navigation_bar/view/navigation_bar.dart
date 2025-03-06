import 'package:flutter/material.dart';
import 'package:author_route_main/ui/navigation_bar_item/navigation_bar_item.dart';


class CustomNavigationBar extends StatelessWidget {
  final int selectedPageIndex;
  final Function(int) onTap;

  const CustomNavigationBar({super.key, required this.onTap, required this.selectedPageIndex});

  @override
  Widget build(BuildContext context) {
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
          NavItem(
            icon: Icons.home,
            index: 0,
            size: 50,
            label: 'Home',
            selectedPageIndex: selectedPageIndex,
            onTap: onTap,
          ),
          NavItem(
            icon: Icons.add,
            index: 1,
            size: 50,
            label: 'Add route',
            selectedPageIndex: selectedPageIndex,
            onTap: onTap,
          ),
          NavItem(
            icon: Icons.person,
            index: 2,
            size: 50,
            label: 'Profile',
            selectedPageIndex: selectedPageIndex,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
