import 'package:flutter/material.dart';
import 'package:login_flutter/components/buttonStyle.dart';
import 'package:login_flutter/components/inputStyleDate.dart';
import 'package:login_flutter/components/inputStylePassword.dart';
import 'package:login_flutter/components/titlePage.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({Key? key}) : super(key: key);

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
                      titlePage(title: "Sign-up"),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            inputStyleDate(
                              inputName: "Nome",
                              hintTextName: "Your name",
                            ),
                            inputStyleDate(
                              inputName: "Email",
                              hintTextName: "Your email-id",
                            ),
                            inputStyleDate(
                              inputName: "Contact no.",
                              hintTextName: "Your contact number",
                            ),
                            inputStylePassword(),
                            inputStylePassword(namePassword: "Confirm password",),
                            buttonStyle(name: "Sign up")
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
