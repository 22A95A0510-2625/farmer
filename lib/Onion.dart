import 'package:flutter/material.dart';

class MyOnion extends StatefulWidget {
  const MyOnion({super.key});

  @override
  State<MyOnion> createState() => _MyOnionState();
}

class _MyOnionState extends State<MyOnion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("",style: TextStyle(fontSize: 30,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(image: AssetImage("assets/onion.jpg"))),
              ),
              Text("The grass family Poaceae produces the Rabi cereal crop known as barley. Most of the world’s barley crops are grown in colder, semiarid climates.",style: TextStyle(fontSize: 20),),
              Row(
                children: [
                  Text("Category: ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Cereals",style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Climate Requirements: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("Both a summer crop or a winter crop"),
                  Text("Both tropical and subtropical climates"),
                  Text("temperatures of 12 to 15 °C for growth and 30 to 32 °C for maturity"),
                  //Text("data")
                ],
              ),
              Text("Soil Requirements",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("sandy to moderately heavy loam soils"),
                  Text("neutral to saline reaction and medium fertility"),
                  Text("acidic soils are not suitable for barley cultivation"),
                ],
              ),
              Text("Crop Diseases",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yellow rust/Stripe rust (Puccinia striiformis hordei)"),
                  Text("Leaf rust/Brown rust (Puccinia hordei)"),
                  Text("Stem rust/Black rust (Puccinia graminis)\nLeaf blight/Spot blotch (Bipolaris sorokiniana)\nNet Blotch (Drechslera teres)\nPowdery mildew (Erysiphe graminis . f. sp. hordei)\nLoose smut (Ustilago nuda)\nCovered Smut (Ustilago hordei)"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
