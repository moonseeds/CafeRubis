/*
Author: Rebecca Dillon
Student number: C16736885
*/

Table table;

void setup(){
  size(800,600);
  table = loadTable("cafe.csv", "header");

}

class Product {
  String name;
  float price;
  
  
  Product(){
    println("test");
  }
}