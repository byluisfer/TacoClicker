import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../upgrades/ingredientsUpgrade.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => TacoClick();
}

class TacoClick extends State<HomeScreen> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      count = (prefs.getInt('counter') ?? 0);
      IngredientUpgrade().clickMultiplier = prefs.getInt('upgrade') ?? 1;
    });
  }

  Future<void> _incrementClickCount() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      count += IngredientUpgrade().clickValue;
      prefs.setInt('counter', count);
    });

    // print("You make $tacosPerClick tacos per click");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          SizedBox(height: 60),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Column(
              children: [
                Text(
                  '$count Tacos',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "${IngredientUpgrade().clickValue} per Click",

                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Center(
              child: Bounceable(
                onTap: _incrementClickCount,
                duration: const Duration(milliseconds: 100),
                child: Image.asset(
                  'assets/Taco_No_Background.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
