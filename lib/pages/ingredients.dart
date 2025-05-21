import 'package:flutter/material.dart';
import '../upgrades/ingredientsUpgrade.dart';

class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({super.key});

  @override
  State<IngredientsScreen> createState() => IngredientsUpgrade();
}

class IngredientsUpgrade extends State<IngredientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                "Ingredients",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Guacamole',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Smooth, creamy sauce that\ndrives customers crazy.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+1 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(1, 50);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '50🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processed Cheese',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Melted cheesy that adds\n comfort to every bite.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+5 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(5, 250);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '250🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roosters Beak',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Fresh and zesty mix that\nbrings your taco to life.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+10 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(10, 500);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '500🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Caramelized Onion',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sweet and savory magic that\nadds texture to your taco.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+50 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(50, 1000);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '1.000🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wagyu Beef',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Exquisite beef that elevates\nyour taco to luxury status.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+100 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(100, 5000);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '5.000🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dragonfire Sauce',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A mythical blend from spicy\npeppers and rare spices.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+250 tacos per click',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        IngredientUpgrade().applyUpgrade(250, 10000);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        '10.000🌮',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 56, 56),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
