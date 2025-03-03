import 'package:author_route_main/routes/routes.dart';
import 'package:author_route_main/theme/theme.dart';
import 'package:flutter/material.dart';


void main() {
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


