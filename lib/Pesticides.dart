import 'package:flutter/material.dart';

class MyPest extends StatefulWidget {
  const MyPest({super.key});

  @override
  State<MyPest> createState() => _MyPestState();
}

class _MyPestState extends State<MyPest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter crop Name or Disease",
                  ),
                ),
              ),
              SizedBox(width: 5,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey,
                  child: Icon(Icons.document_scanner),
                ),
              ),

            ],
          ),
        )
        ],
      ),
    );
  }
}
