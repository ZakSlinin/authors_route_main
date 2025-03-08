import 'package:author_route_main/ui/sliver_app_bar/sliver_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const itemCount = 10;

    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return Container(
                color: Colors.blueGrey,
                margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Center(
                  child: Text('Пост $index'),
                ),
              );
            },
            childCount: itemCount,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 200), // SizedBox creates the last element to make posts visually correct
          ]),
        ),
      ],
    );
  }
}