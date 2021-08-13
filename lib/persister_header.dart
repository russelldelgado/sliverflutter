import 'package:flutter/material.dart';

class PersistenceHeaders extends StatefulWidget {
  PersistenceHeaders({Key? key}) : super(key: key);

  @override
  _PersistenceHeadersState createState() => _PersistenceHeadersState();
}

class _PersistenceHeadersState extends State<PersistenceHeaders> {
  @override
  Widget build(BuildContext context) {
   final altura = MediaQuery.of(context).padding.top; // esto me devuelve la altura del status bar
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate:MyPersistenHeadersDelegate(username: "russell" , maxExtentHeigth: 400 , statusBarHeigth: altura) ,),
          SliverList(delegate: SliverChildBuilderDelegate((_ , i){
            return ListTile(
              title: Text("dato $i"),
            );
          }))
        ],
      ),
    );
  }
}

class MyPersistenHeadersDelegate extends SliverPersistentHeaderDelegate {
  String username; 
  final double maxExtentHeigth;
  final double statusBarHeigth;
  double? minExtendHeigth;
  double appBarSize = 60;

  MyPersistenHeadersDelegate({
    required this.maxExtentHeigth,
    required this.statusBarHeigth, 
    required this.username,
  }){
       minExtendHeigth = appBarSize + this.statusBarHeigth;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
   return SizedBox.expand(
     child: Container( 
       alignment: Alignment.center,
       color: Colors.yellow, 
       padding: EdgeInsets.only(top: this.statusBarHeigth),
       child: Text("${shrinkOffset.toStringAsFixed(0)}" , style: TextStyle(color: Colors.white , fontSize: 30),),));
  }

  @override
  double get maxExtent => maxExtentHeigth;

  @override
  double get minExtent => minExtendHeigth!;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }


}
