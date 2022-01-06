import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var pageTitle='';
  var formKey=GlobalKey<FormState>();
  var usernameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var controller=TextEditingController();
  var isPasswordShow=true;

  @override
  void initState() {
    usernameController.text='put your name here';
    emailController.text='Your email here';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
            child: SingleChildScrollView(

              child: Form(
                child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    //width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.icons8.com/office/344/user.png"
                          ),
                          alignment: Alignment.center,
                        )
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    //width: 100.0,
                    // color: Colors.red,
                    height: 50.0,
                    child: const Text('Join the Active Ecommerce',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const Text('Name'),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.red,
                          ),


                      ],

                    ),

                  ),

                   MyCustomTextField(
                     editingController: usernameController,
                     errorMessage: 'Name',
                     hints: 'Name',
                     helpetext: 'Name',
                     label: 'Name',

                     //icon: const Icon(Icons.person_outline),
                     voidCallback:(){
                  //   print(usernameController.text);
                   } ,),
                   MyCustomTextField(
                    editingController: emailController,
                    errorMessage: 'Enter Your Email please',
                    hints: 'Email',
                    helpetext: 'someone@somedomain.com',
                    label: 'Email',

                    //icon: const Icon(Icons.person_outline),
                    voidCallback:(){
                      //   print(usernameController.text);
                    } ,),


                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                    ),


                    height: 70,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      enabled: true,
                      obscureText: isPasswordShow,
                      //onChanged: (value){_filterData(value);},
                      maxLines: 1,
                      maxLength: 30,
                      validator: (value){
                        if(value!.isEmpty){
                          return 'password is requried';
                        }
                        return null;
                      },
                      decoration:  InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.red, ),
                        ),
                        //prefixIcon: Icon(Icons.lock),
                        hintText: 'password',
                        labelText: 'password1111',
                        helperText: 'password name should be 8 character',
                        contentPadding: const EdgeInsets.only(left: 5),
                        // suffixIcon: Icon(Icons.remove_eye_),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              if(isPasswordShow==true){
                                isPasswordShow=false;
                              }else{
                                isPasswordShow=true;
                              }
                              // isPasswordShow= !false;
                            });
                          },
                          icon: isPasswordShow==true? const Icon(Icons.remove_red_eye) : const Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                    ),
                  ),


                ],
                ),
                key: formKey,
              ),

            ),

        ),


        );

  }

  void _filterData(String value) {
  }

  @override
  void dispose(){
    controller.dispose();
    controller.clear();
    // print('dispose method called called');
    super.dispose();
  }

  void screenBuildStatus(String status){ print(status);}

}
