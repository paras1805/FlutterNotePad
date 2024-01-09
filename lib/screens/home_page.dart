import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        color: Colors.lightGreen,
        //margin: const EdgeInsets.only(left: 50.0, top: 50.0),
        child: Column(
          children: [
            const Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "InterCity Bus",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                )),
                Expanded(
                    child: Text(
                  "From Delhi to Nainital.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                )),
              ],
            ),
            const Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  "Tour City Bus",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                )),
                Expanded(
                    child: Text(
                  "From Delhi - Nainital - Shimla.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                )),
              ],
            ),
            BusImageAsset(),
            Image.asset('images/bus.png'),
            MyButton()
          ],
        ),
      ),
    );
  }
}

// Custom Widget
class BusImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/bus.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
        child: const Text(
          "Book Your Trip",
          style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 18.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
