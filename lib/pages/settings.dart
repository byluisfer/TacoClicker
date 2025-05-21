import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';

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
    await prefs.setInt('counter', 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Settings",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stats',
                        style: TextStyle(
                          color: Colors.orange,
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
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Max amount',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.brown,
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
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Per click',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.brown,
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
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Per second',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: TextStyle(
                                    color: Colors.brown,
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
                color: Colors.white,
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
                          color: Colors.orange,
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
                              color: Colors.orange,
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
                            activeTrackColor: Colors.orange,
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
