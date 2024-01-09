

/*void main() {
  // Main thread

  print("1 Network Connection Established.");
  print("2 Main Started.");

  printFileContent();

  print("3 Main Terminates.");
}*/

/*void printFileContent() async {
  // different thread

  String fileContent = await downloadFileFromDummyNetwork();
  print("4 The content of file is ------------> $fileContent");
}*/

void printFileContent() {

  Future<String> fileContent = downloadFileFromDummyNetwork();

  fileContent.then((value) {
    // different thread
    print("4 The content of file is ------------> $fileContent");
  });
}

Future<String> downloadFileFromDummyNetwork() {

  Future<String> result = Future.delayed(const Duration(seconds: 10), () {
    return "My Secret File Content";
  });

  return result;
}


















/*
void main() {

  // SET never allow duplicate elements
  Set<String> countries = {};
  countries.add("INDIA");
  countries.add("INDIA");
  countries.add("USSR");
  //countries.forEach((element) => print(element));

  //Map<Key, Value>
  Map<String, String> fruits = {};
  fruits["apple"] = "red";
  fruits["strawberry"] = "red";
  fruits["banana"] = "yellow";
  fruits["apple"] = "green";

  */
/*for(int i = 0; i < fruits.keys.length; i++) {
    print(fruits.entries.elementAt(i));
  }*//*


  fruits.forEach((key, value) => print("Key : $key ----- Value : $value"));

}*/


// Custom Widget
/*
import 'package:flutter/cupertino.dart';

class BusImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AssetImage assetImage = AssetImage('images/bus.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}*/
