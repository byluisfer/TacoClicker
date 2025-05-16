import 'package:shared_preferences/shared_preferences.dart';

class IngredientUpgrade {
  static final IngredientUpgrade _instance = IngredientUpgrade._internal();

  factory IngredientUpgrade() {
    return _instance;
  }

  IngredientUpgrade._internal();

  int initialClickValue = 1;
  int clickMultiplier = 1;
  int get clickValue => initialClickValue * clickMultiplier;

  Future<int> getCounter() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter') ?? 0;
  }

  void resetGameData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 0);
  }

  void applyUpgrade(int increaseClick, int priceUpgrade) async {
    final prefs = await SharedPreferences.getInstance();
    int currentCounter = prefs.getInt('counter') ?? 0;
    //print("Now you have this tacos: $currentCounter");

    if (currentCounter >= priceUpgrade) {
      currentCounter -= priceUpgrade;
      await prefs.setInt('counter', currentCounter);
      clickMultiplier += increaseClick;
      //print("You buy it! Now you have $currentCounter tacos.");
    } else {
      //print("You can't buy this, you only have $currentCounter tacos. Looser");
    }
  }
}
