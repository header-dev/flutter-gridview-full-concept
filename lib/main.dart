import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View All Widget'),
      ),
      body: GridView.builder(
          itemCount: 7,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, i) => ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: buildGridTile(context, i),
              )),
    );
  }

  Widget buildGridTile(BuildContext context, int i) => GridTile(
        child: Image.network(
          'https://picsum.photos/250?random=$i',
          fit: BoxFit.cover,
        ),
      );
}
