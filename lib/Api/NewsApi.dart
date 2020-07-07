import 'dart:convert';

import 'package:file/memory.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class News{
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  News(this.author,this.title,this.description,this.urlToImage);
 
}
class DataCall{
  Future<List<News>> loadCardDataone() async{
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
}


