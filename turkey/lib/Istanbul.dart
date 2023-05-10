import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turkey/HomeScreen.dart';

class Istanbul extends StatelessWidget {
  
  String aciklama=
    ("İstanbul, Türkiye'de Marmara Bölgesi'nde yer alan şehir ve Türkiye'nin 81 ilinden biridir. Ülkenin nüfus bakımından en çok göç alan ve en kalabalık ilidir. Ekonomik, tarihî ve sosyo-kültürel açıdan önde gelen şehirlerden biridir.Şehir, iktisadi büyüklük açısından dünyada 34. sırada yer alır.");
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/ista.jpg"),
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