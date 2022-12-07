import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

class AwesomeDialog {
  static show(
    String title,
    String message,
  ) async {
    await showDialog<void>(
      context: globalContext,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  static showSnackbar(String message) async {
    var snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
  }

  static showBottomSheet(String message) async {
    await showModalBottomSheet<void>(
      context: globalContext,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(message),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
