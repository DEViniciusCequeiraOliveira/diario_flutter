import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_flutter/components/buttonStyle.dart';
import 'package:login_flutter/components/inputStyleDate.dart';
import 'package:login_flutter/components/inputStylePassword.dart';
import 'package:login_flutter/components/titlePage.dart';
import 'package:login_flutter/screen/signUpPage.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool _passwordVisible = true;
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
                      titlePage(title: "Log-in"),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            inputStyleDate(
                              inputName: "Email",
                              hintTextName: "Your email id",
                            ),
                            inputStylePassword(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    shadowColor: Colors.black,
                                  ),
                                  child: Text(
                                    "Forget password?",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "MPLUSRounded1c",
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            buttonStyle(name: "Login"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account ?",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    shadowColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => signUpPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Sign-up",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Or login with",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
