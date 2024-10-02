import 'package:flutter/material.dart';
import 'package:digilogtvjp/pages/loadingpage.dart';

//AdmobCode
import 'package:google_mobile_ads/google_mobile_ads.dart';
//AdmobCode

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //AdmobCode
  MobileAds.instance.initialize();
  //AdmobCode

  runApp(const MaterialApp(
    title: "Digilog TV - 日本版",
    home: LoadingPage(),
  ));
}