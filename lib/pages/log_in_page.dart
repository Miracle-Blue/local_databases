import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_databases/pages/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  static const String id = "log_in_page";

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("asset/image/user.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Sign in to continue",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            TextField(
              controller: userNamecontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "User Name",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.person_alt,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordcontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.padlock_solid,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.white24),
                )),
            Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blueAccent),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account ? ",
                  style: TextStyle(color: Colors.white24),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignUpPage.id);
                    },
                    child: const Text(
                      "SIGN UP ",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
