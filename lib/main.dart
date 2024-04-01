import 'package:flutter/material.dart';
import 'package:cakra_asset_management/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: EmptyPage(),
      ),
    );
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Size W is ${MediaQuery.of(context).size.width}");
    debugPrint("Size H is ${MediaQuery.of(context).size.height}");
    var pixRatio = MediaQuery.of(context).devicePixelRatio;
    debugPrint(
      "Corrected size W is ${MediaQuery.of(context).size.width * pixRatio}",
    );
    debugPrint(
      "Corrected size H is ${MediaQuery.of(context).size.height * pixRatio}",
    );
    return Center(
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: SizedBox(
          width: 1080 / pixRatio,
          height: 2280 / pixRatio,
          child: const Column(
            children: [
              // All code here
            ],
          ),
        ),
      ),
    );
  }
}
