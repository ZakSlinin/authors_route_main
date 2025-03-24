import 'package:author_route_main/repositories/authors_routes/authors_routes_repository.dart';
import 'package:author_route_main/routes/routes.dart';
import 'package:author_route_main/theme/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


void main() {
  GetIt.I.registerLazySingleton(() => RoutesRepository(dio: Dio()));
  runApp(const AuthorsRouteApp());
}

class AuthorsRouteApp extends StatelessWidget {
  const AuthorsRouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authors route',
      theme: darkTheme,
      routes: routes,
    );
  }
}


