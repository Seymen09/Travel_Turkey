import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turkey/HomeScreen.dart';

class Mugla extends StatelessWidget {
  
  String aciklama=
    ("Muğla, Türkiye'nin bir ili ve en kalabalık yirmi dördüncü şehridir. 2020 itibarıyla 1.021.773 nüfusa sahiptir. Ege Bölgesi'nde, topraklarının küçük bir kısmı Akdeniz Bölgesi içine giren, Ortaca, Dalaman, Köyceğiz, Fethiye, Marmaris, Milas, Datça ve Bodrum gibi tatil yöreleri ile ünlü bir yerleşim yeridir.");
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/olu.jpg"),
        fit: BoxFit.cover,
        opacity: 0.7,
        )
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(padding: 
          EdgeInsets.symmetric(vertical: 35,horizontal: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 345,top: 1),
                child: InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded,size: 35,color: Colors.white,)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(aciklama,style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1),)
              
            ],
          ),
          ),
        ),
      ),
    );
  }
}