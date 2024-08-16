import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/reset%20email.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.fromLTRB(30, 50, 30, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios_new_rounded),
              const SizedBox(
                width: 60,
              ),
              Text("Forgot Password",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(height: 30),
          Text("Forgot Password", style: GoogleFonts.actor(fontSize: 30)),
          const SizedBox(height: 8),
          const Text("Enter your emial address and we will",
              style: TextStyle(fontSize: 15, color: Colors.black45)),
          const Text("send you a reset innstructions.",
              style: TextStyle(fontSize: 15, color: Colors.black45)),
          const SizedBox(height: 25),
          const Text("EMAIL ADDRESS", style: TextStyle(color: Colors.black54)),
          const TextField(),
          const SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Reset(),
                ),
              );
            },
            child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.orange[300],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "RESET PASSWORD",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
