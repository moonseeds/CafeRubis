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
  printProducts();

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
  
  String toString(){
    return name + "\t" + price;
  }
}

void loadData(){
  table = loadTable("cafe.csv", "header");
  for(TableRow r : table.rows()){
   // String n = r.getString("Name");
    // float f = r.getFloat("Price");
    products.add(new Product(r));
  }
}

void printProducts(){
  for(int i=0; i<products.size(); i++){
   Product test = products.get(i);
   println(test.toString());
  }
  
}