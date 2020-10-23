import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_nba/models/takim.dart';
import 'package:flutter_app_nba/utils/nba_takim_listesi.dart';

class TakimDetay extends StatelessWidget {
  int gelenindex;
  Takim secilenTakim;

  TakimDetay(this.gelenindex);

  @override
  Widget build(BuildContext context) {
    secilenTakim = NbaListesi.tumTakimlar[gelenindex];

    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.blue,
            title: Text(secilenTakim.takimAdi + " tarihi", style: TextStyle(color: Colors.black87),)
            ,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenTakim.takimBuyukResim, fit: BoxFit.cover,),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(secilenTakim.takimAnlami),
            ),
          ),
        ],
      ),
    );
  }
}