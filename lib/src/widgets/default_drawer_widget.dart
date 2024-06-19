import 'package:cakra_asset_management/src/pages/landing_page/index.dart';
import 'package:cakra_asset_management/src/pages/profile/index.dart';
import 'package:cakra_asset_management/theme/theme.dart';
import 'package:cakra_asset_management/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Provider.of<ThemeProvider>(context).themeData.brightness ==
                    Brightness.light
                ? const Image(
                    image: AssetImage("assets/main-logo-dark.png"),
                    width: 250,
                    height: 150,
                  )
                : const Image(
                    image: AssetImage("assets/main-logo-white.png"),
                    width: 250,
                    height: 150,
                  ),
            const Text(
              'Aplikasi Data BMN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text(
                      'Halaman Awal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Profil',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Form Permintaan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Form Persetujuan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(
                      'Item ATK',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Row(
                      children: [
                        Text(
                          'Toggle Theme',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    trailing: Consumer<ThemeProvider>(
                      builder: (context, themeProvider, _) => Switch.adaptive(
                        value: themeProvider.themeData == darkMode,
                        onChanged: (_) {
                          themeProvider.toggleTheme(); // Toggle the theme
                        },
                        trackOutlineColor: MaterialStateProperty.all(
                          Colors.grey
                        ),
                        inactiveTrackColor: Theme.of(context).colorScheme.secondary,
                        activeTrackColor: Theme.of(context).colorScheme.secondary,
                        thumbIcon: MaterialStateProperty.all(
                          Icon(
                            themeProvider.themeData == darkMode
                                ? Icons.dark_mode
                                : Icons.light_mode,
                            color: Theme.of(context).colorScheme.secondary,
                          ),  
                        ),
                        thumbColor: MaterialStateProperty.all(
                          themeProvider.themeData == darkMode
                              ? Colors.yellow
                              : Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Kontak'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              leading: const Icon(Icons.person),
              titleTextStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text('Keluar'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingPage(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              leading: const Icon(Icons.logout),
              titleTextStyle: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
