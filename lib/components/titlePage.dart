import 'package:flutter/material.dart';

class titlePage extends StatelessWidget {
  const titlePage({Key? key, required this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${title}",
      style: TextStyle(
        fontSize: 38,
        fontFamily: "Times New Roman",
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
