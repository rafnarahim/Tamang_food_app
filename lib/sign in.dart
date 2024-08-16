import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/create%20account.dart';
import 'package:tamang/forgot%20password.dart';
import 'package:tamang/location.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.arrow_back_ios_new_rounded),
                const SizedBox(
                  width: 100,
                ),
                Text("Sign In",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "Welcome to Tamang  " //
              "Food services",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Text(
              "Enter your Phone number or Email",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            Text(
              "address for sign in.Enjoy your food :)",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "EMAIL ADDRESS",
                style: GoogleFonts.actor(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("rafnarahim@gmail.com"),
                Icon(Icons.check, color: Colors.orange[300], size: 20)
              ],
            ),
            const Divider(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PASSWORD",
                  style: GoogleFonts.actor(color: Colors.grey),
                ),
                const Icon(
                  Icons.visibility_off,
                  size: 20,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text("********"),
            const Divider(),
            const SizedBox(height: 14),
            Center(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Password()));
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.grey),
              ),
            )),
            const SizedBox(height: 15),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Location()));
                },
                child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 15),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Account()));
                },
                child: Text.rich(TextSpan(children: [
                  const TextSpan(
                      text: "Don't have account?   ",
                      style: TextStyle(color: Colors.grey)),
                  TextSpan(
                      text: "Create new account",
                      style: TextStyle(color: Colors.orange[300]))
                ])),
              ),
            ),
            const SizedBox(height: 15),
            const Image(image: AssetImage("assets/images/Social accounts.png"))
          ],
        ),
      ),
    );
  }
}
