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
    Book(name : 'Robinson Crusoe', author: 'Daniel Defoe', number : 1),
    Book(name: 'Treasure Island', author: ' R L Stevenson', number : 2),
    Book(name: 'The Count of Monte Cristo', author : 'Alexander Dumas', number : 3),
    Book(name : '20,000 leagues under the sea', author: 'Jules Verne', number : 4),
    Book(name:'Angels and Demons', author : 'Dan Brown', number : 5),
    Book(name: 'To the Hilt', author: 'Dick Francis', number: 6),
    Book(name: 'Laughing Gas', author:'P G Wodehouse', number : 7),
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


