import 'package:flutter/material.dart';

class Laugh extends StatefulWidget {
  const Laugh({Key key}) : super(key: key);

  @override
  _LaughState createState() => _LaughState();
}

class _LaughState extends State<Laugh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Laughing Gas'
        ),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/3/3f/LaughingGas.jpg/220px-LaughingGas.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
              'He is 28, unmarried, and has a face like a gorilla. As the new head of his family, he is assigned a delicate task by his Aunt Clara and by Plimsoll, the family lawyer: He is to go to Hollywood and look for Aunt Claras son, his cousin Eggy, who seems to have gotten himself into trouble, and bring him back home.',
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
