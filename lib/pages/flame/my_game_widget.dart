import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:vtb_prehackathon/pages/flame/my_game.dart';

class MyGameWidget extends StatelessWidget {
  const MyGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GameWidget(
        game: MyGame(),
      ),
    );
  }
}
