import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmer/home.dart';
import 'package:farmer/Pesticides.dart';
import 'package:farmer/store.dart';
import 'package:farmer/signUp.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Widget> li=<Widget>[MyMain(),MyPest(),MyStore(),MySign()];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      leading: ClipRRect(
          borderRadius:BorderRadius.circular(120),child: Container(child: Image(image: NetworkImage("https://cdn.pixabay.com/photo/2023/09/01/20/22/garlic-8227658_1280.jpg"),fit: BoxFit.fill,))),
        elevation: 0,
        title: Text("TechFarming",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green.shade900,fontSize: 30),),
      ),
      body: li[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        //selectedFontSize: 50,
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        currentIndex: index,
          onTap: (idx){
          setState(() {
            index=idx;
          });
          },
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.green.shade900,size: 40,),label:"HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.pest_control,color: Colors.green.shade900,size: 40,),label: "PESTICIDES"),
            BottomNavigationBarItem(icon: Icon(Icons.store,color: Colors.green.shade900,size: 40,),label: "Near By Store"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,color: Colors.green.shade900,size: 40,),label: "Account"),
          ],
        ),
    );
  }
}

