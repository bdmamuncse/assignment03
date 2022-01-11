import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //         ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [BackButton(),],
            ),
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
              child: Column(
                children: [
                  Container(
                    child: Text('Phone Number',textAlign: TextAlign.left,),
                    ),
                ],
              ),
            ),
            Container(),
            Container(),
          ],
        ),
      ),

    );
  }
}
