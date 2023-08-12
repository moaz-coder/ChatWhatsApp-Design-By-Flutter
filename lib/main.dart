import 'package:flutter/material.dart';

import 'HomeScreen/homeScreen.dart';

void main() {
  runApp(ChatWhatsapp());
}

class ChatWhatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
