import 'package:flutter/material.dart';
import 'package:vtb_prehackathon/pages/compound_interest/compound_interest_page.dart';


class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //body: CompoundInterestInputWidget(),
      body: CompoundInterestPage(),
    );
  }
}
