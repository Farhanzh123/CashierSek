import 'package:flutter/material.dart';
import 'package:utsss/page/first_page.dart';


class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  final TextEditingController namaController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController numberphoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                label: Text("name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: Text("email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                label: Text("password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              obscureText: true,
              obscuringCharacter: ';',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                country(),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                      controller: numberphoneController,
                      decoration: InputDecoration(
                          label: Text("number phone"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                          ))),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("kode referal"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      String email = emailController.text;
                      String password = passwordController.text;
                      var data = [email, password];

                      Navigator.pop(context, data);
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class country extends StatefulWidget {
  const country({super.key});

  @override
  State<country> createState() => _countryState();
}

class _countryState extends State<country> {
  String dropdownValue = 'indonesia';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.menu),
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: const [
            DropdownMenuItem(
              value: 'indonesia',
              child: Text("indonesia"),
            ),
            DropdownMenuItem(
              value: 'cino',
              child: Text("cino"),
            ),
            DropdownMenuItem(
              value: 'nihonggo',
              child: Text("nihonggo"),
            ),
          ]),
    );
  }
}
