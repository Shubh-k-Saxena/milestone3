
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 100,
      ),
      //body of the signup page
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(20),
                Container(
                  height: h*0.2,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:   Colors.lightGreen,
                      boxShadow: const [
                        BoxShadow(
                        color:Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 10.0,
                        spreadRadius:2.0 ),
                        ]
                        ),
                  child: const Center(child:Text(
                    "I'm looking for a teacher",style: TextStyle(fontSize:20,color: Colors.white),
                    ) ,),
                ),
                const Gap(20),
                Container(
                  height: h*0.2,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                        color:Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 10.0,
                        spreadRadius:2.0 ),
                        ]
                      ),
                  child: const Center(child:Text(
                  "I'm looking a teacher",style: TextStyle(fontSize:20,color: Colors.black),
                    ) ,),
                ),
                const Gap(20),
                Container(
                  height: h*0.2,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                        color:Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 10.0,
                        spreadRadius:2.0 ),
                        ]
                      ),
                  child: const Center(child:Text(
                    "I'm looking for a teacher",style: TextStyle(fontSize:20,color: Colors.black),
                    ) ,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
