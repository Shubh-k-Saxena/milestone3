import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatUserList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  ChatUserList({required this.text,required this.secondaryText,required this.image,required this.time});

  @override
  State<ChatUserList> createState() => _ChatUserListState();
}

class _ChatUserListState extends State<ChatUserList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16,bottom: 10,top: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  maxRadius: 30,
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.text,style: TextStyle(fontSize: 16),),
                        SizedBox(height: 6,),
                        Text(widget.secondaryText,style: TextStyle(fontSize: 14,color: Colors.grey.shade500,fontWeight: FontWeight.bold),)

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(widget.time, style: TextStyle(fontSize: 12,color: Colors.grey.shade500),)
        ],
      ),
    );
  }
}
