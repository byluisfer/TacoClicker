import 'package:flutter/material.dart';
import 'navbar/main_home_screen.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taco_clicker/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

// Stateful to change the language
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en'); // default language

  @override
  void initState() {
    super.initState();
    _loadLocale(); // When the app run itl look of the saved language
  }

  // Function to cahnge the language
  void _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final langCode =
        prefs.getString('languageCode') ??
        'en'; // If there is not a saved lanague its use inglish
    setState(() {
      _locale = Locale(langCode); // To change the language
    });
  }

  // Save the language and apply its
  void _setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', locale.languageCode);
    setState(() {
      _locale = locale; // To update the texto of the settings button
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeNotifier.themeMode,
            supportedLocales: L10n.all,
            locale: _locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: MainHomeScreen(onLocaleChange: _setLocale),
          );
        },
      ),
    );
  }
}
