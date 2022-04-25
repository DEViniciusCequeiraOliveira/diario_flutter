import 'package:flutter/material.dart';

class buttonStyle extends StatelessWidget {
  const buttonStyle({Key? key, required this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "${name}",
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        primary: Colors.white,
        fixedSize: Size(double.maxFinite, 50),
      ),
    );
  }
}
