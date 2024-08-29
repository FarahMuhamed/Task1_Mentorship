import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        //foregroundColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 109, 145, 98),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            clipBehavior:
                Clip.none, // Allow overflow of image outside the container
            children: [
              Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 3),
                  color: Colors.black38,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 40, right: 40),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Email ",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 63, 62, 62)),
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 253, 253),
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Colors
                                  .green, 
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password ",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 63, 62, 62)),
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 253, 253),
                          border: OutlineInputBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Colors
                                  .green, 
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: TextButton(
                          onPressed: () {
                            print("");
                          },
                          child: Text(
                            "Forgot Your Password ?",
                            style: TextStyle(color: Colors.blue),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 34, 94, 33),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              const Positioned(
                top:
                    -90, 
                left: 170, 
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage(
                      'assets/images/userIcon.jpg'), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
