import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'ChatScreen.dart';

// Replace with your actual ChatBot screen path

class ChatBotSplash extends StatefulWidget {
  const ChatBotSplash({super.key});

  @override
  State<ChatBotSplash> createState() => _ChatBotSplashState();
}

class _ChatBotSplashState extends State<ChatBotSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ChatScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/images/chatbot.png',
            fit: BoxFit.cover,
          ),
          // Loading Spinner
          Center(
            child: SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
