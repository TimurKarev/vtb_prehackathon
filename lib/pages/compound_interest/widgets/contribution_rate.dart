import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputWidget extends StatelessWidget {
  final String titleText;
  final Icon icon;
  final Function function;

  InputWidget(
      {Key? key,
      required this.titleText,
      required this.icon,
      required this.function})
      : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleText),
        SizedBox(
          width: 100.0,
          height: 25.0,
          child: TextFormField(
            controller: controller,
            onChanged: (_) => function(double.parse(controller.text)),
            decoration: InputDecoration(
              icon: icon,
            ),
          ),
        ),
      ],
    );
  }
}
