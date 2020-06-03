import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:uiinstagramcloneapp/post.dart';
import 'package:uiinstagramcloneapp/story.dart';

class Feed extends StatelessWidget {
 
 List<Story> _stories = [
  Story(
    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Sakura"),
  Story(
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Ishida"),
  Story(
    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Inoue"),
  Story(
    "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Robin"),
  Story(
    "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Tashigi"),
  Story(
    "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Aokiji"),
  Story(
    "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Nami"),
  Story(
    "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Nico"),
  Story(
    "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Rukia"),
  Story(
    "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Usopp"),
  Story(
    "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "Hinata")
 ];
 
 List<Post> posts = [
  Post(
    username: "Akainu",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
    postImage:
    "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Panda",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/kevka/128.jpg",
    postImage:
    "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Ichigo",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/ionuss/128.jpg",
    postImage:
    "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Frank",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/vinciarts/128.jpg",
    postImage:
    "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Garp",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/ssiskind/128.jpg",
    postImage:
    "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Dragon",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/areus/128.jpg",
    postImage:
    "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
  Post(
    username: "Chad",
    userImage: "https://s3.amazonaws.com/uifaces/faces/twitter/oskarlevinson/128.jpg",
    postImage:
    "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    caption: "Consequatur nihil aliquid omnis consequatur."),
 ];
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Column(
      children: <Widget>[
       Divider(),
       Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
          Text(
           'Stories',
           style: TextStyle(
            fontSize: 14,
           ),
          ),
          Text(
           'Ver Todos',
           style: TextStyle(
            fontSize: 14,
           ),
          ),
         ],
        ),
       ),
       Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 110,
        child: ListView(
         scrollDirection: Axis.horizontal,
         shrinkWrap: true,
         children: _stories.map((story) {
          return Column(
           children: <Widget>[
            Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              border: Border.all(
               width: 3,
               color: Color(0XFF8E44AD),
              ),
             ),
             child: Container(
              padding: EdgeInsets.all(2),
              child: ClipRRect(
               borderRadius: BorderRadius.circular(70),
               child: Image(
                image: NetworkImage(story.image),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
               ),
              ),
             ),
            ),
            SizedBox(height: 10),
            Text(story.name),
           ],
          );
         }).toList(),
        ),
       ),
       Container(),
       Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
         shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
         itemCount: posts.length,
         itemBuilder: (context, index) {
          return Container(
           color: Colors.white,
           child: Column(
            children: <Widget>[
             Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                Row(
                 children: <Widget>[
                  ClipRRect(
                   borderRadius: BorderRadius.circular(40),
                   child: Image(
                    image: NetworkImage(posts[index].userImage),
                    width: 40,
                    height: 40,
                   ),
                  ),
                  SizedBox(width: 10),
                  Text(posts[index].username),
                 ],
                ),
                IconButton(
                 onPressed: () {},
                 color: Colors.black,
                 icon: Icon(SimpleLineIcons.options),
                 iconSize: 15,
                ),
               ],
              ),
             ),
             FadeInImage(
              placeholder: AssetImage('assets/placeholder.png'),
              image: NetworkImage(posts[index].postImage),
              width: MediaQuery.of(context).size.width,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Row(
                children: <Widget>[
                 IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(FontAwesome.heart_o),
                 ),
                 IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(FontAwesome.comment_o),
                 ),
                 IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  icon: Icon(Feather.send),
                 ),
                ],
               ),
               IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(FontAwesome.bookmark_o),
               ),
              ],
             ),
             Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 14),
              child: RichText(
               softWrap: true,
               overflow: TextOverflow.visible,
               text: TextSpan(
                children: [
                 TextSpan(
                  text: 'Curtido por: ',
                  style: TextStyle(color: Colors.black),
                 ),
                 TextSpan(
                  text: ' Freud,',
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                 ),
                 TextSpan(
                  text: ' Einstein',
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                 ),
                 TextSpan(
                  text: ' e ',
                  style: TextStyle(color: Colors.black),
                 ),
                 TextSpan(
                  text: 'outras 6.037 pessoas',
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                 ),
                ],
               ),
              ),
             ),
             Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              child: RichText(
               softWrap: true,
               overflow: TextOverflow.visible,
               text: TextSpan(
                children: [
                 TextSpan(
                  text: posts[index].username,
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                 ),
                 TextSpan(
                  text: " ${posts[index].caption}",
                  style: TextStyle(color: Colors.black),
                 ),
                ],
               ),
              ),
             ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              alignment: Alignment.topLeft,
              child: Text(
               'Há 44 minutos',
               style: TextStyle(color: Colors.black87),
              ),
             ),
            ],
           ),
          );
         },
        ),
       ),
      ],
     ),
    );
  }
}
