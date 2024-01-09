import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Center(
      child: Container(
        alignment: Alignment.topCenter,
        color: Colors.white,
        //margin: const EdgeInsets.only(left: 50.0, top: 50.0),
        child: getListView(),
      ),
    );*/
    return Scaffold(
      body: getListView(),
    );
  }
}

// Form Data Collection
List<String> getListItems() {
  var items = List<String>.generate(1000, (index) => "Item Count $index");
  return items;
}

// Convert the data into list items and added into listview
Widget getListView() {
  var listItems = getListItems();
  //print("Data $listItems");
  var listView = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  leading: const Icon(Icons.arrow_right),
                  title: Text(listItems[index]),
                  onTap: () {
                    //debugPrint('${listItems[index]} was tapped.');
                    showSnackBarMsg(context, listItems[index]);
                  },
                ),
              ),
            ),
          ],
        );
      });
  return listView;
}

void showSnackBarMsg(BuildContext context, String listItem) {
  var snackBar = SnackBar(
    content: Text(listItem.toString()),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {
        showAlertDialog(context, listItem);
      },
    ),
  );
  //Scaffold.of(context).sho
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showAlertDialog(BuildContext context, String listItem) {
  var alertDialog = AlertDialog(
    title: Text("$listItem Operation Status."),
    content: const Text("Successfully Done."),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
