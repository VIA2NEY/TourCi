import 'package:flutter/material.dart';
// import 'package:vue_burida/Ecrans/AccueilBurida.dart';
// import 'package:vue_burida/Ecrans/ConsultationGain.dart';
// import 'package:vue_burida/Ecrans/ConsulterRepertoire.dart';
// import 'package:vue_burida/Ecrans/Historique_Transaction.dart';
// import 'package:vue_burida/Ecrans/PointDesPerceptions.dart';
// import 'Ecrans/Sidebar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tour_ci/Ecrans/PageAccueil.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
//Ce qui sa vas display en premier    
//     PageAccueil(),
//     homePage(), 
// //En deuxieme    
//     Historique(),
//     //Repertoire(),
// //En troisieme    
//     Perceptions(),
    Accueil(),
    Text(
      'Localisation ',
      style: optionStyle,
    ),
    Text(
      'Je sais pas ',
      style: optionStyle,
    ),
    Text(
      'VR',
      style: optionStyle,
    ),
    Text(
      'Personne',
      style: optionStyle,
    ),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          title: Text("TourCi", style: TextStyle(color: Colors.black,fontFamily: 'ubuntu',fontSize: 25),),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10, top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(.5)),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ),
          ],
        ),


      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 5,
                activeColor: Colors.amber[800],
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
//Si Vous Voulez vous ajouter dutext si vou vouler vous laiser 
//mais je vous montre coment l'ajout de texte se fait                  
                  GButton(
                    icon: Icons.home, //LineIcons.home,
                    text: 'Accueil',
                  ),
                  GButton(
                    icon: Icons.location_on,

                  ),
                  GButton(
                    icon: Icons.my_location,

                  ),
                  GButton(
                    icon: Icons.view_in_ar,
                    text: 'Vr',
                  ),
                  GButton(
                    icon: Icons.person,

                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          
        ),
      ),
    );
  }
}
