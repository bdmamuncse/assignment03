import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String pageTitle='';
  var controller=TextEditingController();

  @override
  void initState(){
    pageTitle='Home page';
    screenBuildStatus('intestate called');
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown,
      //  appBar: AppBar(),
      // drawer: const Drawer(),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Container(
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://img.icons8.com/office/344/user.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
            )
        ),
        ),


        );

  }

  @override
  void dispose(){
    controller.dispose();
    controller.clear();
    print('dispose method called called');
    super.dispose();
  }

  void screenBuildStatus(String status){ print(status);}



}
