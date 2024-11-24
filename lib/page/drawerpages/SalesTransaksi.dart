import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:utsss/page/drawerpages/pagedrawer.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        centerTitle: true,
        title: Text(
          "SALES TRANSACTION",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: Colors.blueGrey[300],
              height: 1,
            )),
      ),
      drawer: DrawerPage(),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.qr_code_scanner_rounded)),
              
              Expanded(
                child: Row(                
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("All Item"),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_downward_rounded))
                ],
              )
              ),
              
            ],
          )
        ],
      ),
    );
  }
}