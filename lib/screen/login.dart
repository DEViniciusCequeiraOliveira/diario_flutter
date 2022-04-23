import 'package:flutter/material.dart';
import 'package:login_flutter/components/inputTextStyle.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Image.asset(
              "images/person.png",
              width: double.maxFinite,
              height: 275,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 175,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.grey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log-in",
                      style: TextStyle(
                        fontSize: 38,
                        fontFamily: "Times New Roman",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(28),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          inputTextStyle(
                            nome: "Email",
                            hintName: "Your email id",
                          ),
                          SizedBox(height: 10),
                          inputTextStyle(
                            nome: "Password",
                            hintName: "Password",
                            isPassword: true,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(primary: Colors.white),
                            child: Text(
                              "Forget password?",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "MPLUSRounded1c",
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                              primary: Colors.white,
                              fixedSize: Size(double.maxFinite, 50),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
