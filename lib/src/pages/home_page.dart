import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerfernando/src/providers/heroesinfo.dart';
import 'package:providerfernando/src/widgets/super_floatingaction.dart';
import 'package:providerfernando/src/widgets/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
