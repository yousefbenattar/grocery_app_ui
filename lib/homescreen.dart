import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_ui/itemdetail.dart';
import 'data.dart';
import 'main.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding:const EdgeInsets.only(right: 20,left: 20,top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
          const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Welcom"),
                Text('Joseph Belfort',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],),
              CircleAvatar(backgroundImage: AssetImage("assets/1.png"),radius: 25,)
            ],),
            smallbox,
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 SizedBox(
                 height: 55,
              width: 250,
                 child: CupertinoSearchTextField(
                    prefixIcon: Icon(Icons.search),
                    placeholder: 'Search',
                  ),
               ),
                Icon(Icons.settings)
              ],),
            )
            ,smallbox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            const  Column(
                children: [
                  Text('all',style: TextStyle(color: Colors.green),),
                  CircleAvatar(backgroundColor: Colors.green,radius: 3,)
                ],
              ),
              Column(
                children: [
                const  Text('fruit'),CircleAvatar(backgroundColor: backgroundcolor,radius: 3,)
                ],
              ),
              Column(
                children: [
                const  Text('vegetebels'),CircleAvatar(backgroundColor: backgroundcolor,radius: 3,)
                ],
              ),
              Column(
                children: [
                const  Text('moot'),CircleAvatar(backgroundColor: backgroundcolor,radius: 3,)
                ],
              ),
              Column(
                children: [
                const  Text('dairy'),CircleAvatar(backgroundColor: backgroundcolor,radius: 3,)
                ],
              ),
              ],),
              smallbox,
             const List(),
             smallbox,
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Recently Shoped",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               ],
             ),
            smallbox,
        Recently()
        ],),
      ),
    );
  }
}


class Recently extends StatelessWidget {
  const Recently({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(child: ListTile(
            leading: Image(image: AssetImage(data[index].img)),
            title: Text(data[index].name),
            subtitle: Text(data[index].type),
            trailing: Text("\$${data[index].prix}"),
          ));
        },
      ),
    );
  }
}


class List extends StatelessWidget {
  const List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context,index){
        Item item = data[index];
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail(item: item)));
          },
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.all(5),
            height: 200,
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image(image: AssetImage(data[index].img),width: 100,height: 100,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      Text(data[index].name,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(width: 4,),
                      Text(data[index].type,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15)),
                    ],
                  ),
               Text(data[index].type,style: TextStyle(color: Colors.grey),),
               Text("\$${data[index].prix}",style: TextStyle(color: Colors.green),),
                ],),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10))
                  ),
                  child: Icon(Icons.shopping_bag,color: Colors.white,))
              ],)
            ],),
          ),
        );
      }),
    );
  }
}

