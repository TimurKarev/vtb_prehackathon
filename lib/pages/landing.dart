import 'package:flutter/material.dart';
import 'package:vtb_prehackathon/pages/compound_interest/compound_interest_page.dart';
import 'package:vtb_prehackathon/pages/flame/my_game_widget.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //body: CompoundInterestInputWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompoundInterestPage()),
                );
              },
              child: Text("График"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyGameWidget()),
                );
              },
              child: Text("Flame"),
            ),
          ],
        ),
      ),
    );
  }
}
