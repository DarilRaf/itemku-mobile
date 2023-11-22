import 'package:flutter/material.dart';
import 'package:itemku/models/products.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Arial');

class DetailScreen extends StatelessWidget {
  final Product selectedItem;
  const DetailScreen({Key? key, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getMaxWidth() {
      return MediaQuery.of(context).size.width;
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: getMaxWidth() < 800
            ? Column(
                children: [
                  Expanded(
                      child: DetailMobileScreen(selectedItem: selectedItem))
                ],
              )
            : Expanded(
                flex: 2, child: DetailMobileScreen(selectedItem: selectedItem)),
      ),
    );
  }
}

class DetailMobileScreen extends StatefulWidget {
  const DetailMobileScreen({Key? key, required this.selectedItem})
      : super(key: key);
  final Product selectedItem;

  @override
  _DetailMobileScreen createState() => _DetailMobileScreen();
}

class _DetailMobileScreen extends State<DetailMobileScreen> {
  // late List<Item> loggedInUserCart = widget.loggedInUser.getCart();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Container(
            // NAMA
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(widget.selectedItem.fields.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 32))),
        const SizedBox(height: 20),
        Container(
            // JUMLAH BARANG
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
                "Jumlah Barang: " +
                    widget.selectedItem.fields.amount.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24))),
        const SizedBox(height: 20),
        Container(
            // HARGA
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text("Harga: " + widget.selectedItem.fields.price.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24))),
        const SizedBox(height: 20),
        Container(
            // KATEGORI
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
                "Kategori: " + widget.selectedItem.fields.category.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 14))),
        const SizedBox(height: 20),
        Container(
            // POWER
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text("Power: " + widget.selectedItem.fields.power.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 14))),
        const SizedBox(height: 20),
        Container(
            // KADALUARSA
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(
                "Kadaluarsa: " +
                    widget.selectedItem.fields.expiryDate.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 14))),
        const SizedBox(height: 20),
        Container(
            // DESKRIPSI
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: const Text("Deskripsi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
        const SizedBox(height: 10),
        Container(
            // DESKRIPSI
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Text(widget.selectedItem.fields.description,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 14))),
      ],
    );
  }
}
