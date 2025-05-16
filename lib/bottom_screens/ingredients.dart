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
      color: Colors.orangeAccent,
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
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Guacamole',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Smooth, creamy sauce that\ndrives customers crazy.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(1);
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Processed Cheese',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Melted cheesy that adds\n comfort to every bite.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(5);
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Roosters Beak',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Fresh and zesty mix that\nbrings your taco to life.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(10);
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Caramelized Onion',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Sweet and savory magic that\nadds texture to your taco.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(50);
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Wagyu Beef',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Exquisite beef that elevates\nyour taco to luxury status.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(100);
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dragonfire Sauce',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A mythical blend from spicy\npeppers and rare spices.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
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
                        IngredientUpgrade().applyUpgrade(250);
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
