import 'package:flutter/material.dart';
import 'package:flutter_app_nba/utils/nba_takim_listesi.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "NBA",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NbaListesi(),

    );
  }
  
  
  
}