import 'package:flutter/material.dart';
import 'package:book_app/models/cart_books.dart';

class cart extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
        ],
      ),
      body: new cartbooks(),
      bottomNavigationBar: new Container(
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: new Text('Total:'),
                subtitle: new Text("\L\E 350"),
              ),
            ),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text('check out',
                style: TextStyle(color: Colors.white,)
                ),
              color: Colors.red,)
            ),
          ],
        ),
      ),
    );
  }
}
