import 'package:flutter/material.dart';

class Prueba extends StatefulWidget {
  const Prueba({super.key});
  @override
  State<Prueba> createState() => _prueba();
}

class _prueba extends State<Prueba> {
  static const imagen = NetworkImage(
      'https://1.bp.blogspot.com/-greBcvZd5Nw/X0PLstmYYsI/AAAAAAAAAx8/fNPyK8SqixYF3IKA-ERV4K0FUjXEXxHIwCLcBGAsYHQ/s1280/25.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return const IconButton(
              icon: Icon(Icons.close),
              onPressed: null,
            );
          }),
          title: const Center(
            child: Text(
              '1499 Galenia Road',
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: const <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_arrow_up),
              onPressed: null,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView(children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 212.0,
                  child: Ink.image(
                    image: imagen,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text(
                    '\$599,000',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('1499 Galenia Rd, Austin, TX',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.ios_share),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("4",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Beds',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("3+",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Baths',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("4,203",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Sq. ft',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("8,843",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Lot Sq. ft',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //const SizedBox(height: 30),
          Container(
            color: Colors.grey.shade300,
            child: const SizedBox(
              height: 20,
            ),
          ),
          const Card(
              child: Row(
            children: [
              SizedBox(height: 10),
              Icon(
                Icons.approval_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text(
                "View MaP",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              SizedBox(width: 40),
              Icon(
                Icons.directions_car_outlined,
                size: 35,
              ),
              SizedBox(width: 5),
              Text("10 minutes away",
                  style: TextStyle(fontSize: 18, color: Colors.blue)),
            ],
          )),
          const SizedBox(height: 8),
          Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Open Houses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text("Friday 1:00 pm - 4:00", style: TextStyle(fontSize: 18)),
                  SizedBox(width: 120),
                  Text("2/24"),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Text("Saturday 1:00 pm - 4:00",
                      style: TextStyle(fontSize: 18)),
                  SizedBox(width: 100),
                  Text("2/24"),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.red.shade800,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Contact Agent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              )
            ],
          ))
        ]));
  }
}
