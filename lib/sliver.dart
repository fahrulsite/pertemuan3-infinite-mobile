import 'package:flutter/material.dart';

class Sliver extends StatefulWidget {
  const Sliver({Key? key}) : super(key: key);

  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Ini Jepang"),
              centerTitle: true,
              background: Image.asset("assets/images/images.jpeg", fit: BoxFit.fill,),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Container(
                    height: 50,
                    alignment: Alignment.center,
                    color: Colors.green[100 * (index%9)],
                    child: Text("Green $index"),
                  );
                }, childCount: 9
            ),
          ),

          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.blue[100*(index%9)],
                    child: Text("grid $index"),
                  );
                }
            ),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
          )
        ],
      ),
    );
  }
}
