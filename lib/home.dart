import 'package:farmer/Banana.dart';
import 'package:farmer/Barley.dart';
import 'package:farmer/Capsicum.dart';
import 'package:farmer/Mangoes.dart';
import 'package:farmer/Mystard.dart';
import 'package:farmer/Onion.dart';
import 'package:flutter/material.dart';
import 'package:farmer/Barley.dart';
import 'package:farmer/Mystard.dart';
class MyMain extends StatefulWidget {
  const MyMain({super.key});

  @override
  State<MyMain> createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  int x=0;
  var li=["assets/techno.jpg","assets/kotha.jpg","assets/money.jpg","assets/natlu.jpg","assets/ploughingg.jpg"];
  void onDec()
  {
    if(x==0)
      {
        x=li.length-1;
      }else{
      x--;
    }
  }
  void onInc(){
    if(x==li.length-1){
      x=0;
    }else{
      x++;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(10),
                  child: Container(height: 50, width: 320, color: Colors.grey.shade300,
                    child: Row(children: [SizedBox(width: 20,),Icon(Icons.search),Text("Search ph Value of a soil")],),
                  ),
                ),
                SizedBox(width: 5,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(height: 50, width: 50, color: Colors.grey.shade300, child: Icon(Icons.document_scanner_outlined,size: 30,),
                  ),
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(li[x]),
                  )
              ),
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                onDec();
                setState(() {

                });
              }, icon: Icon(Icons.arrow_back_ios_new_outlined,size: 10,color: Colors.blueGrey,)),
              IconButton(onPressed: (){
                onInc();
                setState(() {

                });
              }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 10,color: Colors.blueGrey,))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text("Different Crops",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green.shade900),),
          SizedBox(height: 10,),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Cereals",style: TextStyle(fontSize: 30,color: Colors.green.shade900),),
              SizedBox(width: 160,),
              Text("see more",style: TextStyle(fontSize: 25,color: Colors.green,),)],),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyBarley()));
                            },
                              child: Image(image: AssetImage("assets/barley.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Barley",style: TextStyle(fontSize: 20,),)
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 5,
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/gram.jpeg"),height: 150,width:150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Gram",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),
                SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/rapeseed.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Rapeseed",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMustard()));
                            },
                              child: Image(image: AssetImage("assets/mustard.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Mustard",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/oat.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Oat",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/bajra.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Bajra",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Fruits",style: TextStyle(fontSize: 30,color: Colors.green.shade900),),
              SizedBox(width: 185,),
              Text("see more",style: TextStyle(fontSize: 25,color: Colors.green),)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyBanana()));
                            },
                              child: Image(image: AssetImage("assets/banana.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Banana",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/grapefruit.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("GrapeFruit",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyMangoes()));
                            },
                              child: Image(image: AssetImage("assets/mangoes.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Mangoes",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/lemons.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Lemon",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/guava.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Guava",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/grapes.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Grapes",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Vegetables",style: TextStyle(fontSize: 30,color: Colors.green.shade900),),
              SizedBox(width: 100,),
              Text("see more",style: TextStyle(fontSize: 25,color: Colors.green),)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCapsicum()));
                            },
                              child: Image(image: AssetImage("assets/capsicum.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Capsicum",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOnion()));
                            },
                              child: Image(image: AssetImage("assets/onion.jpg"),height: 150,fit: BoxFit.fill,)),
                          SizedBox(height: 5,),
                          Text("Onion",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/cabbage.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Cabbage",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/potato.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Potato",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/spincah.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Spinach",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
                Card(
                  elevation: 5,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,width: 150,
                      child: Column(
                        children: [
                          Image(image: AssetImage("assets/tomato.jpg"),height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 5,),
                          Text("Tomato",style: TextStyle(fontSize: 20,),)
                        ],
                      )),
                ),SizedBox(width: 5,),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
