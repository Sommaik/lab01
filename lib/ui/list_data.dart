import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/post.dart';
import 'package:lab01/ui/list_view_posts.dart';

class ListData extends StatelessWidget {
  
  Future<List<Post>> loadPost() async {
    Response resp = await get("https://jsonplaceholder.typicode.com/posts");
    List<dynamic> data = json.decode(resp.body);
    List<Post> posts = List();
    data.forEach((d) {
      posts.add(Post.fromJson(d));
    });
    print(posts.length);
    print(posts.elementAt(20).title);
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data"),
      ),
      body: FutureBuilder(
        future: loadPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) print("load data error");
          return snapshot.hasData
              ? ListViewPosts(posts: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
