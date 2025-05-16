class IngredientUpgrade {
  static final IngredientUpgrade _instance = IngredientUpgrade._internal();

  factory IngredientUpgrade() {
    return _instance;
  }

  IngredientUpgrade._internal();

  int initialClickValue = 1;

  int clickMultiplier = 1;

  int get clickValue => initialClickValue * clickMultiplier;

  void applyUpgrade(int increaseClick) {
    clickMultiplier += increaseClick;
  }
}
