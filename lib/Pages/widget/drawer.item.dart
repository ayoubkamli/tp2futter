import 'package:flutter/material.dart';

class Mydraweritem extends StatelessWidget {
  late String title;
  late Icon itemIcon;
  late Function onTap;
  Mydraweritem(
      {Key? key,
      required this.title,
      required this.itemIcon,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
      onTap: () => onTap(),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
