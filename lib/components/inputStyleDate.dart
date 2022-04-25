import 'package:flutter/material.dart';

class inputStyleDate extends StatelessWidget {
  const inputStyleDate({Key? key, required this.inputName, required this.hintTextName}) : super(key: key);

  final String? inputName;
  final String? hintTextName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${inputName}",
          style: TextStyle(fontSize: 20, fontFamily: "MPLUSRounded1c"),
        ),
        TextField(
          decoration: InputDecoration(hintText: "${hintTextName}"),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
