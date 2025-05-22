import 'package:flutter/material.dart';
import '../upgrades/ingredientsUpgrade.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                AppLocalizations.of(context)!.ingredients,
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
                          AppLocalizations.of(context)!.upgrade1Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade1Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade1Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                          AppLocalizations.of(context)!.upgrade2Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade2Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade2Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                          AppLocalizations.of(context)!.upgrade3Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade3Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade3Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                          AppLocalizations.of(context)!.upgrade4Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade4Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade4Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                          AppLocalizations.of(context)!.upgrade5Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade5Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade5Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
                          AppLocalizations.of(context)!.upgrade6Title,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade6Description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.upgrade6Bonus,
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
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
