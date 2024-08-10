import 'package:flutter/material.dart';

import 'package:digilogtvjp/pages/loadingpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    title: "Digilog TV - 日本版",
    home: LoadingPage(),
  ));
}
