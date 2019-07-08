import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('flutter_assets/video/Splash.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller.addListener(() {
      if (!_controller.value.isPlaying) {
        Navigator.popAndPushNamed(context, 'welcome');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return VideoPlayer(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
