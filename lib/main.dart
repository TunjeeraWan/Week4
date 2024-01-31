import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              key: ValueKey(1),
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image:
                  "https://img.android.com.pl/images/user-images/2018/02/trio-iphones-ios.jpg",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(2),
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image:
                  "https://th.bing.com/th/id/OIP.KG6SCWjvPLo2b7ErteBuxAHaE7?rs=1&pid=ImgDetMain",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(3),
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image:
                  "https://th.bing.com/th/id/OIP.ArHpsD7NAb15EqiXBRhF0wHaEn?rs=1&pid=ImgDetMain",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(4),
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image:
                  "https://th.bing.com/th/id/R.a563ad42abff2dd9e265e5129b31527c?rik=Wf3wQcSMqFqIgA&riu=http%3a%2f%2fallthingsd.com%2ffiles%2f2012%2f08%2fToshiba-RT-tablet.jpg&ehk=wLMcXeRhsYH28xG69owFduEwXEmf3837ri1cRpcKtv8%3d&risl=&pid=ImgRaw&r=0",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(5),
              name: "Pendrive",
              description: "Pendrive is a useful storage medium",
              price: 100,
              image:
                  "https://ae01.alicdn.com/kf/HTB19asxceySBuNjy1zdq6xPxFXak/Wooden-pendrive-2017-new-arrival-4GB-8GB-16GB-pen-drive-32GB-USB-2-0-Memory-Stick.jpg",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(6),
              name: "Floppy Drive",
              description: "Floppy drive is a useful rescue storage medium",
              price: 20,
              image:
                  "https://th.bing.com/th/id/R.7a58952dc2f2a05540be01c66e8a18f2?rik=mROjr%2bmhYWFFFQ&riu=http%3a%2f%2f2.bp.blogspot.com%2f_-IEVWZKcvm4%2fTB_AfsJWIOI%2fAAAAAAAAACg%2fjdv9DENXyAg%2fs1600%2fFloppy%2bdisk%2b--%2bStockXchange.jpg&ehk=ec40YfbDG6H4sQrsk6HaaUOwClShShRmsrMikqS5MQg%3d&risl=&pid=ImgRaw&r=0",
              isNetworkImage: true),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isNetworkImage,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            isNetworkImage
                ? Image.network(image, width: 80, height: 80)
                : Image.asset(image, width: 80, height: 80),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
