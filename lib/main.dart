import 'package:flutter/material.dart';
import 'navbar/main_home_screen.dart';
import 'theme.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taco_clicker/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          supportedLocales: L10n.all,
          locale: const Locale("es"),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: MainHomeScreen(),
        );
      },
    );
  }
}
