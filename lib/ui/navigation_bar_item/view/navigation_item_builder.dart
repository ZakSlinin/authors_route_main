import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final int index;
  final double size;
  final String? label;
  final int selectedPageIndex;
  final Function(int) onTap;

  const NavItem({
    super.key,
    required this.icon,
    required this.index,
    required this.size,
    this.label,
    required this.selectedPageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: theme.appBarTheme.backgroundColor, size: size),
          const SizedBox(height: 4),
          if (label == null) const SizedBox(height: 4),
          if (label != null)
            Text(
              label!,
              style: TextStyle(
                color:
                    selectedPageIndex == index
                        ? Colors.blueAccent
                        : Colors.grey,
                fontSize: 18,
              ),
            ),
        ],
      ),
    );
  }
}
