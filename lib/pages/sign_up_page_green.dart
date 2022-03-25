import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_databases/pages/sign_in_page_green.dart';
import 'package:local_databases/pages/sign_up_page.dart';

class SignUpGreen extends StatefulWidget {
  const SignUpGreen({Key? key}) : super(key: key);

  static const String id = "sign_up_page_green";

  @override
  State<SignUpGreen> createState() => _SignUpGreenState();
}

class _SignUpGreenState extends State<SignUpGreen> {
  TextEditingController emailNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 60,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/image/user.png"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 31, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        topLeft: Radius.circular(45))),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    TextField(
                      controller: emailNamecontroller,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                        hintText: "Urmail@gmail.com",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    TextField(
                      controller: passwordcontroller,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,
                            color: Colors.blueGrey),
                        child: MaterialButton(
                          color: Colors.teal,
                          onPressed: () {},
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                        const Text(
                          "OR",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Container(
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 25,
                          width: 25,
                          child: Text(
                            "f",
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/image/twitter.png"),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("asset/image/instagram.png"))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, SignInPageGreen.id);
                          },
                          child: const Text(
                            "SIGN UP ",
                            style: TextStyle(color: Colors.teal),
                          ),
                        ),
                      ],
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
