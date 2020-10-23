import 'package:flutter/material.dart';
import 'package:flutter_app_nba/models/takim.dart';
import 'package:flutter_app_nba/takim_bilgileri/strings_takimlar.dart';
import 'package:flutter_app_nba/utils/nba_takim_detay.dart';

class NbaListesi extends StatelessWidget {
  static List<Takim> tumTakimlar = veriKaynaginiHazirla();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Text("NBA Takımları"),
      ),
      body: listeyiHazirla(),
    );
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirTakim(context, index);
      },
      itemCount: tumTakimlar.length,
    );
  }

  Widget tekSatirTakim(BuildContext context, int index) {
    Takim oAnEklenenTakim = tumTakimlar[index];
    return Card(
      elevation: 4,
      child: ListTile(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => TakimDetay(index))),
        leading: Image.asset("images/" + oAnEklenenTakim.takimKucukResim),
        title: Text(oAnEklenenTakim.takimAdi, style: TextStyle(fontSize: 22)),
        subtitle: Text(
          oAnEklenenTakim.takimtarihi,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}

List<Takim> veriKaynaginiHazirla() {
  List<Takim> takimlar = [];
  for (int i = 0; i < 28; i++) {
    String kucukResim = Strings.TAKIM_ADLARI[i] + "_kucuk.png";

    String buyukResim = Strings.TAKIM_ADLARI[i] + "_buyuk.png";
    //debugPrint(kucukResim);

    Takim eklenecekTakim = Takim(
        Strings.TAKIM_ADLARI[i],
        Strings.TAKIM_TARIHI[i],
        Strings.TAKIM_ISIM_ANLAMI[i],
        kucukResim,
        buyukResim);
    takimlar.add(eklenecekTakim);
  }
  //debugPrint(takimlar.length.toString());
  return takimlar;
}
