import 'package:flutter/material.dart';

class SliverAppMyBar extends StatefulWidget {
  SliverAppMyBar({Key? key}) : super(key: key);

  @override
  _SliverAppMyBarState createState() => _SliverAppMyBarState();
}

class _SliverAppMyBarState extends State<SliverAppMyBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            
            elevation: 10,
            pinned: true,
            floating: true,
            leading: Icon(Icons.arrow_back),
            expandedHeight: 200,
            actions: [
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.search)),
              IconButton(onPressed: () {
                
              }, icon: Icon(Icons.more))
            ],
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Flutter app "),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image(image: NetworkImage("https://guiadev.com/imagenes//2016/11/imagenes-gratis-sin-copyright.jpg") , fit: BoxFit.fill,),
                  DecoratedBox(decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black26,
                        Colors.black
                      ],
                      begin: Alignment.topLeft
                    )
                  )),
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (_ , i){
                return ListTile(
                  leading: Text("texto $i"),
                );
            }
          ))
        ],
      ),
    );
  }
}