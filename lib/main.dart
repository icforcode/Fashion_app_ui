import 'package:flutter/material.dart';
import 'package:moda_apllication/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                  icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              )),
              Tab(
                  icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              )),
              Tab(
                  icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 22,
              )),
              Tab(
                  icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              )),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          const SizedBox(),
          SizedBox(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 12,
                ),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 12,
                ),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                const SizedBox(
                  width: 12,
                ),
                listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 12,
                ),
                listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 12,
                ),
                listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/model1.jpeg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "34 mins ago",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 22,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "This official website features a ribbed knit zipper jacket that is"
                    "modern and stylish.It looks very temparament and is recommed to friends",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: "assets/model1.jpeg"),
                            ),
                          );
                        },
                        child: Hero(
                          tag: "assets/model1.jpeg",
                          child: Container(
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/model1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/model2.jpeg"),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/model2.jpeg",
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/model2.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/model3.jpeg"),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/model3.jpeg",
                              child: Container(
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/model3.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        child: const Center(
                          child: Text(
                            "# Louis vuitton",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        child: const Center(
                          child: Text(
                            "# Chloe",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10,
                                color: Colors.brown),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply_all,
                        color: Colors.brown.withOpacity(0.4),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "1.7k",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.4),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "325",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 260,
                        // alignment: Alignment.centerRight,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red.withOpacity(0.8),
                                size: 30,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "5k",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listeElemani(String imagepath, String logopath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logopath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(fontFamily: "Montserrat", color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
