import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContributionRate extends StatelessWidget {
  ContributionRate({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Размер вклада"),
        SizedBox(
          width: 100.0,
          height: 25.0,
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              icon: Icon(Icons.money),
            ),
          ),
        ),
      ],
    );
  }
}
