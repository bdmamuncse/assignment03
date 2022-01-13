import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        //height: 220,
        //width: 400,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
            const Text('Md. Sazzad Hossain'),
            const Text('The City Bank Limited'),
            const Text('\n'),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          //0padding: const EdgeInsets.only(left: 60.0,right: 60.0),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                          ),
                         child: const Text('06',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        Container(child: const Text('catption1',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          //0padding: const EdgeInsets.only(left: 60.0,right: 60.0),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                          ),
                          child: const Text('06',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        Container(child: const Text('Caption2',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          //0padding: const EdgeInsets.only(left: 60.0,right: 60.0),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                          ),
                          child: const Text('06',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        Container(child: const Text('Caption3',style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  ),
                   ],
              ),
            ),
            Container(
              height: 120,
              width: 500,
              alignment: Alignment.center,
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
                  ],
                ),
              ),
            ),
            ],
        ),
      ),

    );
  }
}
