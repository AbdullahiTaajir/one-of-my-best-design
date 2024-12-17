import 'package:flutter/material.dart';
import 'package:thursday_design/models/DataModels.dart';

class screenthree extends StatefulWidget {
  screenthree({
    required this.currentindex,
    super.key,
  });
  int currentindex;
  @override
  State<screenthree> createState() => _screenthreeState();
}

class _screenthreeState extends State<screenthree> {
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Icon(Icons.favorite)],
      ),
      body: Column(
        children: [
          change == 0
              ? Image(
                  image: AssetImage(Lists[widget.currentindex].image),
                  height: 260,
                  width: 260,
                )
              : Image(
                  image: AssetImage(Lists[widget.currentindex].image2),
                  height: 260,
                  width: 260,
                ),
          // : Image(image: AssetImage(Lists[widget.currentindex].image2)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    change = 0;
                  });
                },
                child: change == 0
                    ? Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(
                            image:
                                AssetImage(Lists[widget.currentindex].image)),
                      )
                    : Container(
                        width: 80,
                        height: 80,
                        child: Image(
                            image:
                                AssetImage(Lists[widget.currentindex].image)),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    change = 1;
                  });
                },
                child: change == 1
                    ? Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image(
                            image:
                                AssetImage(Lists[widget.currentindex].image2)),
                      )
                    : Container(
                        width: 80,
                        height: 80,
                        child: Image(
                            image:
                                AssetImage(Lists[widget.currentindex].image2)),
                      ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "4.8",
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 25,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 222, 222),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "145reviews",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  Lists[widget.currentindex].name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 200,
                ),
                SizedBox(
                  height: 10,
                  width: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Lists[widget.currentindex].colors.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Lists[widget.currentindex].colors[index]),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              Lists[widget.currentindex].describtion,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Lists[widget.currentindex].money,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
