
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //         ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [BackButton(),],
            ),
            //user icons
            Container(
              alignment: Alignment.center,
              width: double.infinity,
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
            // Big text
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
            //phone text
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 75),
              height: 11.0,
              child: const Text('Phone Number',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //dropDownButton
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white
              ),

              height: 50,
              width: 350,
              child: DropdownButtonFormField<String>(
                 onChanged: (value){ return null; },
                validator: (value){
                  if(value!.isEmpty){
                    return '';
                  }

                  return null;
                },
                decoration:    const InputDecoration.collapsed(
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(20)),
                  //   borderSide: BorderSide(color: Colors.black, ),
                  // ),
                  //prefixIcon: Icon(Icons.person),
                   //helperText: '',
                   hintText: 'USA (+01)',
                  //contentPadding: EdgeInsets.all(10),
                 // enabled: isCityIsSelected,
                ),
                items: ['+88017127777','+990099877','+88017127777','+990099877'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),

                  );
                }).toList(),
              ),
            ),
            //phoneTextBox
            Container(
             height: 60,
             width: 350,
             alignment: Alignment.center,
             child: const TextField(
               //obscureText: true,
               decoration:  InputDecoration(
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(1)),
                   borderSide: BorderSide(color: Colors.brown, ),
                 ),
                 //prefixIcon: Icon(Icons.person),
                 hintText: '+901 908080808',
                 //labelText: 'Select City name',
                 helperText: '',
                 contentPadding: EdgeInsets.all(5),

               ),
             ),

           ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              width: 350,
              child: const Text('this is tesst calling from usa you adsfadsfadsfadsfadsfa adfasdfasd asdfasdf asdfadf aadf',
                  style: TextStyle(
                  color: Colors.brown,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 20,
              child: ButtonTheme(
                minWidth: 200.0,
                height: 10.0,
                child: RaisedButton(
                  color: Colors.deepOrange,
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const SecondPage()),
                    );

                    // if(formKey.currentState!.validate()){
                    //   _loginSubmit();
                    // }
                  },
                  child: const Text('SIgn Up with Phone number'),

                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10),
              height: 10,
              width: 350,
              child: const Text('  ',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 350,
              child: const Text('Or Sign up with',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.network("https://cdn-icons-png.flaticon.com/128/5968/5968764.png", height: 30, width: 30,),
                  const Text('  '),
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/300px-Google_%22G%22_Logo.svg.png", height: 30, width: 30,),
                  const Text('  '),
                  Image.network("https://cdn-icons-png.flaticon.com/512/124/124021.png", height: 30, width: 30,),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do you already have an account?"),
                  Text("Login", style: TextStyle(
                    color: Colors.red,),
                  )
                ],
              ),
            ),

              


          ],
        ),
      ),

    );
  }
}
