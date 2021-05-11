import 'package:flutter/material.dart';
import 'package:cards/book.dart';
import 'package:cards/book_card.dart';

class Treasure extends StatefulWidget {
  const Treasure({Key key}) : super(key: key);

  @override
  _TreasureState createState() => _TreasureState();
}

class _TreasureState extends State<Treasure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Treasure Island'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.network('https://cdn3.volusion.com/jtoq7.b7owf/v/vspfiles/photos/TREASURE_ISLAND-2.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'Robert Louis Stevenson wrote Treasure Island in 1881. It is set in the days of sailing ships and pirates and tells of the adventures of Jim Hawkins and his search for the buried treasure of an evil pirate, Captain Flint.The story begins at The Admiral Benbow, the inn that belongs to Jim Hawkins parents. A mysterious stranger called Billy Bones, who rents a room at the inn, warns Jim to keep a look out for a one legged man. One day, Billy is visited by a beggar called Blind Pew who gives him the black spot which is the mark of imminent death among pirate crews. After Blind Pew leaves, Billy collapses and dies.\n    Jim finds a map in Billys sea chest just before Blind Pew returns with a band of evil pirates. Jim and his mother quickly hide before the pirates ransack the Inn looking for the map. Suddenly soldiers arrive and the pirates escape, except for Blind Pew who is accidentally trampled to death by the soldiers horses.',
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
