/*
Author: Rebecca Dillon
Student number: C16736885
*/

Table table;
Product p1;

void setup(){
  size(800,600);
  p1 = new Product();

}

void draw() {;
}

class Product {
  String name;
  float price;
  
  
  Product(TableRow tr){
    name = tr.setString("Name");
    price = tr.setFloat("Price");
  }
}

void loadData(){
  table = loadTable("cafe.csv", "header");
}