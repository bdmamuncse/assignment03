
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawer_list.dart';

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

      drawer: const DrawerList(),
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
            const Text('\n', style: TextStyle(fontSize: 10),),
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
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
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
                              "https://avatars.githubusercontent.com/u/50566037?v=4",
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
                              "https://avatars.githubusercontent.com/u/50566037?v=4",
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
                              "https://avatars.githubusercontent.com/u/50566037?v=4",
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
                              "https://avatars.githubusercontent.com/u/50566037?v=4",
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
            Container(
              padding: const EdgeInsets.only(left: 60.0,right: 60.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.only(left: 60.0,right: 60.0),
                    child: const Text('\n Featured Categories', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 120,
                    width: 500,
                    child: SingleChildScrollView(
                     // padding: const EdgeInsets.only(left: 60.0,right: 60.0,),
                      //controller: ScrollController(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                          Container(
                            height:100 ,
                            width:80,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.grey,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/50566037?v=4",
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          const Text('   '),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 500,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          //padding: const EdgeInsets.only(left: 60.0),
                          child: const Text('\n Featured Categories', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 230,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.grey,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/50566037?v=4",
                                  ),
                                  //alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 230,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                color: Colors.grey,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "https://avatars.githubusercontent.com/u/50566037?v=4",
                                  ),
                                  //alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}
