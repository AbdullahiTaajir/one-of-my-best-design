import 'package:flutter/material.dart';
import 'package:thursday_design/pages/PageTwo.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 430,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "images/design.jpg",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Renovate",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      "Your interior",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => screentwo(),
                                ));
                          });
                        },
                        child: Text("Go to catalog")),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 400,
          child: Container(
            width: 412,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Popular products",
                    style: TextStyle(fontSize: 30),
                  ),
                  trailing: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "View all",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text("__________")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6, left: 40),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/design2.jpg",
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Image.asset(
                            "images/design3.jpg",
                            height: 100,
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Chester chair"),
                              Text("\$81.00"),
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 136, 137, 138),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 51, 121, 179),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Column(
                            children: [
                              Text("Loset Glant"),
                              Text("\$64.00"),
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 136, 137, 138),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 51, 121, 179),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Text(
                  "_______",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 17, 17, 17),
                      fontSize: 60),
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
