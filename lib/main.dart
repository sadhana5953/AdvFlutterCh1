import 'package:adv_flutter_ch1/Screens/1.4/view/themeView.dart';
import 'package:adv_flutter_ch1/Screens/1.5/quoteProvider/quoteProvider.dart';
import 'package:adv_flutter_ch1/Screens/1.5/view/quotePage.dart';
import 'package:adv_flutter_ch1/home/steper/page1.dart';
import 'package:adv_flutter_ch1/home/steper/page2.dart';
import 'package:adv_flutter_ch1/home/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/1.4/themeProvider/themeProvider.dart';

void main() {
  return runApp(ChangeNotifierProvider(
    create: (context) => quotesProvider(),
    builder: (context, child) => MaterialApp(
        // theme: ThemeData(
      //   brightness: Brightness.light,
      //   colorScheme: ColorScheme.light(
      //     primary: Colors.purple,
      //     secondary: Colors.green,
      //   ),
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   colorScheme:
      //       ColorScheme.dark(primary: Colors.orange, secondary: Colors.blue),
      // ),
      // themeMode: Provider.of<themeProvider>(context).isDark
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => quote(),
        '/changeTheme': (context) => ChangeThemeProvider(),
        '/steper1': (context) => steper(),
        '/steper': (context) => steper2(),
        '/theme': (context) => theme(),
      },
    ),
  ));
}
