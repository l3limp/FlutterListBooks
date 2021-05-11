import 'package:flutter/material.dart';

class MonteCristo extends StatefulWidget {
  const MonteCristo({Key key}) : super(key: key);

  @override
  _MonteCristoState createState() => _MonteCristoState();
}

class _MonteCristoState extends State<MonteCristo> {
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
          Image.network('https://images-na.ssl-images-amazon.com/images/I/51RJrYf6-BL._SX339_BO1,204,203,200_.jpg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical :0.0, horizontal: 18.0),
            child: Text(
                'The Count of Monte Cristo is an adventure novel written by French author Alexandre Dumas completed in 1844\n     At the age of nineteen, Edmond Dantès seems to have the perfect life. He is about to become the captain of a ship, he is engaged to a beautiful and kind young woman, Mercédès, and he is well liked by almost everyone who knows him. This perfect life, however, stirs up dangerous jealousy among some of Dantès’s so-called friends. Danglars, the treasurer of Dantès’s ship, envies Dantès’s early career success; Fernand Mondego is in love with Dantès’s fiancée and so covets his amorous success; his neighbor Caderousse is simply envious that Dantès is so much luckier in life than he is.',
                style : TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 0.5
                ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.teal[100],
    );
  }
}

