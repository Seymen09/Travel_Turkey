import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turkey/Istanbul.dart';
import 'package:turkey/Mugla.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu,size:35,color: Colors.black,),
          actions: [
            Icon(Icons.search,size:35,color: Colors.black,)
          ],
        ),
        
        body: Column(       
          children: [
            Container(
              padding: EdgeInsets.only(top: 25,left: 25),
              child:  Text("Türkiyeyi Keşfedin",
              style: GoogleFonts.playfairDisplay(fontSize: 45.6,color: Colors.black,fontWeight:FontWeight.w700 )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("İSTANBUL",style: GoogleFonts.akayaKanadaka(color: Colors.black,fontSize: 25),),
            ) ,
            Container(
              height: 195,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/istanbul.webp"),
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Istanbul(),));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.88),
                ),
                child: Center(child: Text("Daha fazlası için >>",style: TextStyle(color: Colors.white),)),
              ),
              
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text("MUĞLA",style: GoogleFonts.akayaKanadaka(color: Colors.black,fontSize: 25),),
            ) ,
            Container(
              height: 195,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/muğla.webp"),
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mugla(),));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.88),
                ),
                child: Center(child: Text("Daha fazlası için >>",style: TextStyle(color: Colors.white),)),
              ),
              
            ),
    
                 
           
          ],
        ),
      ),
    );
  }
}