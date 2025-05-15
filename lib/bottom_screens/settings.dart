import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => Settings();
}

class Settings extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orangeAccent);
  }
}
