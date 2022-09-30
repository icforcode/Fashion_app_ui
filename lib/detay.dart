import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detay extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgPath;
  Detay({Key? key, this.imgPath}) : super(key: key);

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Laminated",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 166,
                              child: const Text(
                                "One button V-neck sling long-sleeved female stitciging dress",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                        bottom: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "6500\$",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              backgroundColor: Colors.brown,
                              onPressed: () {},
                              child: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Center(
                    child: Text(
                      "Laminated",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
