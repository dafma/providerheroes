import 'package:flutter/material.dart';
import 'package:providerfernando/src/pages/home_page.dart';

import 'package:provider/provider.dart';
import 'package:providerfernando/src/providers/heroesinfo.dart';
import 'package:providerfernando/src/providers/villanosInfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroesInfo()),
        ChangeNotifierProvider(create: (context) => VillanosInfo()),
      ],
      child: MaterialApp(title: 'Flutter Demo', initialRoute: 'home', routes: {
        'home': (context) => HomePage(),
      }),
    );
  }
  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => HeroesInfo(),
  //     child: MaterialApp(title: 'Flutter Demo', initialRoute: 'home', routes: {
  //       'home': (context) => HomePage(),
  //     }),
  //   );
  // }
}
