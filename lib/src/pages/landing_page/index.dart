import 'package:cakra_asset_management/src/layout.dart';
import 'package:cakra_asset_management/src/pages/item/index.dart';
import 'package:cakra_asset_management/src/pages/login/index.dart';
import 'package:cakra_asset_management/src/pages/test_page/test_page.dart';
import 'package:flutter/material.dart';
import 'package:cakra_asset_management/src/pages/register/index.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/main-logo-white.png"),
              width: 250,
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(216, 203, 255, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(255, 250, 203, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Masuk',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                // TODO: Temporary routing
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IndexItemPage(),
                  ),
                );
              },
              child: const Text('Go to Index item page'),
            ),
            TextButton(
              onPressed: () {
                // TODO: Temporary routing
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TestPage(),
                  ),
                );
              },
              child: const Text('Go to store test page'),
            )
          ],
        ),
      ),
    );
  }
}
