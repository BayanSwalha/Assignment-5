import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List kittens = [
    "images/kitten1.jfif",
    "images/kitten2.jpg",
    "images/kitten3.jpg",
    "images/kitten4.jfif",
    "images/kitten5.jpg",
    "images/kitten1.jfif",
    "images/kitten2.jpg",
    "images/kitten3.jpg",
    "images/kitten4.jfif",
    "images/kitten5.jpg"
  ];
  List kittenskind = [
    "Tabi",
    "Grey",
    "Orange",
    "Silver",
    "white",
    "Tabi",
    "Grey",
    "Orange",
    "Silver",
    "white"
  ];
  List kittensage = [
    "2-months",
    "1.5-months",
    "3-months",
    "2-months",
    "4-weeks",
    "2-months",
    "1.5-months",
    "3-months",
    "2-months",
    "4-weeks",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: kittens.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.grey,
                  child: ListTile(
                    trailing: Image(image: AssetImage("${kittens[i]}")),
                    isThreeLine: true,
                    title: Text("${kittenskind[i]}"),
                    subtitle: Text("${kittensage[i]}"),
                    leading: Icon(Icons.pets),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
