import 'package:flutter/material.dart';
import 'package:good_meal/helper/HttpHelper.dart';
import 'package:good_meal/models/Constantes.dart';
import 'package:good_meal/models/MakeItResponsive.dart';
import 'package:good_meal/widgets/PhoneBar.dart';
import 'package:good_meal/widgets/WebBar.dart';
import '../models/Movie.dart';
import '../widgets/DrawerSmall.dart';

//statefull car besoin de cycle de vie et dynamisne au sein de la page
class GibliPage extends StatefulWidget {
  const GibliPage({super.key});

  @override
  State<GibliPage> createState() => _GibliPageState();
}

class _GibliPageState extends State<GibliPage> {

  int moviesCount = 0;
  List<Movie> movies = []; // on crée une liste vide instancié a movie
  HttpHelper helper = HttpHelper();

  // initstate snippet
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialize();
  }

  Future initialize() async {
    movies = (await helper.getMovies())!;
    setState(() {
      moviesCount = movies.length;
      movies = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    // declarer variable size qui va recuperer la taille du contexte
    //composant est un objet de type size et recupere le context
    // ;pour terminer une action en dart
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    // je remplace le placeholder par un scaffold et appbar
    return Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      drawer: DrawerSmall(), // composant de menu pour tel
      body: ListView.builder(
        itemCount: moviesCount,
        itemBuilder: (BuildContext context, int pos) {
          final movie = this.movies[pos]; // index position
          return  Card(
            color: appBarColor,
            elevation: 2,
            child: ListTile(
              title: Text(movie.title),
              subtitle: Text(movie.description),
              leading: Image.network(movie.image, width: 100,),
            ),
          );
        },

      )
    );
  }
}
