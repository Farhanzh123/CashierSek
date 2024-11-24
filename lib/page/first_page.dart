import 'package:flutter/material.dart';
import 'package:utsss/page/second_page.dart';
import 'package:utsss/page/drawerpages/Management.dart';


class Login extends StatefulWidget {
  String? email;
  String? password;

  Login({super.key, this.email, this.password});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'halaman login',
          strutStyle:  StrutStyle(fontSize: 20,
          fontFamily: "Lato"),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 245, 240, 225)),
        ),
        backgroundColor: const Color.fromARGB(255, 78, 76, 116),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0))),
              onChanged: (value) {
                setState(() {
                  widget.password = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
              ),
              obscureText: true,
              obscuringCharacter: ';',
              onChanged: (value) {
                setState(() {
                  widget.password = value; // Update password value
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Management()),);
                    },
                    child: const Text('login', style: TextStyle(color: Color.fromARGB(255, 245, 240, 225))),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      backgroundColor: const Color.fromARGB(255, 78, 76, 116),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("belum punya akun ?"),
                TextButton(
                    onPressed: () async {
                      final Result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
                      if (Result != null && Result is List) {
                        setState(() {
                          emailController.text =
                              Result[0]; // Update controller text
                          passwordController.text =
                              Result[1]; // Update controller text
                        });
                      }
                    },
                    child: Text("register"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
