import 'package:shared_preferences/shared_preferences.dart';

class IngredientUpgrade {
  static final IngredientUpgrade _instance = IngredientUpgrade._internal();

  factory IngredientUpgrade() {
    return _instance;
  }

  IngredientUpgrade._internal() {
    _loadUpgrade();
  }

  int initialClickValue = 1;
  int clickMultiplier = 1;
  int get clickValue => initialClickValue * clickMultiplier;

  Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter') ?? 0;
  }

  Future<void> _loadUpgrade() async {
    final prefs = await SharedPreferences.getInstance();
    clickMultiplier = prefs.getInt('upgrade') ?? 1;
  }

  void resetGameData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 0);
    await prefs.setInt('upgrade', 1);
    clickMultiplier = 1;
  }

  void applyUpgrade(int increaseClick, int priceUpgrade) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('upgrade', clickMultiplier);
    int currentCounter = prefs.getInt('counter') ?? 0;
    //print("Now you have this tacos: $currentCounter");

    if (currentCounter >= priceUpgrade) {
      currentCounter -= priceUpgrade;
      await prefs.setInt('counter', currentCounter);
      clickMultiplier += increaseClick;
      await prefs.setInt('upgrade', clickMultiplier);
      //print("You buy it! Now you have $currentCounter tacos.");
    } else {
      //print("You can't buy this, you only have $currentCounter tacos. Looser");
    }
  }
}
