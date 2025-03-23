import 'package:author_route_main/repositories/authors_routes/authors_routes.dart';
import 'package:author_route_main/repositories/authors_routes/authors_routes_repository.dart';
import 'package:author_route_main/ui/sliver_app_bar/sliver_app_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Routes>? _routes;

  @override
  void initState() {
    _loadRoutes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.blueGrey,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Center(child: Text('${_routes![index].name}')),
            );
          }, childCount: _routes?.length ?? 0),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(height: 200),
            // SizedBox creates the last element to make posts visually correct
          ]),
        ),
      ],
    );
  }

  Future<void> _loadRoutes() async {
    _routes = await RoutesRepository(dio: Dio()).getRoute();
    setState(() {});
  }
}
