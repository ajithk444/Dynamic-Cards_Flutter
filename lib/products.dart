import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> items;
  Products(this.items){
    print('Products constructor');
  }

  @override
  Widget build(BuildContext context) {
        print('Products build');

    return Column(
      children: items
          .map((item) => Card(
                child: Column(
                  children: <Widget>[
                    //Row(children: <Widget>[InputChip(label: Text(item), avatar: Image.asset('assets/profile_icon.png'),),],) ,
                    Image.asset('assets/offer1.jpg',height: 330.0,),
                    Text(item)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
