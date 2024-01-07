///
///
///
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final data;
  const Details({super.key, this.data});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
        endDrawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          iconTheme: const IconThemeData(size: 33),
          toolbarHeight: 80,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopify_outlined),
              Text(
                " Hitham",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(" Bee",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold))
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            height: 300,
            margin: const EdgeInsets.only(bottom: 30),
            child: Image.asset(
              widget.data["image"],
            ),
          ),
          Text(
            widget.data["title"],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.data["subTitle"],
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const SizedBox(height: 15),
          Text(
            widget.data["price"],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.amber[900]),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Color: ",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5, left: 10),
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.amber)),
                ),
                const Text("Grey",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    )),
                Container(
                  margin: const EdgeInsets.only(right: 5, left: 20),
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const Text("Black",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Size: ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "38",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "40",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("41",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("42",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("43",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              child: MaterialButton(
                  onPressed: () {},
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  height: 45,
                  color: Colors.black,
                  textColor: Colors.white,
                  child: const Text("+Add To Cart")))
        ]));
  }
}
