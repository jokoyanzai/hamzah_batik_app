import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 128, 179, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                child: const Image(
                  image: AssetImage("images/logo-hb.png"),
                  width: 300,
                  fit: BoxFit.contain,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Text('Daftar'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 116,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          "atau",
                        )),
                    const SizedBox(
                        width: 116,
                        child: Divider(
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {},
                child: const Text('Masuk'),
              ),
            ],
          ),
        ));
  }
}
