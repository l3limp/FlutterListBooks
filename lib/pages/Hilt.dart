import 'package:flutter/material.dart';

class Hilt extends StatefulWidget {
  const Hilt({Key key}) : super(key: key);

  @override
  _HiltState createState() => _HiltState();
}

class _HiltState extends State<Hilt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'The Count of Monte Cristo'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.network('https://images-na.ssl-images-amazon.com/images/I/51JYdckX9+L._SX309_BO1,204,203,200_.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'Alexander Kinoch loves his life painting on a remote Scottish mountain. When some thugs roll up and rough him up and Alexander is dragged into a real and violent world where millions of pounds are missing and a valuable racehorse is under threat and his stepfather is sick from worry, stress and harassed on all sides. With the help of some surprising friends, he takes on the hard boys and the jealousy of his step-sister to put matters right.',
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
