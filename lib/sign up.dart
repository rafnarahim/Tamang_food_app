import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/number.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 50, 20, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.arrow_back_ios_new_rounded),
                const SizedBox(
                  width: 30,
                ),
                Text("Login to Tamang Food ",
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500))
              ],
            ),
            Text("Services",
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w500)),
            const SizedBox(height: 22),
            const Text(
              "Get Started with Foodly",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 17),
            Text(
              "Enter your phone number to use foodly and",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            Text(
              "enjoy your food:)",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "PHONE NUMBER",
                style: GoogleFonts.actor(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Image(
                  image: AssetImage("assets/images/flag.png"),
                  height: 20,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                  color: Colors.black54,
                ),
                SizedBox(width: 6),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "+91 ", style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "8738095960",
                        style: TextStyle(color: Colors.black54))
                  ]),
                )
              ],
            ),
            const SizedBox(height: 75),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Number()));
              },
              child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
