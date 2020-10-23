import 'package:flutter/material.dart';

class Takim {

  String _takimAdi;
  String _takimtarihi;
  String _takimAnlami;
  String _takimKucukResim;
  String _takimBuyukResim;

  Takim(this._takimAdi,this._takimtarihi,this._takimAnlami,this._takimKucukResim,this._takimBuyukResim);


  String get takimAdi => _takimAdi;

  set takimAdi(String value) {
    _takimAdi = value;
  }


  String get takimtarihi => _takimtarihi;

  String get takimBuyukResim => _takimBuyukResim;

  set takimBuyukResim(String value) {
    _takimBuyukResim = value;
  }

  String get takimKucukResim => _takimKucukResim;

  set takimKucukResim(String value) {
    _takimKucukResim = value;
  }

  String get takimAnlami => _takimAnlami;

  set takimAnlami(String value) {
    _takimAnlami = value;
  }

  set takimtarihi(String value) {
    _takimtarihi = value;
  }
}