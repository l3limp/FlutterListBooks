import 'package:flutter/material.dart';

class Robinson extends StatefulWidget {
  const Robinson({Key key}) : super(key: key);

  @override
  _RobinsonState createState() => _RobinsonState();
}

class _RobinsonState extends State<Robinson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Robinson Crusoe'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.network('https://m.media-amazon.com/images/I/51ZtxTM0DlL._SY346_.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'Robinson Crusoe, as a young and impulsive wanderer, defied his parents and went to sea. He was involved in a series of violent storms at sea and was warned by the captain that he should not be a seafaring man. Ashamed to go home, Crusoe boarded another ship and returned from a successful trip to Africa.\n     He was rescued by a Portuguese ship and started a new adventure. He landed in Brazil, and, after some time, he became the owner of a sugar plantation. Hoping to increase his wealth by buying slaves, he aligned himself with other planters and undertook a trip to Africa in order to bring back a shipload of slaves. After surviving a storm, Crusoe and the others were shipwrecked. He was thrown upon shore only to discover that he was the sole survivor of the wreck.',
              style : TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 0.5
              ),
            ),
          ),
        ],
      ),
    );;
  }
}
