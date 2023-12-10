import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBarley(),
    );
  }
}

class MyBarley extends StatefulWidget {
  const MyBarley({super.key});

  @override
  State<MyBarley> createState() => _MyBarleyState();
}

class _MyBarleyState extends State<MyBarley> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barley",style: TextStyle(fontSize: 30,color: Colors.black),),
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
                    child: Image(image: AssetImage("assets/barley.jpg"))),
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
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Soil Requirements",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text("sandy to moderately heavy loam soils"),
                  Text("neutral to saline reaction and medium fertility"),
                  Text("acidic soils are not suitable for barley cultivation"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Crop Diseases",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Yellow rust/Stripe rust (Puccinia striiformis hordei)"),
                  Text("Leaf rust/Brown rust (Puccinia hordei)"),
                  Text("Stem rust/Black rust (Puccinia graminis)\nLeaf blight/Spot blotch (Bipolaris sorokiniana)\nNet Blotch (Drechslera teres)\nPowdery mildew (Erysiphe graminis . f. sp. hordei)\nLoose smut (Ustilago nuda)\nCovered Smut (Ustilago hordei)"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" Barley Producing Countries",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text("Russia\nSpain\nGermany\nCanada\nFrance\nAustralia\nTurkey\nUnited Kingdom\nUkraine\nArgentina"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
