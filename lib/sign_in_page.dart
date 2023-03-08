import 'package:flutter/material.dart';

void main() {
  runApp(const SignInPage());
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFf9f9f9),
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFFD9D9D9),
        // ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 63.0),
              Container(
                // tombol kembali (back arrow)
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [Icon(Icons.arrow_back_ios), Text("Kembali")],
                ),
              ),
              Container(
                // card box
                margin: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffD9D9D9), width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(34),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Form(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                labelText: "email",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                                labelText: "password",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                          ),
                        ],
                      )),
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text("Ingat password?"),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Lupa Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 34),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                ),
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
              ), //divider atau
              Container(
                width: 282,
                height: 45,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffD9D9D9), width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('images/google.png'),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Masuk dengan Google",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
