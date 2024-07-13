import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Build...");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter => ${counter}"),
      ),
      body: Center(
        child: Text("Counter Value = ${counter}"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {
              setState(() {
                counter--;
              });

              print(counter);
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: "plus",
            onPressed: () {
              setState(() {
                counter++;
              });
              print(counter);
            },
            child: Icon(Icons.add),
          )
        ],
      ), //botton flottant
    );
  }
}
