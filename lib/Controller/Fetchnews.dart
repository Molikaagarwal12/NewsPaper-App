
import 'dart:convert';
import 'dart:math';
import 'package:newspaper_app/model/NewsArt.dart';
import 'package:http/http.dart';
import 'package:newspaper_app/model/NewsArt.dart';
  class fetchnews{
    static List sourcesId = [
      "abc-news",

      "bbc-news",
      "bbc-sport",

      "business-insider",

      "engadget",
      "entertainment-weekly",
      "espn",
      "espn-cric-info",
      "financial-post",

      "fox-news",
      "fox-sports",
      "globo",
      "google-news",
      "google-news-in",

      "medical-news-today",

      "national-geographic",

      "news24",
      "new-scientist",

      "new-york-magazine",
      "next-big-future",

      "techcrunch",
      "techradar",

      "the-hindu",

      "the-wall-street-journal",

      "the-washington-times",
      "time",
      "usa-today",

    ];
  static Future<newsArt> fetchNews() async{
    final _random=new Random();
    var sourceId= sourcesId[_random.nextInt(sourcesId.length)];
    // print(element);
    Response response= await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceId&apiKey=dad6e234f0a649abb0bd2061268ef5b7"));
    Map body_data=jsonDecode(response.body);
    List articles=body_data["articles"];
    print("*****************************************************************************************");
    final _Newrandom=new Random();
    var myarticle= articles[_random.nextInt(articles.length)];
    print(myarticle);
    print("*****************************************************************************************");

    return newsArt.fromAPItoApp(myarticle);
  }
}