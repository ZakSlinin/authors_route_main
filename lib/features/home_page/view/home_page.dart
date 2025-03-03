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
      backgroundColor: Color.fromARGB(200, 49, 127, 161),
      appBar: AppBar(
        title: Text('Home', style: theme.textTheme.bodyLarge),
        backgroundColor: Colors.black,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {setState(() {
          _selectedPageIndex = value;
        });},
        children: [
          
        ],
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(),
      ],
    );
  }
}
