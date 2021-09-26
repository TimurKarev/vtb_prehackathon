import 'package:flutter/material.dart';
import 'package:vtb_prehackathon/timur/screens/animation_bar_default.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SimpleBarChart.withSampleData(),//SimpleBarChart.withSampleData(),
    );
  }
}
