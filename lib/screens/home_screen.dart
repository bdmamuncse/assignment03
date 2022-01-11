import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/screens/second_page.dart';

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
                    height: 60.0,
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
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            '    Name',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextFormField(
                          cursorColor: Colors.red,
                    controller: TextEditingController(),
                    enabled: true,
                    maxLines: 1,
                    maxLength: 20 ,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'input is required';
                      }
                      return null;
                    },
                    decoration:  const InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(color: Colors.red ),
                      ), hintText: 'put your name',
                     contentPadding: EdgeInsets.only(left: 50),
                     ),
                  ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '    Email',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.red,
                          controller: TextEditingController(),
                          enabled: true,
                          // obscureText: true,
                          maxLines: 1,
                          maxLength: 20 ,
                          validator: (value){
                            if(value!.isEmpty){
                              return 'input is required';
                            }
                            return null;
                          },
                          decoration:  const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.red ),
                            ),
                            //prefixIcon: icon,
                            hintText: 'put your email',
                            //labelText: 'Name_label',
                            //helperText: 'Name_helper',

                            contentPadding: EdgeInsets.only(left: 50),
                            // prefix: Icon(Icons.remove_red_eye),

                          ),

                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    //height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '    Password',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.red,
                          controller: TextEditingController(),
                          enabled: true,
                          obscureText: isPasswordShow,
                          onChanged: (value){
                            _filterData(value);
                          },
                          maxLines: 1,
                          maxLength: 20 ,
                          validator: (value){
                            if(value!.isEmpty){
                              return null;
                            }
                            return null;
                          },
                          decoration:  const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.red ),
                            ),
                            //prefixIcon: icon,
                            hintText: 'Enter Your Password',
                            //labelText: 'Name_label',
                            //helperText: 'Name_helper',

                            contentPadding: EdgeInsets.only(left: 50),
                            // prefix: Icon(Icons.remove_red_eye),

                          ),

                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    //height: 90,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '   Retype Password',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.red,
                          controller: TextEditingController(),
                          enabled: true,
                          obscureText: isPasswordShow,
                          onChanged: (value){
                            _filterData(value);
                          },
                          maxLines: 1,
                          maxLength: 20 ,
                          validator: (value){
                            if(value!.isEmpty){
                              return null;
                            }
                            return null;
                          },
                          decoration:  const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Colors.red ),
                            ),
                            //prefixIcon: icon,
                            hintText: 'Retypr you password',
                            contentPadding: EdgeInsets.only(left: 50),
                            ),
                        ),
                      ],
                    ),
                  ),
                  ///
                  Container(
                    height: 30,
                    //width: 80,
                    child:ButtonTheme(
                      minWidth: 200.0,
                      height: 100.0,
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          _loginSubmit();
                        }
                      },
                      child: const Text('Signup'),

                    ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                   child: const Text('Already Have an account ?',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    child: ButtonTheme(
                      minWidth: 200.0,
                      height: 100.0,
                    child: RaisedButton(
                      color: Colors.deepOrange,
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const SecondPage()),
                        );

                        if(formKey.currentState!.validate()){
                          _loginSubmit();
                        }
                      },
                      child: const Text('Login'),

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

  void _loginSubmit() {

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
