import 'package:flutter/material.dart';
import 'package:tamang/homepage.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 60, 20, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.close_outlined, size: 25),
            const SizedBox(height: 30),
            const Text(
              "Find restaurants near you",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 25),
            const Text(
              "Please enter your location or allow access to \n  your location to find reastaurants near you.",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 35),
            SizedBox(
              width: double.infinity,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Homepage()));
                    },
                    child: Align(
                      child: Row(
                        children: [
                          const SizedBox(width: 50),
                          Icon(
                            Icons.near_me,
                            color: Colors.orange[300],
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "Use Current location",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "enter a new address",
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: Colors.black54,
                  ),
                  fillColor: Colors.grey[100],
                  filled: true,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ],
        ),
      ),
    );
  }
}
