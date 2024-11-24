import 'package:flutter/material.dart';
import 'package:utsss/page/first_page.dart';
import 'package:utsss/page/drawerpages/Management.dart';
import 'package:utsss/page/imagepage.dart';
import 'package:utsss/page/drawerpages/SalesTransaksi.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
