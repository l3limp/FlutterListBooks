import 'package:cards/pages/20000leagues.dart';
import 'package:cards/pages/Hilt.dart';
import 'package:cards/pages/LaughingGas.dart';
import 'package:cards/pages/RobinsonCrusoe.dart';
import 'package:cards/pages/TheCount.dart';
import 'package:cards/pages/TreasureIsland.dart';
import 'package:flutter/material.dart';
import 'package:cards/book.dart';
import 'package:cards/book_card.dart';
import 'package:cards/pages/AnD.dart';


void main() {
  runApp(MaterialApp(
    theme : ThemeData(primaryColor: Colors.teal),
    routes: {
      '/' : (context) => Books(),
      '/3' : (context) => MonteCristo(),
      '/1' : (context) => Robinson(),
      '/2' : (context) => Treasure(),
      '/4' : (context) => Leagues(),
      '/5' : (context) => Angels(),
      '/6' : (context) => Hilt(),
      '/7' : (context) => Laugh(),
    },
  ));
}
class Books extends StatefulWidget {
  const Books({Key key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {

  List<Book> books = [
    Book(name : 'Robinson Crusoe', author: 'Daniel Defoe', number : 1, icon : 'https://m.media-amazon.com/images/I/51ZtxTM0DlL._SY346_.jpg'),
    Book(name : 'Treasure Island', author: 'R L Stevenson', number : 2, icon : 'https://cdn3.volusion.com/jtoq7.b7owf/v/vspfiles/photos/TREASURE_ISLAND-2.jpg'),
    Book(name: 'The Count of Monte Cristo', author : 'Alexander Dumas', number : 3, icon : 'https://images-na.ssl-images-amazon.com/images/I/51RJrYf6-BL._SX339_BO1,204,203,200_.jpg'),
    Book(name : '20,000 leagues under the sea', author: 'Jules Verne', number : 4, icon : 'https://149351943.v2.pressablecdn.com/wp-content/uploads/2018/06/IMG_6805-324x482.jpg'),
    Book(name:'Angels and Demons', author : 'Dan Brown', number : 5, icon : 'https://www.thoughtco.com/thmb/-c8auZoJBMugNpxbqWP1nBUt3Oc=/735x0/angels_demons-56a095a45f9b58eba4b1c6d9.JPG'),
    Book(name: 'To the Hilt', author: 'Dick Francis', number: 6, icon : 'https://images-na.ssl-images-amazon.com/images/I/51JYdckX9+L._SX309_BO1,204,203,200_.jpg'),
    Book(name: 'Laughing Gas', author:'P G Wodehouse', number : 7, icon : 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3f/LaughingGas.jpg/220px-LaughingGas.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
        backgroundColor: Colors.teal[800],
        centerTitle: true,
      ),
      body: ListView(
        children: books.map((bookPass) => BookCard(
            book : bookPass,
          delete : (){
              setState(() {
                books.remove(bookPass);
              });
          },
          nextPage : (){
              Navigator.pushNamed(context, '/${bookPass.number}');
          },
        )).toList(),
      ),
    );
  }
}


