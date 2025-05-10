import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:touche_pad/widgets/Button.dart';
import 'package:touche_pad/widgets/track_pad.dart';

class TouchPad extends StatefulWidget {
  const TouchPad({super.key});

  @override
  State<TouchPad> createState() => _TouchPadState();
}

class _TouchPadState extends State<TouchPad> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2, // 20%
              child: Column(
                children: [
                  Expanded(
                    flex: 5, // 50%
                    child: Button(
                      color: Colors.white,
                      text: 'Left click',
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    flex: 5, // 50%
                    child:  Button(
                      color: Colors.white,
                      text: 'Right click',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8, // 80%
              child: TrackPad(),
            ),
          ],
        ),
      ),
    );
  }
}
