import 'package:flutter/material.dart';
import 'package:cakra_asset_management/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const EmptyPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empty Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Text('Cakra Software Developtment'),
            ),
            ListTile(
              title: const Text('Change Theme'),
              onTap: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                Navigator.pop(context); // Close the drawer after toggling theme
              },
            ),
          ],
        ),
      ),
      body: const Center(
        //everything goes here
      ),
    );
  }
}
