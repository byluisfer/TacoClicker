import 'package:flutter/material.dart';

class RestuarantScreen extends StatefulWidget {
  const RestuarantScreen({super.key});

  @override
  State<RestuarantScreen> createState() => RestaurantUpgrade();
}

class RestaurantUpgrade extends State<RestuarantScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: SingleChildScrollView(
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
                          'Taco Stand',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A humble street cart serving\nfresh tacos nonstop.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+1 tacos per second',
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
                        '100🌮',
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
                          'Food Truck',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rolling through town, giving\ntaco joy everywhere.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+5 click per second',
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
                          'Taco Restaurant',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A bustling place where tacos\nare served in abundance.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+10 click per second',
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
                          'Taco Factory',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Industrial taco production,\nautomated and fast.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+50 click per second',
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
                          'Taco Megaplex',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'A mega facility dedicated\nto the art of taco creation.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+100 click per second',
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
                          'Galactic Taco Hub',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Tacos for the universe,\nproduced at light speed.',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '+500 click per second',
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
                        '25.000🌮',
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
