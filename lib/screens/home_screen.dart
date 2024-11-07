import 'package:flutter/material.dart';

import '../model/model_file.dart';


class ShoppingListScreen extends StatefulWidget {
  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  // Define a list of shopping items
  List<ShoppingItem> shoppingList = [
    ShoppingItem(name: 'Milk'),
    ShoppingItem(name: 'Bread'),
    ShoppingItem(name: 'Eggs'),
    ShoppingItem(name: 'Cheese'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView.builder(
        itemCount: shoppingList.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(shoppingList[index].name),
            value: shoppingList[index].isPurchased,
            onChanged: (bool? value) {
              setState(() {
                shoppingList[index].isPurchased = value!;
              });
            },
          );
        },
      ),
    );
  }
}
