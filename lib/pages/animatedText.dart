import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Govind kumar Yadav",
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 100),
                ),
              ],
              isRepeatingAnimation: true,
              displayFullTextOnTap: true,
              pause: Duration(milliseconds: 50),
              totalRepeatCount: 10,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Govind kumar Yadav",
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
              isRepeatingAnimation: true,
              displayFullTextOnTap: true,
              pause: Duration(milliseconds: 50),
              totalRepeatCount: 10,
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("Govind kumar Yadav",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: Duration(milliseconds: 100)),
              ],
              isRepeatingAnimation: true,
              displayFullTextOnTap: true,
              pause: Duration(milliseconds: 50),
              totalRepeatCount: 10,
            ),
            SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                text: 'GOVIND',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
