import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(

  home: ManCard(),
  ));
}

class ManCard extends StatefulWidget {
  const ManCard({super.key});

  @override
  State<ManCard> createState() => _ManCardState();
}

class _ManCardState extends State<ManCard> {

  int manLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'Man Card',
          style: TextStyle(color: Colors.white),
          ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              manLevel++;
            });
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.grey[800],
          ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/man.jpg'),
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Benja',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30,),
              const Text(
                'CURRENT MAN LEVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                '$manLevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    'benja.man@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
    );
  }
}
