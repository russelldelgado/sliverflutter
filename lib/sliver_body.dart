import 'package:flutter/material.dart';

class SliverBody extends StatelessWidget {
  const SliverBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: CustomScrollView(
              slivers: [
                SliverSafeArea(
                  top: true,
                  bottom: false,
                  sliver : SliverList(
                  
                    delegate: SliverChildListDelegate(
                      [
                        Container( height: 100 , color: Colors.red, child: Text("delegando texto uno")),
                        Container( height: 100 , color: Colors.blue, child: Text("delegando texto uno")),
                        Container( height: 100 , color: Colors.green, child: Text("delegando texto uno")),
                        Container( height: 100 , color: Colors.blue, child: Text("delegando texto uno")),
                        Container( height: 100 , color: Colors.yellow, child: Text("delegando texto uno")),
                      ]
                    )),
                ),
        
                SliverToBoxAdapter(
                  child: Container(
                    height: 300,
                    color: Colors.black,
                  ),
                ),

                SliverSafeArea(
                  top: false,
                  sliver: SliverGrid.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    ],
                    
                    ),
                ),

                SliverGrid(
                  delegate:SliverChildBuilderDelegate((_ , i){
                  return Container(
                     
                      color: Colors.purple,
                    );

                  } , childCount: 100 , ) , 
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50 , crossAxisSpacing: 10 , mainAxisSpacing: 10 , childAspectRatio: 10/16),
                ),

                   SliverList(delegate: SliverChildBuilderDelegate(
                      ( _ , i){
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 100,
                          color: i%2 == 0 ? Colors.greenAccent : Colors.blue,
                        );
                          
                      },childCount: 10
                    ),
                  )
              ],
            )
          ),
        ),);
  }
}