import 'package:flutter/material.dart';

import 'package:utsss/page/Productpages/product.dart';
import 'package:utsss/page/Productpages/samplepage2.dart';
import 'package:utsss/page/Productpages/samplepage3.dart';
import 'package:utsss/page/Productpages/samplepage4.dart';
import 'package:utsss/page/Productpages/samplepage5.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:utsss/page/imagepage.dart';
import 'package:utsss/page/drawerpages/pagedrawer.dart';

class Management extends StatefulWidget {
  const Management({super.key});

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  String selectedPage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Management',
          style: TextStyle(color: Color.fromARGB(255, 0, 95, 44)),
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Membuka drawer
            },
          );
        }),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: Colors.blueGrey[300],
              height: 1,
            )),
      ),
      drawer: Drawer(
        child: DrawerPage(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MenuWidget(
              text_menu: "Product and Service",
              icon: Icons.production_quantity_limits,
              tujuan_menu: Product(),
            ),
            Divider(
              color: Colors.grey,
            ),
            MenuWidget(
              text_menu: "Product Category",
              icon: Icons.category,
              tujuan_menu: Samplepage2(),
            ),
            Divider(
              color: Colors.grey,
            ),
            MenuWidget(
              text_menu: "Stock Management",
              icon: Icons.storage,
              tujuan_menu: Samplepage3(),
            ),
            Divider(
              color: Colors.grey,
            ),
            MenuWidget(
              text_menu: "Customer",
              icon: Icons.person,
              tujuan_menu: Samplepage4(),
            ),
            Divider(
              color: Colors.grey,
            ),
            MenuWidget(
              text_menu: "Credit",
              icon: Icons.credit_card,
              tujuan_menu: Samplepage5(),
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final String text_menu;
  final IconData icon; // Ganti image_path dengan icon
  final Widget? tujuan_menu;

  MenuWidget({
    super.key,
    required this.text_menu,
    required this.icon, // Pastikan icon diisi
    this.tujuan_menu,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tujuan_menu!),
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, size: 50,color: Color.fromARGB(255, 78, 76, 116),
              ), // Ganti Image.asset dengan Icon
              SizedBox(width: 10), // Tambahkan jarak antara ikon dan teks
              Text(text_menu),
            ],
          ),
        ],
      ),
    );
  }
}
