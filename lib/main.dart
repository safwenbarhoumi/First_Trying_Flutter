//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset("Assets/nfs.jpg"),
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          ),
          Container(
            child: Text("Un texte est une série orale ou écrite de mots"
                " perçus comme constituant unaa  ensemble c"
                "ohérent, porteur de sens et utilisant le"
                "s structures propres à une langue. "
                "Un texte n'a pas de longueur d"
                "éterminée sauf dans le cas de poèmes à "
                "forme fixe comme le sonnet ou le haïku."),
            padding: EdgeInsets.all(15),
          ),
          Container(
            child: Text(
              "200 TND",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.fromLTRB(5, 50, 5, 50),
          ),
          Container(
            child: ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset("Assets/dmc5.jpg"),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Mot de passe '),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Année de naissance'),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Adresse de facturation'),
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: ElevatedButton(
                    child: const Text(' S inscrire '),
                    onPressed: () {},
                  ),
                  padding: EdgeInsets.fromLTRB(90, 20, 5, 10),
                ),
                Container(
                  child: ElevatedButton(
                    child: const Text('Annuler'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstRoute()));
                    },
                  ),
                  padding: EdgeInsets.fromLTRB(10, 20, 5, 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
