import 'package:flutter/material.dart';

import 'grocery_store_home.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GroceryStoreHome(),
    );
  }
}
