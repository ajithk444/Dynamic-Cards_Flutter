import 'package:first_app/products.dart';

import 'package:flutter/material.dart';

class ProductManager extends StatefulWidget {
final String initialItem;
ProductManager({this.initialItem="Item 1"});

  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _items = [];
  int counter = 1;
  
  @override
  void initState(){
      _items.add(widget.initialItem);
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child:Row(children: <Widget>[RaisedButton(
            color: Colors.green,
            textColor: Colors.white,
            child: Text('+ Add'),
            onPressed: () {
              setState(() {
                counter++;
                _items.add('Item ' + counter.toString());
                print(_items);
              });
            },
          ),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text('- Remove'),
            onPressed: () {
              setState(() {
                counter--;
                _items.removeLast();
                print(_items);
              });
            },
          ),
          ],)
        ),
        Products(_items)
      ],
    );
  }
}
