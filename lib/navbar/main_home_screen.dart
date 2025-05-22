import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../pages/home.dart';
import '../pages/ingredients.dart';
import '../pages/settings.dart';

class MainHomeScreen extends StatefulWidget {
  final Function(Locale)? onLocaleChange;

  const MainHomeScreen({super.key, this.onLocaleChange});

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = [
      HomeScreen(),
      IngredientsScreen(),
      SettingsScreen(onLocaleChange: widget.onLocaleChange),
    ];

    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.blueGrey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: AppLocalizations.of(context)!.ingredients,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap:
            (index) => setState(() {
              _selectedIndex = index;
            }),
      ),
    );
  }
}
