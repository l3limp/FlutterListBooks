import 'package:cards/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatefulWidget {

  final Book book;
  final Function delete;
  final Function nextPage;
  BookCard({this.book, this.delete, this.nextPage});

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[100],
      margin : EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.book.name,
                      style : TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      widget.book.author,
                      style: TextStyle(
                        color : Colors.grey[500],
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage('${widget.book.icon}'),
                  radius: 28.0,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                TextButton(
                  onPressed: widget.delete,
                  child : Padding(
                    padding : EdgeInsets.symmetric(vertical:16.0, horizontal: 10.0),
                      child : Row(
                        children: [
                          Icon(Icons.delete),
                          Text('Delete'),
                        ],
                      ),
                    ),
                ),
                TextButton(onPressed: widget.nextPage,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical:16.0, horizontal: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.navigate_next_sharp),
                        Text('View'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}