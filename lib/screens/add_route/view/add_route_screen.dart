import 'package:author_route_main/ui/custom_text_field/text_field.dart';
import 'package:flutter/material.dart';

class AddRouteScreen extends StatelessWidget {
  const AddRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Center(
          child: Text('Create new route', style: theme.textTheme.bodyLarge),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(labelText: 'Country'),
            SizedBox(height: 16.0),
            CustomTextField(labelText: 'City'),
            SizedBox(height: 16.0),
            CustomTextField(labelText: 'Notes'),
            SizedBox(height: 16.0),
            CustomTextField(labelText: 'Description', maxLines: 3),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: logic for sending photos
              },
              style: theme.elevatedButtonTheme.style,
              child: Text('Upload photos', style: theme.textTheme.bodyLarge,),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: logic for sending route
                    },
                    style: theme.elevatedButtonTheme.style,
                    child: Text('Create route', style: theme.textTheme.bodyLarge,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
