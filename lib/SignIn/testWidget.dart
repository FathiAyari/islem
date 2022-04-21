import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class testWidget extends StatelessWidget {
  const testWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home"),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Row(
                          children: [
                            Text("Type smthng"),
                            Transform.translate(
                              offset: Offset(80, -20),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close)),
                            )
                          ],
                        ),
                        content: Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    label: Text("type smtng")),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          primary: Colors.red),
                                      onPressed: () {
                                        Fluttertoast.showToast(
                                            msg: "This Fathi here :) ",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.grey,
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                      },
                                      child: Text("Cancel")),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.snackbar(
                                        "Pfe Islem",
                                        "Snack Bar flutter",
                                        icon: Icon(Icons.person,
                                            color: Colors.white),
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    },
                                    child: Text("Confirm"),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        primary: Colors.green),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Text("Show alert"))
        ],
      ),
    );
  }
}
