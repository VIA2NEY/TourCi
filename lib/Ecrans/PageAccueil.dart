import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:tour_ci/Ecrans/Actu.dart';
import 'package:tour_ci/Ecrans/Villes.dart';

// import '../Ecrans/AccueilBurida.dart';
// import '../Ecrans/PointDesPerceptions.dart';
// import '../Ecrans/SousPages/Etablissements.dart';
// import '../Ecrans/SousPages/Point_de_Perceptions.dart';
// import 'package:tab_bar/Accueil/tab1.dart';
// import 'package:tab_bar/Accueil/tab2.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
//Ici Tu Mets le nombre de page du haut la que tu veux faire scroller
//Si Le nbre ne corespond pas a ce que tu a déclaré en bas Ecran Rouge La vas venir
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            // height: 595,
            height: MediaQuery.of(context).size.height,
            // color: Colors.yellow,
            child: Column(
              children: [
                //SizedBox(height: 50),
                Container(
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.amber[800],
                          indicatorColor: Colors.white,
                          indicatorWeight: 3,
                          indicator: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'Actu',
                            ),
                            Tab(
                              text: 'Villes',
                            ),
                            Tab(
                              text: 'Sites Touristiques',
                            ),
                            Tab(
                              text: 'Hôtels',
                            ),
                            Tab(
                              text: 'Etc ...',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Actualite(),
                      Villes(),
                      Text("Les Sites Touristiques"),
                      Text("Hotels"),
                      Text("Les Etc"),

                      // Etablissement(),

                      // PointPerception(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
