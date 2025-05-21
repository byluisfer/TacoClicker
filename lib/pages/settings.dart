import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import '../theme_notifier.dart';
import '../upgrades/ingredientsUpgrade.dart';

final AudioPlayer backgroundPlayer = AudioPlayer();

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => Settings();
}

class Settings extends State<SettingsScreen> {
  bool isMusic = true;
  bool isSoundEffects = true;

  @override
  void initState() {
    super.initState();
    initSettings();
  }

  void initSettings() async {
    final prefs = await SharedPreferences.getInstance();
    bool? musicPref = prefs.getBool('isMusic');
    isMusic = musicPref ?? true; // By default in true

    if (isMusic) {
      await backgroundPlayer.setReleaseMode(ReleaseMode.loop);
      await backgroundPlayer.setSource(AssetSource('backgroundMusic.mp3'));
      await backgroundPlayer.resume();
    }

    setState(() {});
  }

  void resetGameData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 0); // Delete all tacos counter
    IngredientUpgrade().clickMultiplier = 1; // Set the upgrades to 1
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Settings",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stats',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Max amount',
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
                          SizedBox(width: 4),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Per click',
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
                          SizedBox(width: 4),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Per second',
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
                        ],
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

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Game Settings",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Music",
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          SizedBox(width: 220),
                          Switch(
                            value: isMusic,
                            onChanged: (value) async {
                              final prefs =
                                  await SharedPreferences.getInstance();
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
                            "Dark Mode",
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          SizedBox(width: 175),
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
                          'Reset Game Progress',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
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
