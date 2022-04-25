import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_flutter/components/buttonStyle.dart';
import 'package:login_flutter/components/inputStyleDate.dart';
import 'package:login_flutter/components/titlePage.dart';
import 'package:login_flutter/screen/loginPage.dart';

class forgotPasswordPage extends StatelessWidget {
  const forgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avaibleHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: false,
            expandedHeight: avaibleHeight * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/person.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: avaibleHeight,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.grey,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titlePage(title: "Forgot password"),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            inputStyleDate(
                                inputName: "Email",
                                hintTextName: "Your email id"),
                            SizedBox(
                              height: 15,
                            ),
                            buttonStyle(name: "Submit"),
                            SizedBox(
                              height: 15,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => loginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Back to login",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
