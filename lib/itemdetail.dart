import 'package:flutter/material.dart';
import 'package:grocery_app_ui/main.dart';

import 'data.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key,required this.item});
  final Item item ;

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
 int number = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.arrow_back_ios,color: Colors.orange,size: 20,),
          ),
        ),
        actions: [Container(
           padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
          child: Icon(Icons.shopping_cart,color: Colors.orange,))],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15,left: 20,right: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(children: [
            Image(image: AssetImage(widget.item.img),width: 250,),
            Row(children: [Text(widget.item.name,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                Icon(Icons.star,color: Colors.amber,),
                Icon(Icons.star,color: Colors.amber,),
                Icon(Icons.star,color: Colors.amber,),
                Icon(Icons.star,color: Colors.amber,),
                Icon(Icons.star,color: Colors.grey,),
                Text('(4.4)')
              ],),
              Row(
                children: [
                IconButton(
                  onPressed: (){
                    setState(() {
                      number++;
                    });
                  },
                icon:   Icon(Icons.add)),
                Text(number.toString()),
                IconButton(
                  onPressed: (){
                    if(number>0){
                                          setState(() {
                      number--;
                    });
                    }
          
                  },
                 icon:  Icon(Icons.remove) ),
              ],)
            ],),
          
            Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            smallbox,
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
          
          
          ],),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          //color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(children: [
              Text('Price'),
              Text('\$ ${widget.item.prix}'),
            ],),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor:Colors.green ),
              onPressed: (){}, child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
          ],),
        ),
      ),
    );
  }
}