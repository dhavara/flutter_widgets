part of 'pages.dart';

class Mission1 extends StatefulWidget {
  const Mission1({super.key});
  static const String routename = '/';

  @override
  State<Mission1> createState() => _Mission1State();
}

class _Mission1State extends State<Mission1> {
  IconData icon = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xFF47B5FF),
              Color(0xFFCC3636)
            ]
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Flexible(
              flex: 5,
              child: const Image(
                image: AssetImage(
                  'assets/forza.jpg'
                ),
                fit: BoxFit.fill
              ),
              
            ),
            const SizedBox(height:10),


            Flexible(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 115,
                    height: 115,
                    // clipBehavior: Clip.hardEdge,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10)
                    // ),
                    child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(8)),
                      child: Image.asset(
                        'assets/senna.jpg',
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
            
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(
                          'assets/bond.jpg',
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
            
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(
                          'assets/porsche.jpg',
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
            
                  Flexible(
                    child: SizedBox(
                      width: 115,
                      height: 115,
                      // clipBehavior: Clip.hardEdge,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10)
                      // ),
                      child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(
                          'assets/gt4.jpg',
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            const Flexible(
              child: Text(
                "Welcome to Forza Horizon 4",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20)
              )
            ),
            const SizedBox(height: 10),

            Flexible(
              flex: 4,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const <Widget>[
                  Flexible(
                    child: Text(
                      "Dynamic seasons change everything at the world’s greatest automotive festival. Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. Collect, modify and drive over 450 cars. Race, stunt, create and explore – choose your own path to become a Horizon Superstar."
                      ),
                  ),
                  SizedBox(height: 10),

                  Flexible(
                    child: Text(
                      "Forza Horizon 4 is a 2018 racing video game developed by Playground Games and published by Microsoft Studios. It was released on 2 October 2018 on Xbox One and Microsoft Windows after being announced at Xbox's E3 2018 conference. An enhanced version of the game was released on Xbox Series X/S on 10 November 2020. The game is set in a fictionalised representation of areas of Great Britain. It is the fourth Forza Horizon title and eleventh instalment in the Forza series. The game is noted for its introduction of changing seasons to the series, as well as featuring several content-expanding updates which have included new game modes."
                      )
                  ),
                  SizedBox(height: 10),

                  Flexible(
                    child: Text(
                      "Forza Horizon 4 is a racing video game set in an open world environment based in a fictionalised Great Britain, with regions that include condensed representations of Edinburgh, the Scottish Highlands, the Lake District (including Derwentwater), Ambleside and the Cotswolds (including Broadway), Bamburgh among others. The game features a route creator which enables players to create races using completely customised routes. The game takes place in a synchronised shared world, compared to the AI-driven 'drivatars' from its predecessors, with each server supporting up to 72 players. The game is also playable in offline mode."
                      )
                  ),
                  SizedBox(height: 10),

                  Flexible(
                    child: Text(
                      "The game features a dynamic weather system that also depicts the change of seasons. The environment in the world will change depending on the season: for example, Derwentwater would freeze over in winter and allow players the ability to drive on the ice to reach areas of the game world that would be inaccessible during all the other seasons. The seasons are fixed across the game's servers, meaning that all players will experience the same conditions at the same time. After completing a prologue series of events which introduce players to all four seasons, the shared-world seasons will change every week, with the changes happening on Thursdays at 2:30PM GMT. The season changes are forewarned to players in the game with a countdown clock, which, when finished, will trigger a short cinematic cutscene showing the previous season changing to the new one, although the cinematic will be delayed for players who are in the middle of an event or activity."
                      )
                  )
                ]
              ),
            ),
            SizedBox(height: 26),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: (){
                Navigator.push(
                  context,MaterialPageRoute
                  (builder: (context) => Order())
                  );
              },
              child: Text('Order Now'),
              ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor:  Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      
    );
  }
}
