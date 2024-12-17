import 'package:flutter/material.dart';

import 'package:thursday_design/models/DataModels.dart';
import 'package:thursday_design/pages/PageThree.dart';

class screentwo extends StatefulWidget {
  const screentwo({
    super.key,
  });

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  List<String> chips = [
    "Soft Elements Jack",
    "Leset Galant",
    "Chester Chair",
    "avrora chair"
  ];
  int selectedchip = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.delete_outline),
          Icon(Icons.person_2),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListTile(
              leading: Text(
                "Discover Products",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.view_module_rounded),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: chips.length,
                itemBuilder: (context, index) {
                  return selectedchip == index
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedchip = index;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Chip(
                              label: Text(
                                chips[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.black,
                              side: BorderSide(color: Colors.black),
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedchip = index;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Chip(
                              label: Text(chips[index]),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.grey.shade300,
                              side: BorderSide(color: Colors.grey.shade300),
                            ),
                          ),
                        );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: Lists.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => screenthree(
                                currentindex: index,
                              ),
                            ));
                      });
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(Lists[index].image),
                          height: 160,
                          width: 160,
                        ),
                        Text(Lists[index].name),
                        Text(Lists[index].money),
                        SizedBox(
                          height: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 87),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: Lists[index].colors.length,
                              itemBuilder: (context, Index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 3),
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Lists[index].colors[Index],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 134, 130, 130),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Catalog",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.window_rounded), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
