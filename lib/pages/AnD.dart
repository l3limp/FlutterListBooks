import 'package:flutter/material.dart';

class Angels extends StatefulWidget {
  const Angels({Key key}) : super(key: key);

  @override
  _AngelsState createState() => _AngelsState();
}

class _AngelsState extends State<Angels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Angels and Demons'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          SizedBox(height:40.0),
          Image.network(
              'https://www.thoughtco.com/thmb/-c8auZoJBMugNpxbqWP1nBUt3Oc=/735x0/angels_demons-56a095a45f9b58eba4b1c6d9.JPG',
              height: 500.0
          ),
          SizedBox(height:40.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'When Harvard symbologist Robert Langdon discovers the resurgence of an ancient brotherhood known as the Illuminati, he flies to Rome to warn the Vatican, the Illuminatis most hated enemy. Joining forces with beautiful Italian scientist Vittoria Vetra (Ayelet Zurer), Langdon follows a centuries-old trail of ancient symbols in the hope of preventing the Illuminatis deadly plot against the Roman Catholic Church from coming to fruition.',
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
