import 'package:flutter/material.dart';
import 'package:utsss/page/drawerpages/SalesTransaksi.dart';
import 'package:utsss/page/drawerpages/Management.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,     
      body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [                                
                                Icon(
                                  Icons.account_circle_sharp,
                                  size: 50,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Samtion",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Owner",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ])
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
            
            DrawerMenuWidget(
              page: Management(),
              text: 'Management',
            ),
            DrawerMenuWidget(
              page: Transaksi(),
              text: 'Sales Transaction',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Credit',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'PPOB',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Report',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Setting',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Integrate E-Wallet',
                  style: TextStyle(color: Colors.black),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.green),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Referral',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'My Online Store',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Help & Support',
            ),
            DrawerMenuWidget(
              page: Management(),
              text: 'Sync',              
            ),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, ),
              
              child: Text('26-11-2024',
              style: TextStyle(
                color: Colors.grey
              ),),
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