import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            SizedBox(height: 60),
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
                        'Smooth, creamy sauce that\ndrives customers crazy!',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '+1 click per second',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      '50🌮',
                      style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
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
                        'Guacamole',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Smooth, creamy sauce that\ndrives customers crazy!',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '+1 click per second',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      '50🌮',
                      style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
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
                        'Guacamole',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Smooth, creamy sauce that\ndrives customers crazy!',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '+1 click per second',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      '50🌮',
                      style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
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
                        'Guacamole',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Smooth, creamy sauce that\ndrives customers crazy!',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        '+1 click per second',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: null,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(26, 63, 63, 63),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      '50🌮',
                      style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
