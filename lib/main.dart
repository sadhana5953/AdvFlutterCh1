import 'package:adv_flutter_ch1/home/steper/page1.dart';
import 'package:adv_flutter_ch1/home/steper/page2.dart';
import 'package:adv_flutter_ch1/home/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => theme(),
        '/steper':(context) => steper2(),
        '/theme':(context) => theme(),
      },
    )
  );
}


