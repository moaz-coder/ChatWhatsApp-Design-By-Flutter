import 'package:chatdesign/HomeScreen/ChatMessage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back, size: 25, color: Colors.white),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/person.jpg",
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Person',
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("Video Call");
                },
                icon: Icon(Icons.video_call)),
            IconButton(
                onPressed: () {
                  print("Call");
                },
                icon: Icon(Icons.call)),
            IconButton(
                onPressed: () {
                  print("more_vert");
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ChatMessage(
                  imagePath: 'assets/images/person1.jpg',
                  tittle: 'This Is My First Message'),
              SizedBox(
                height: 30,
              ),
              ChatMessage(
                imagePath: 'assets/images/person2.jpg',
                tittle: 'This Is My Second Message',
                isRightToLeft: true,
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                          onPressed: () {
                            print('Please Simle');
                          },
                          icon: Icon(Icons.emoji_emotions_outlined),
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            print('Attach file');
                          },
                          icon: Icon(Icons.attach_file),
                          color: Colors.white,
                        ),
                        hintText: "Type a Message",
                        hintStyle:
                            const TextStyle(fontSize: 16, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
