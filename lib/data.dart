class Item {
  String name ;
  String img ;
  String type ;
  double prix ;
  Item({required this.name,required this.type,required this.prix,required this.img,});
}

List<Item> data = [
  Item(name: "orange",img : "assets/1.png",type: "fruit",prix: 14.99),
  Item(name: "brokoli",img : "assets/2.png",type: "vegetebels",prix: 14.99),
  Item(name: "carots",img : "assets/3.png",type: "vegetebels",prix: 14.99),
  Item(name: "bananas",img : "assets/4.png",type: "fruit",prix: 14.99),
  Item(name: "tomatos",img : "assets/5.png",type: "vegetebels",prix: 14.99),
  Item(name: "peper",img : "assets/6.png",type: "vegetebels",prix: 14.99),
  Item(name: "avocado",img : "assets/7.png",type: "fruit",prix: 14.99),
  Item(name: "apple",img : "assets/8.png",type: "fruit",prix: 14.99),
];