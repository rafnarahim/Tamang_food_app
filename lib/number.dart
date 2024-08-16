import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tamang/location.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 50, 20, 15),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new_rounded),
                  const SizedBox(width: 70),
                  Text("Login to foodly",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                "Verify phone number",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 17),
              Text(
                "Enter the 4-Digit code sent to you at",
                style: TextStyle(color: Colors.grey[500], fontSize: 15),
              ),
              Text(
                "+91 8738095960",
                style: TextStyle(color: Colors.grey[500], fontSize: 15),
              ),
              const SizedBox(height: 30),
              Form(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 68,
                    width: 50,
                    child: TextField(
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 50,
                    child: TextField(
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 50,
                    child: TextField(
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 50,
                    child: TextField(
                      style: Theme.of(context).textTheme.headlineMedium,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  )
                ],
              )),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Location()));
                },
                child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
              ),
              const SizedBox(height: 25),
              Text.rich(
                TextSpan(children: [
                  const TextSpan(text: "Dont recieve code?   "),
                  TextSpan(
                      text: "Resend Again",
                      style: TextStyle(color: Colors.orange[300]))
                ]),
              ),
              const SizedBox(height: 35),
              const Text(
                "By signing up you agree to our Terms \n              Conditions & privacy",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
