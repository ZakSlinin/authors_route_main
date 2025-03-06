import 'package:author_route_main/ui/silver_app_bar/silver_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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