import 'package:fhe_template/shared/util/dialog.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  Nav.back();
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Show Dialog"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await AwesomeDialog.show(
                    "Info",
                    "Your order is complete!!",
                  );
                  // await showDialog<void>(
                  //   context: context,
                  //   barrierDismissible: true,
                  //   builder: (BuildContext context) {
                  //     return AlertDialog(
                  //       title: const Text('Info'),
                  //       content: SingleChildScrollView(
                  //         child: ListBody(
                  //           children: const <Widget>[
                  //             Text('Your order was placed!'),
                  //           ],
                  //         ),
                  //       ),
                  //       actions: <Widget>[
                  //         ElevatedButton(
                  //           style: ElevatedButton.styleFrom(
                  //             backgroundColor: Colors.blueGrey,
                  //           ),
                  //           onPressed: () {
                  //             Navigator.pop(context);
                  //           },
                  //           child: const Text("Ok"),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Show Snackbar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await AwesomeDialog.showSnackbar(
                    "Your order is complete!!",
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.view_agenda),
                label: const Text("Show Bottomsheet"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await AwesomeDialog.showBottomSheet(
                    "Your order is complete!!!",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
