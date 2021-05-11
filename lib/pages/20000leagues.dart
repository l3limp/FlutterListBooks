import 'package:flutter/material.dart';
import 'package:cards/book.dart';
import 'package:cards/book_card.dart';

class Leagues extends StatefulWidget {
  const Leagues({Key key}) : super(key: key);

  @override
  _LeaguesState createState() => _LeaguesState();
}

class _LeaguesState extends State<Leagues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '20,000 Leagues Under the Sea'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.network('https://149351943.v2.pressablecdn.com/wp-content/uploads/2018/06/IMG_6805-324x482.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'Twenty Thousand Leagues Under the Sea tells the story of marine biologist Pierre Aronnax, his manservant Conseil and harpoonist Ned Land, who – after joining the hunt for a mysterious sea monster – are thrown overboard when the monster attacks and find themselves prisoners of Captain Nemo, probably one of Verne’s most memorable yet elusive characters. On board the Nautilus, a technologically advanced submarine that everyone has mistaken for a sea monster, the three companions get to experience the vast and endlessly fascinating world under the sea. Twenty Thousand Leagues is an adventure tale, political commentary and scientific utopia all in one – and one of Verne’s most successful works. Its first edition sold out within a week. Despite terrible initial English translations and the sometimes academically dry writing style, its appeal has endured, still capturing readers young and old with the excitement of discovering a new world.',
              style : TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 0.5
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.teal[100],
    );;
  }
}
