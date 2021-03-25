import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/groceryProducts.dart';

enum GroceryState{
  normal,
  detail,
  cart
}

class GroceryStoreBloc with ChangeNotifier{
 GroceryState groceryState=GroceryState.normal;
 List<GroceryProduct> cataolog=List.unmodifiable(groceryProducts);

 void changeToNormal(){
   groceryState=GroceryState.normal;
   notifyListeners();
 }

 void changeToCart(){
   groceryState=GroceryState.cart;
   notifyListeners();
 }

}