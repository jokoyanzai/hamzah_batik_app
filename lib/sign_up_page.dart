import 'package:flutter/material.dart';

void main() {
  runApp(const SignUpPage());
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 63),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [Icon(Icons.arrow_back_ios), Text("Kembali")],
              ),
            ),
            // const Spacer(),
            Card(
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xffD9D9D9)),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Buat Akun Anda",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "Pastikan data yang anda masukkan sudah benar ",
                      )),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelText: "Nama Lengkap",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: "Nomor Handphone",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Ulangi Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Jenis Kelamin",
                                  style: TextStyle(fontSize: 12),
                                ),
                                DropdownButton(
                                  hint: const Text("Pilih"),
                                  items: const [
                                    DropdownMenuItem(
                                      value: 1,
                                      child: Text('Laki-laki'),
                                    ),
                                    DropdownMenuItem(
                                      value: 0,
                                      child: Text('Perempuan'),
                                    ),
                                  ],
                                  onChanged: (value) {},
                                )
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("Buat Akun"))
                      ],
                    )),
                  )
                ],
              ),
            ),
            // const Spacer()
          ],
        ),
      )),
    );
  }
}
