
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreenAfterLogin extends StatelessWidget {
  const HomeScreenAfterLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(color: Colors.brown),),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.notifications_active_outlined),
        ],
      ),

      drawer: const Drawer(

      ),
      body: Container(

        child: Column(
          children: [
            Center(
              child: Container(
                height:100 ,
                width:530 ,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    image: NetworkImage("https://picsum.photos/250?image=9"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //firstContainer
                Container(
                  height:100 ,
                  width:100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      //ImageContainer
                      Container(
                      height:80 ,
                      width:80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70.0)),
                          color: Colors.blueAccent,
                             image: DecorationImage(
                              image: NetworkImage(
                                  "https://img.icons8.com/office/344/user.png",
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                      ),
                      //TextContainer
                      Container(
                        child: const Text('Text1',style: TextStyle(fontSize:10,color: Colors.black),),
                      ),
                    ],
                  ),

                ),
                Container(
                  height:100 ,
                  width:100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      //ImageContainer
                      Container(
                        height:80 ,
                        width:80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70.0)),
                          color: Colors.blueAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img.icons8.com/office/344/user.png",
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      //TextContainer
                      Container(
                        child: const Text('Text1',style: TextStyle(fontSize:10,color: Colors.black),),
                      ),
                    ],
                  ),

                ),
                Container(
                  height:100 ,
                  width:100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      //ImageContainer
                      Container(
                        height:80 ,
                        width:80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70.0)),
                          color: Colors.blueAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img.icons8.com/office/344/user.png",
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      //TextContainer
                      Container(
                        child: const Text('Text1',style: TextStyle(fontSize:10,color: Colors.black),),
                      ),
                    ],
                  ),

                ),
                Container(
                  height:100 ,
                  width:100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      //ImageContainer
                      Container(
                        height:80 ,
                        width:80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70.0)),
                          color: Colors.blueAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img.icons8.com/office/344/user.png",
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      //TextContainer
                      Container(
                        child: const Text('Text1',style: TextStyle(fontSize:10,color: Colors.black),),
                      ),
                    ],
                  ),

                ),
                Container(
                  height:100 ,
                  width:100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      //ImageContainer
                      Container(
                        height:80 ,
                        width:80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70.0)),
                          color: Colors.blueAccent,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img.icons8.com/office/344/user.png",
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      //TextContainer
                      Container(
                        child: const Text('Text1',style: TextStyle(fontSize:10,color: Colors.black),),
                      ),
                    ],
                  ),

                ),
              ],
            ),


          ],
        ),


      ),

    );
  }
}
