import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  List donutOnSale=[
    ["Ice Cream","36",Colors.blue,"lib/images/icecream_donut.png"],
    ["Strawberry","45",Colors.red,"lib/images/strawberry_donut.png"],
    ["Grape Ape","84",Colors.purple,"lib/images/grape_donut.png"],
    ["Choco","95",Colors.brown,"lib/images/choco_donut.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
      itemBuilder:(context,index){
        return DonutTile(
          donutFlavor : donutOnSale[index][0],
          donutPrice : donutOnSale[index][1],
          donutColor : donutOnSale[index][2],
          donutImage : donutOnSale[index][3],
        );
      }
    );
  }
}
