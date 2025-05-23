import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import '../theme_notifier.dart';
import '../upgrades/ingredientsUpgrade.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final AudioPlayer backgroundPlayer = AudioPlayer();

class SettingsScreen extends StatefulWidget {
  final Function(Locale)? onLocaleChange;
  const SettingsScreen({super.key, this.onLocaleChange});

  @override
  State<SettingsScreen> createState() => Settings();
}

class Settings extends State<SettingsScreen> {
  bool isMusic = true;
  String _currentLanguageCode = 'en';

  @override
  void initState() {
    super.initState();
    initSettings();
  }

  void initSettings() async {
    final prefs = await SharedPreferences.getInstance();
    bool? musicPref = prefs.getBool('isMusic');
    isMusic = musicPref ?? true;

    _currentLanguageCode = prefs.getString('languageCode') ?? 'en';

    if (isMusic) {
      await backgroundPlayer.setReleaseMode(ReleaseMode.loop);
      await backgroundPlayer.setSource(AssetSource('backgroundMusic.mp3'));
      await backgroundPlayer.resume();
    }

    setState(() {});
  }

  // Function to change the language for the button
  void _toggleLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> languages = ['en', 'es', 'de'];
    int index = languages.indexOf(_currentLanguageCode);
    String nextLang = languages[(index + 1) % languages.length];

    await prefs.setString('languageCode', nextLang);
    setState(() {
      _currentLanguageCode = nextLang;
    });

    widget.onLocaleChange?.call(Locale(nextLang));
  }

  void resetGameData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 0);
    IngredientUpgrade().clickMultiplier = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.settings,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.stats,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.maxAmountStats,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.perClickStats,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(14),
                width: 360,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.gameSettings,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.music,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Spacer(),
                        Switch(
                          value: isMusic,
                          onChanged: (value) async {
                            final prefs = await SharedPreferences.getInstance();
                            setState(() {
                              isMusic = value;
                            });
                            await prefs.setBool('isMusic', isMusic);

                            if (isMusic) {
                              await backgroundPlayer.stop();
                              await backgroundPlayer.setReleaseMode(
                                ReleaseMode.loop,
                              );
                              await backgroundPlayer.setSource(
                                AssetSource('backgroundMusic.mp3'),
                              );
                              await backgroundPlayer.resume();
                            } else {
                              await backgroundPlayer.stop();
                            }
                          },
                          activeTrackColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.darkMode,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Spacer(),
                        Switch(
                          value:
                              Theme.of(context).brightness == Brightness.dark,
                          onChanged: (value) {
                            ThemeNotifier themeNotifier =
                                Provider.of<ThemeNotifier>(
                                  context,
                                  listen: false,
                                );
                            themeNotifier.setTheme(
                              value ? ThemeMode.dark : ThemeMode.light,
                            );
                          },
                          activeTrackColor:
                              Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.language,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: _toggleLanguage,
                          style: TextButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          child: Text(
                            _currentLanguageCode.toUpperCase(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        resetGameData();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 10,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.restartGame,
                        style: TextStyle(color: Colors.white, fontSize: 16),
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
