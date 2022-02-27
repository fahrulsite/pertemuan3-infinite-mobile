import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pertemuan3/sliver.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _biggger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: _biggger ? 300 : 100,
              child: Image.asset("assets/images/kangGojek.png"),
              curve: Curves.bounceOut,
            ),

            RaisedButton(
              onPressed: () => setState(() {
                _biggger =! _biggger;
              }),
              child: Text("Ini Button"),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: ()=> showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_yo2zavgg.json"),
                      Text("Ini Long Press", style: TextStyle(fontWeight: FontWeight.w200),)
                    ],
                  ),
                )
              ),

              onDoubleTap: ()=> showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Text("Ini double Tab"),
                  )
              ),

              onLongPress: ()=> showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: Text("Ini Long Press"),
                  )
              ),

              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:BorderRadius.all(Radius.circular(15))
                ),
                child: Center(
                  child: Text("Button 2", style: TextStyle(color: Colors.white),),
                )
              ),
            ),

            SizedBox(height: 30,),

            InkWell(
              onTap: () => Get.to(Sliver()),
              child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:BorderRadius.all(Radius.circular(15))
                  ),
                  child: Center(
                    child: Text("Button 3", style: TextStyle(color: Colors.white),),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

