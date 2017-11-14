/*
Author: Rebecca Dillon
Student number: C16736885
*/
Table table;
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void setup(){
  size(800,600);
  loadData();
}

void draw() {;
}

class Product {
  String name;
  float price;
  
  
  Product(TableRow row){
    name = row.getString("Name");
    price = row.getFloat("Price");
  }
}

void loadData(){
  table = loadTable("cafe.csv", "header");
  for(TableRow r : table.rows()){
    String n = r.getString("Name");
    float f = r.getFloat("Price");
  }
}