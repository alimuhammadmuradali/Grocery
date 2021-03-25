import 'package:flutter/material.dart';
import 'package:grocery/StaggeredDualView.dart';
import 'package:grocery/grocery_provider.dart';


import 'grocery_store_home.dart';

class GroceryStoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc=GroceryProvider.of(context).bloc;
    return Container(
      color: backgroundColor,
      child: StaggeredDualView(
        ItemCount: bloc.cataolog.length,
        itemBuilder: (context,index){
          final product = bloc.cataolog[index];
          return Card(
            elevation: 10,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(product.image,fit: BoxFit.cover,height: 100,)
              ],
            ),
          );
        } ,
      ),
    );
      /*ListView.builder(
      padding: const EdgeInsets.only(top:cartBarHeight),
      itemCount: bloc.cataolog.length,
        itemBuilder: (context,index){
          return Container(
            height: 100,
            width: 100,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }
    );*/
  }
}
