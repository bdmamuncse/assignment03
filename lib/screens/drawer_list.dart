import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/screens/profile_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen_after_login.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                height:30 ,
                width:30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
              const Text(
                '   Md. Sazzad Hossain \n sazzad.hossain@thecitybank.com',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ],

          ),
          ListTile(
            title: const Text('Profile'),
            //subtitle: const Text('testing 2 more'),
            leading: const Icon(Icons.supervised_user_circle_outlined),
            onTap: (){
              //Fluttertoast.showToast( msg: 'Login Success');
              Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfilePage()));
              },
            // onLongPress: (){
            //   Fluttertoast.showToast(msg: 'Home Long pressed');
            // },

            // leading: Icon(Icons.supervised_user_circle),
          ),
          ListTile(
            title: const Text('Go Home'),
            //subtitle: const Text('testing 2 more'),
            leading: const Icon(Icons.home_outlined),
            //trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreenAfterLogin()));},

          ),
          ListTile(
            title: const Text('first items'),
            //subtitle: const Text('testing 2 more'),
            leading: const Icon(Icons.favorite),
            //trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){

            },
          ),
          ListTile(
            title: const Text('Logout'),
           // subtitle: const Text('testing 2 more'),
            leading: const Icon(Icons.logout_outlined),
            //trailing: const Icon(Icons.arrow_forward_ios),
            onTap: (){
               },
          ),
          const Divider(height: 1,),

          ],
      ),

    );
  }
}
