import 'package:shared_preferences/shared_preferences.dart';

class IngredientUpgrade {
  static final IngredientUpgrade _instance = IngredientUpgrade._internal();

  factory IngredientUpgrade() {
    return _instance;
  }

  IngredientUpgrade._internal();

  int initialClickValue = 1;
  int clickMultiplier = 1;
  int multiplierPrice = 50;
  int get clickValue => initialClickValue * clickMultiplier;

  Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter') ?? 0;
  }

  void applyUpgrade(int increaseClick) async {
    final currentCount = await getCounter();
    if (currentCount >= multiplierPrice) {
      clickMultiplier += increaseClick;
    } else {
      print("Pobreee: $currentCount");
    }
  }
}
