import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/sign%20in.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

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
          Text("Reset email sent", style: GoogleFonts.actor(fontSize: 30)),
          const SizedBox(height: 8),
          const Text("We have sent an instructions email to",
              style: TextStyle(fontSize: 15, color: Colors.black45)),
          Row(
            children: [
              const Text("rafnarahim@gmail.com.    ",
                  style: TextStyle(fontSize: 15, color: Colors.black45)),
              Text(
                "Having problem?",
                style: TextStyle(color: Colors.orange[300]),
              )
            ],
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Sign()));
            },
            child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.orange[300],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "SEND AGAIN",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
