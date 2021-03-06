

import 'package:flutter/material.dart';
import 'package:grocery/Grocery_store_bloc.dart';
import 'package:grocery/grocery_provider.dart';

import 'grocery_store_list.dart';

const backgroundColor=Color(0XFFF6F5F2);
const cartBarHeight=100.0;
const _panelTransition = Duration(milliseconds: 500);

class GroceryStoreHome extends StatefulWidget {
  @override
  _GroceryStoreHomeState createState() => _GroceryStoreHomeState();
}

class _GroceryStoreHomeState extends State<GroceryStoreHome> {
  @override

  final bloc=GroceryStoreBloc();

  void _onVerticalGesture(DragUpdateDetails details){
    if(details.primaryDelta<-7){
      bloc.changeToCart();

    }else if(details.primaryDelta > 12){
      bloc.changeToNormal();
    }
  }

  double _getTopForWhitePanel(GroceryState state,Size size){
    if (state == GroceryState.normal){
      return -cartBarHeight;
    }else if (state == GroceryState.cart){
      return -(size.height -kToolbarHeight - cartBarHeight/2);
    }
    return 0.0;
  }

  double _getTopFormBlackPanel(GroceryState state,Size size){
    if (state == GroceryState.normal){
      return size.height-kToolbarHeight - cartBarHeight;
    }else if (state == GroceryState.cart){
      return cartBarHeight/2;
    }
    return 0.0;
  }

  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return GroceryProvider(
      bloc: bloc,
      child: AnimatedBuilder(
        animation: bloc,
        builder: (context, _) {
          return Scaffold(
            backgroundColor: Colors.black,
            body:Column(
              children: [
                _AppBarGrocery(),
                Expanded(
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                          duration: _panelTransition,
                          curve: Curves.decelerate,
                          left: 0,
                          top: _getTopForWhitePanel(bloc.groceryState, size),
                          right: 0,
                          height:size.height-kToolbarHeight,
                          child:Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                              )
                            ),
                            child: GroceryStoreList(),
                          )
                      ),
                      AnimatedPositioned(
                          duration: _panelTransition,
                          curve: Curves.decelerate,
                          left: 0,
                          top: _getTopFormBlackPanel(bloc.groceryState, size),
                          right: 0,
                          height:size.height,
                          child:GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              color: Colors.black,
                            )
                          )
                      )
                    ],
                  ),
                )
              ],
            )
          );
        }
      ),
    );
  }
}
class _AppBarGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: kToolbarHeight,
      color: backgroundColor,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          const SizedBox(width: 10,),
          Expanded(
              child: Text(
                "Fruits and Vegetable",
                style: TextStyle(
                    color: Colors.black
                ),
              )
          ),
          const IconButton(
              icon: Icon(Icons.settings),
              onPressed: null)
        ],
      ),
    );
  }
}


