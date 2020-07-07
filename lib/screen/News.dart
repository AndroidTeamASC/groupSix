import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api_project/Api/NewsApi.dart';
import 'package:http/http.dart' as http;

class MyNews extends StatefulWidget {
  @override
  _MyNewsState createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
   Future<List<News>> loadCardData() async{
   var base_url="http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=57a2e15d1f48416d986fa6e25771ee9a";
   var data=await http.get(base_url);
   var jsonData= json.decode(data.body);
   var newsData= jsonData['top-headlines'];
   List<News> news=[];
   for(var data in newsData){
     News newsItem= News(
       data['author'],
       data['title'],
       data['description'],
       data['urlToImage']
     );
     news.add(newsItem);
   }
   return news;

}
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:Column(children: <Widget>[
            

          ],)
        ),
    );
  }
}

Widget Firstrow(){
  return Row(
    children: <Widget>[
      Text("News",style:GoogleFonts.abel(fontSize:20),)
    ],
  );
}

Widget Secondrow(){
 final nnews=DataCall;
  return Container(
     child: FutureBuilder(
       future: ,
     ),
  );
}