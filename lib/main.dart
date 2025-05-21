import 'package:flutter/material.dart';
import 'navbar/main_home_screen.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ThemeNotifier(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeNotifier.themeMode,
          home: MainHomeScreen(),
        );
      },
    );
  }
}
