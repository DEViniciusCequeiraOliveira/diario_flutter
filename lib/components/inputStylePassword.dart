import 'package:flutter/material.dart';

class inputStylePassword extends StatefulWidget {
  inputStylePassword({Key? key, this.namePassword = "Password"})
      : super(key: key);

  final String? namePassword;

  @override
  State<inputStylePassword> createState() => _inputStylePasswordState();
}

class _inputStylePasswordState extends State<inputStylePassword> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.namePassword}",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "MPLUSRounded1c",
          ),
        ),
        TextField(
          obscureText: _passwordVisible,
          decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: IconButton(
                icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility),
                onPressed: _toggle),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  void _toggle() {
    setState(
      () {
        _passwordVisible = !_passwordVisible;
      },
    );
  }
}
