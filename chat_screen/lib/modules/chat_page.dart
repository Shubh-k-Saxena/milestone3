import 'package:chat_screen/components/chat.dart';
import 'package:chat_screen/models/chat_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Jack Jones", secondaryText:"Nice Try", image: "assets/userimage1.jpg", time:"Now"),
    ChatUsers(text: "Aran Lee", secondaryText:"Will catch up soon", image: "assets/userimage2.jpg", time:"Yesterdya"),
    ChatUsers(text: "Brandon steve", secondaryText:"See Yaa Soon", image: "assets/userimage3.jpg", time:"2 june"),
    ChatUsers(text: "Utkarsh Tripathi", secondaryText:"See You There", image: "assets/userimage4.jpg", time:"28 may"),
    ChatUsers(text: "Harshit Mittal", secondaryText:"Awesome", image: "assets/userimage5.jpg", time:"25 may"),
    ChatUsers(text: "Arpit Chaudhary", secondaryText:"Rom Rom Bhai", image: "assets/userimage6.jpg", time:"20 may"),
    ChatUsers(text: "Shubh Saxena", secondaryText:"Har Har Mahadev", image: "assets/userimage7.jpg", time:"15 may"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
                    padding: EdgeInsets.only(left: 16,right: 16,top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Conversations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Container(
                        padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink[50],
                        ),
                        child: const Row(
                          children: <Widget>[
                            Icon(Icons.add,color: Colors.pink,size: 20,),
                            SizedBox(width: 2,),
                            Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),

                          ],
                        ),
                      )
                    ],

                  ),
                )
            ),
            Padding(
                padding: EdgeInsets.only(top: 16 ,left: 16,right: 16),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey.shade100
                          )
                      )
                  ),
                ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 5),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUserList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,

                );
              }

            )
          ],
        ),
      ),
    );
  }
}