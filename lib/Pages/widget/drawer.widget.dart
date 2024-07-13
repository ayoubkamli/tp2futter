import 'package:dwm_app/Pages/widget/drawer.header.dart';
import 'package:dwm_app/Pages/widget/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Mydrawerheader(),
          Mydraweritem(
              title: "Home",
              itemIcon: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          Mydraweritem(
              title: "Counter",
              itemIcon: Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              }),
          Mydraweritem(
              title: "Products",
              itemIcon: Icon(Icons.card_travel),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/product");
              }),
        ],
      ),
    );
  }
}
