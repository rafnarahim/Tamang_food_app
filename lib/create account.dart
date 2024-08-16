import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/sign%20up.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 50, 30, 15),
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
              "Create Account",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Text(
              "Enter your Name, Email and Password",
              style: TextStyle(color: Colors.grey[500], fontSize: 15),
            ),
            Row(
              children: [
                Text(
                  "for sign up.  ",
                  style: TextStyle(color: Colors.grey[500], fontSize: 15),
                ),
                Text("Already have account?",
                    style: TextStyle(color: Colors.orange[300]))
              ],
            ),
            const SizedBox(height: 25),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "FULL NAME",
                  style: GoogleFonts.actor(color: Colors.grey),
                )),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("rafna rahim"),
                Icon(Icons.check, color: Colors.orange[300], size: 20)
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Text(
              "EMAIL ADDRESS",
              style: GoogleFonts.actor(color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("rafnarahim@gmail.com"),
                Icon(Icons.check, color: Colors.orange[300], size: 20)
              ],
            ),
            const Divider(),
            const SizedBox(height: 15),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("********"),
                Icon(Icons.check, color: Colors.orange[300], size: 20)
              ],
            ),
            const Divider(),
            const SizedBox(height: 14),
            const SizedBox(height: 15),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Container(
                    height: 50,
                    width: 300,
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
            ),
            const SizedBox(height: 14),
            const Center(
                child: Text("By Signing up you agree to our Terms",
                    style: TextStyle(fontSize: 15, color: Colors.black45))),
            const Center(
                child: Text("conditions & privact policy.",
                    style: TextStyle(fontSize: 15, color: Colors.black45))),
            const SizedBox(height: 15),
            const Image(image: AssetImage("assets/images/Social accounts.png"))
          ],
        ),
      ),
    );
  }
}
