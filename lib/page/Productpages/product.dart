import 'package:flutter/material.dart';
import 'package:utsss/model/product.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List products = [];

  @override
  void initState() {
    super.initState();
    setData();
  }

  void setData() {
    products = [
      itemProduct(
        nama: 'Mie Sukses isi Dua',
        harga_beli:2500,
        harga_jual: 3000,
        kode_barang: 'TRPLF0001',
        stok: 5

      ),
      itemProduct(
        nama: 'Milku',
        harga_beli:2500,
        harga_jual: 3000,
        kode_barang: 'TRPLF0001',
        stok: 5

      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product", style: TextStyle(color: Colors.green)),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ItemProduct(
              barang: products[index],
            );
          },
        ));
  }
}

class ItemProduct extends StatelessWidget {
  ItemProduct({super.key, required this.barang});
  itemProduct barang;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 207, 207, 207),
      child: Row(children: [
        SizedBox(
          height: 20,
          width: 10,
        ),
        CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey,
            child: Text(
              '${barang.nama!.substring(0, 2).toUpperCase()}',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Column(
          children: [
            Row(
              children: [
                Text('${barang.nama}'),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('${barang.stok}'),
                  ),
                ),
              ],
            ),
            Row(children: [
              Text('${barang.kode_barang}'),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Text('${barang.harga_jual}'),
              ))
            ]),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Hrg dasar Rp.${barang.harga_beli}'),
              ],
            )
          ],
        )),
      ]),
    );
  }
}
