import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Center(
          child: Text('User name', style: theme.textTheme.bodyLarge), // TODO: user name
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('users routes') // TODO: users routes
          ],
        ),
      ),
    );
  }
}