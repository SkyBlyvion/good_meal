import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/Movie.dart';

class HttpHelper {
  // structure
  final String urlKey = '';
  final String urlBase = "https://ghibliapi.vercel.app";
  final String urlMethod = "/films";

  // method who parse and use promise
  Future<List<Movie>?> getMovies() async {
    // promise return listMovies
    final String gibliApi = urlBase + urlMethod;

    // request action
    http.Response result = await http.get(Uri.parse(gibliApi));
    // result.statusCode == 200
    if (result.statusCode == HttpStatus.ok) {
      final responseBody =
          jsonDecode(result.body).cast<Map<String, dynamic>>(); // force hash
      List<Movie> movies =
          responseBody.map<Movie>((item) => Movie.fromJson(item)).toList(); // store in list the hashed object
      return movies;
    } else {
      return null; // return null or [] if null add ?
    }
  }
}
