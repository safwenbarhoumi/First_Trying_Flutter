import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Devil Main Try 5'),
        ),
        body: Column(
          children: [
            Container(
              child: Image.asset(
                  "Assets/nfs.jpg"
              ),
              padding: EdgeInsets.fromLTRB(15, 20, 15,20),
            ),
            Container(
              child: Text(
                  "Un texte est une série orale ou écrite de mots"
                      " perçus comme constituant un ensemble c"
                      "ohérent, porteur de sens et utilisant le"
                      "s structures propres à une langue. "
                      "Un texte n'a pas de longueur d"
                      "éterminée sauf dans le cas de poèmes à "
                      "forme fixe comme le sonnet ou le haïku."
              ),
              padding: EdgeInsets.all(15),
            ),
            Container(
              child: Text(
                "200 TND",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                ),
              ),
              padding: EdgeInsets.fromLTRB(5, 50, 5, 50),
            ),
            Container(

              child: ElevatedButton.icon(onPressed: (){
                print("**************************************************");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              } ,

                icon: Icon(Icons.shop),
                label: Text("Acheter"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent //elevated btton background color
                ),

              ),

            )
          ],
        ),
      ),
    );
  }
}








class SecondRoute extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Route"),
        ),
        body: Center(
          child: ElevatedButton.icon(onPressed: (){
            print("You pressed Icon Elevated Button");
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },

            icon: Icon(Icons.shop),
            label: Text("Acheter"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent //elevated btton background color
            ),

          ),

        ),
      ),

    );
  }
}