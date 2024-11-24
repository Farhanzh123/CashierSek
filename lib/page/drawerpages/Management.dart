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
        // ListView(
        //   padding: EdgeInsets.zero,
        //   children: <Widget>[
        //     Container(
        //       height: MediaQuery.of(context).size.height * 0.2,
        //       child: DrawerHeader(
        //           decoration: BoxDecoration(
        //             color: Colors.green,
        //           ),
        //           child: Center(
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Row(
        //                   children: [
        //                     Column(
        //                       children: [                                
        //                         Icon(
        //                           Icons.account_circle_sharp,
        //                           size: 50,
        //                         )
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       width: 10,
        //                     ),
        //                     Column(
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             "Samtion",
        //                             style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 fontSize: 18),
        //                           ),
        //                           Text(
        //                             "Owner",
        //                             style: TextStyle(fontSize: 14),
        //                           )
        //                         ])
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           )),
        //     ),
            
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Management',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Sales Transaction',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Credit',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'PPOB',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Report',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Setting',
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        //       child: OutlinedButton(
        //         onPressed: () {},
        //         child: Text(
        //           'Integrate E-Wallet',
        //           style: TextStyle(color: Colors.black),
        //         ),
        //         style: OutlinedButton.styleFrom(
        //           side: BorderSide(color: Colors.green),
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10)
        //           )
        //         ),
        //       ),
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Referral',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'My Online Store',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Help & Support',
        //     ),
        //     DrawerMenuWidget(
        //       page: Management(),
        //       text: 'Sync',              
        //     ),
            
        //     const Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 30, ),
              
        //       child: Text('26-11-2024',
        //       style: TextStyle(
        //         color: Colors.grey
        //       ),),
        //     ),
        //   ],
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            customMenuWidget(
              page: Product(),
              image: "menu_1.png",
              text: "Product or Service",
            ),
            Divider(
              color: Colors.grey,
            ),
            customMenuWidget(
              page: Samplepage2(),
              image: "menu_2.png",
              text: "Product Category",
            ),
            Divider(
              color: Colors.grey,
            ),
            customMenuWidget(
              page: Samplepage3(),
              image: "menu_3.png",
              text: "Stock Management",
            ),
            Divider(
              color: Colors.grey,
            ),
            customMenuWidget(
              page: Samplepage4(),
              image: "menu_4.png",
              text: "Customer",
            ),
            Divider(
              color: Colors.grey,
            ),
            customMenuWidget(
              page: Samplepage5(),
              image: "menu_5.png",
              text: "Credit",
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class customMenuWidget extends StatelessWidget {
  Widget? page;
  String? image;
  String? text;
  customMenuWidget({super.key, this.page, this.image = '', this.text = ''});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
      },
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "image/$image",
                width: 50,
              ),
              SizedBox(
                width: 20,
              ), // image (icon)
              Text("$text"), // text (nama menu)
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerMenuWidget extends StatelessWidget {
  Widget? page;
  String? image;
  String? text;
  DrawerMenuWidget({super.key, this.page, this.image = '', this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
        },
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ), 
                Text("$text",
                style: TextStyle(
                  fontSize: 16
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
