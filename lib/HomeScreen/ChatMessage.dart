import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  String imagePath;
  String tittle;
  bool isRightToLeft;

  ChatMessage(
      {required this.imagePath,
      required this.tittle,
      this.isRightToLeft = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: isRightToLeft ? TextDirection.rtl : TextDirection.ltr,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            tittle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
      ],
    );
  }
}
