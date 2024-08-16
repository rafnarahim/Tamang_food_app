import 'package:flutter/material.dart';
import 'package:tamang/contents.dart';
import 'package:tamang/sign%20in.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(bottom: 60,top: 60),
          child: PageView.builder(
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 100, 10, 10)),
                            Image(
                              image: AssetImage("assets/images/logo.png"),
                              height: 60,
                            ),
                            SizedBox(width: 13),
                            Image(
                              image: AssetImage("assets/images/title.png"),
                              height: 65,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Image(
                          image: AssetImage(contents[i].imageS),height: 300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Image(
                            image: AssetImage(contents[i].discription),
                            height: 150),
                      ),
                    ),
                    const SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Sign()));
                      },
                      child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.orange[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "GET STARTED",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            
                          )),
                    )
                  ],
                );
              })),
    );
  }
}
