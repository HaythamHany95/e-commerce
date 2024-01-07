///
///
///
import 'package:e_commerce/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> categories = [
    {"iconName": Icons.laptop, "title": "Laptop"},
    {"iconName": Icons.phone_android, "title": "Phones"},
    {"iconName": Icons.card_giftcard_sharp, "title": "Gifts"},
    {"iconName": Icons.electric_bike_rounded, "title": "Bicycle"},
    {"iconName": Icons.electric_car, "title": "Cars"}
  ];

  List<Map> bestSalling = [
    {
      "image": "images/product2.jpg",
      "title": "Honor band 6",
      "subTitle": "Tech. Category",
      "price": "999 LE"
    },
    {
      "image": "images/product3.jpg",
      "title": "Fitness bottle",
      "subTitle": "Sports Category",
      "price": "199 LE"
    },
    {
      "image": "images/product4.jpg",
      "title": "Yoga Mat",
      "subTitle": "Sports Category",
      "price": "399 LE"
    },
    {
      "image": "images/product6.jpg",
      "title": "Vivo Y02s",
      "subTitle": "Mobile Category",
      "price": "4800 LE"
    },
    {
      "image": "images/product5.jpg",
      "title": "Men's sneakers",
      "subTitle": "Sports Category",
      "price": "999 LE"
    },
    {
      "image": "images/product1.jpg",
      "title": "RX Hand Grip",
      "subTitle": "Sports Category",
      "price": "100 LE"
    }
  ];
  //Vivo Y02s

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          selectedItemColor: Colors.amber[900],
          iconSize: 40,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "●"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "●"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "●")
          ]),
      body: ListView(padding: const EdgeInsets.only(top: 30), children: [
        Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right: 10),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: InputBorder.none,
                ),
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  ))
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      categories[i]["iconName"],
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    categories[i]["title"],
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  )
                ],
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Best Selling",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // Because `GridView` has a constatnt heigh, we can extend it from `mainAxisExtent` 👍
            mainAxisExtent: 300,
          ),
          // GridView.builder
          itemCount: bestSalling.length,
          itemBuilder: (context, i) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Details(data: bestSalling[i])));
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Card(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Image.asset(
                            bestSalling[i]["image"],
                            height: 188,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          bestSalling[i]["title"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          bestSalling[i]["subTitle"],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          bestSalling[i]["price"],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[900]),
                        )
                      ],
                    ),
                  ),
                ));
          },
        )
      ]),
    );
  }
}
