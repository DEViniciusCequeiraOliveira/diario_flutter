import 'package:flutter/material.dart';

class inputTextStyle extends StatelessWidget {
  const inputTextStyle(
      {Key? key,
      required this.nome,
      required this.hintName,
      this.isPassword = false})
      : super(key: key);

  final String? nome;
  final String? hintName;
  final bool? isPassword;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${nome}",
          style: TextStyle(fontSize: 20, fontFamily: "MPLUSRounded1c"),
        ),
        isPassword!
            ? TextField(
                obscureText: isPassword!,
                decoration: InputDecoration(
                  hintText: "${hintName}",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              )
            : TextField(
                decoration: InputDecoration(hintText: "${hintName}"),
              ),
      ],
    );
  }
}
