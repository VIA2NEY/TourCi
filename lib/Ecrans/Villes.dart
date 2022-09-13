import 'package:flutter/material.dart';

class Villes extends StatefulWidget {
  const Villes({ Key? key }) : super(key: key);

  @override
  State<Villes> createState() => _VillesState();
}

class _VillesState extends State<Villes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ApercuVilles(
                'assets/A-Daloa-C-te-d-Ivoire-plaque-tournante-migration-vers-l-Europe_0.png', 
                "Daloa", 
                "Lorem ipsum dolor sit \n amet,consecteur"
              ),
              ApercuVilles(
                'assets/basilique-Notre-Dame-de-la-Paix-de-Yamoussoukro-2.png', 
                "Yamoussoukro", 
                "Lorem ipsum dolor sit \n amet,consecteur"
              ),
              ApercuVilles(
                'assets/les-mysterieux-ponts-de-liane-de-lrouest-de-la-cote-drivoire.png', 
                "Man", 
                "Lorem ipsum dolor sit \n amet,consecteur"
              ),
            ],
          ),
        ),
//Bon Ici on peut faire sa aek stack mais comme cest la et que je suis feh je laisse sa conhan
        Image(
          image: AssetImage("assets/Groupe 45.png")
        ),
        Image(
          image: AssetImage("assets/Groupe 45.png")
        ),
        Image(
          image: AssetImage("assets/Groupe 45.png")
        ),
      ],
    );
  }
}

Widget ApercuVilles (String image,String nomStade,String Details){
  return Container(
    margin: EdgeInsets.only(left: 20,bottom: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),

    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
        ),
        Divider(height: 4,),
        Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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