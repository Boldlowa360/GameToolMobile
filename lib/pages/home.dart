import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              //Ajouter l'ouverture de l'overlay du choix de la page
            },
            icon: Icon(Icons.menu)
        ),
        title: Text("GameHelper",
        style: TextStyle(fontSize: 30),),
        actions: [
          IconButton(
              onPressed: () {
                //Ajouter l'ouverture de la page settings
              },
              icon: Icon(Icons.settings)
          )
        ],
        elevation: 4.0,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(child: Text("Tools",
                style: TextStyle(fontSize: 24)
            )),
          ),
          toolButton("Dice roll"),
          toolButton("Counters"),

        ],
      )
    );
  }
}

ElevatedButton toolButton(String tool){
  return ElevatedButton(
    onPressed: (){
      switch(tool){
        case("Dice roll"):
        {
          break;
        }
      }
    },
    child: Text(tool,
      style: TextStyle(color: Colors.black,fontSize: 15),
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(250, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      )
    ),
  );
}
