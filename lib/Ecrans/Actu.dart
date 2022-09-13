import 'package:flutter/material.dart';

class Actualite extends StatefulWidget {
  const Actualite({ Key? key }) : super(key: key);

  @override
  State<Actualite> createState() => _ActualiteState();
}

class _ActualiteState extends State<Actualite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
    
          Container(
            
            child: Stack(
              children: [
                Positioned(
                  // top: ,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 15,bottom: 35),
                      padding: EdgeInsets.only(left: 10,top: 40),
                      height: 210,
                      width: MediaQuery.of(context).size.width *0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
//Tchai jai pas vue votre image la hein donc apres changer                        
                        image: DecorationImage(
                          image: AssetImage("assets/basilique-Notre-Dame-de-la-Paix-de-Yamoussoukro-2.png"),
                            fit: BoxFit.cover
                        )
                      ),
    
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(text: "Can 2024",style: TextStyle(fontSize: 28,color: Colors.white))
                            ),
                            SizedBox(height: 8,),
                            Text("Vivez le meilleur \nde la can 2024",style: TextStyle(fontSize: 20,color: Colors.white)),
                            Text("Avec TOURCI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)
                          ],
                        ),
                      ),
    
                    ),
                  )
    
                ),
              ],
            ),
            // child: Text("Bonjour Ici"),
          ),

          Stade(
            'assets/RDH-Cote-d-Ivoire-2010-05-30-MG-0058.png', 
            "Stade d\'Ebimpé", 
            "Lorem ipsum dolor sit"
          ),
          Stade(
            'assets/les-mysterieux-ponts-de-liane-de-lrouest-de-la-cote-drivoire.png', 
            "Stade de Korhogo", 
            "Lorem ipsum dolor sit"
          ),
          Stade(
            'assets/RDH-Cote-d-Ivoire-2010-05-30-MG-0058.png', 
            "Stade Felixia", 
            "Lorem ipsum dolor sit"
          ),
          Stade(
            'assets/RDH-Cote-d-Ivoire-2010-05-30-MG-0058.png', 
            "Stade Felixia", 
            "Lorem ipsum dolor sit"
          ),
    
        ],
      ),
    );
  }
}

Widget Stade (String image,String nomStade,String Details){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),

    ),

    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          width: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),

              Text(' $nomStade ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                 
              SizedBox(height: 5,),

              Text(' $Details',style: TextStyle( fontSize: 16),),

              SizedBox(height: 5,),

              TextButton(
                child: Text("Voir Plus"),
                onPressed: (){},             
              ),
  
            ]
          ),
        )
      ]
    )
    
  ) ;     
}

