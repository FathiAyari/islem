import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testWidget extends StatefulWidget {
  const testWidget({Key? key}) : super(key: key);

  @override
  _testWidgetState createState() => _testWidgetState();
}

class _testWidgetState extends State<testWidget> {
  List<Widget> pages = [
    Text("test"),
    Text("123"),
    Text("test"),
    Text("test"),
    Text("test")
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.red,
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              TextButton(onPressed: () {}, child: Text("Click")),
              Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*children: pages.map((e) {
            return e;
          }).toList(),*/
/* return Container(
      width: double.infinity,
      child: Container(
        color: Colors.red,
        child: ListView.builder(
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                child: ListTile(
                  leading: Icon(Icons.add),
                  trailing: IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                  "You want to delete this item for sure ?"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        pages.removeAt(index);
                                      });
                                      Navigator.pop(context);
                                      print(pages.length);
                                    },
                                    child: Text("Yes i want !")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("No , i don't "))
                              ],
                            );
                          });
                    },
                    icon: Icon(Icons.delete),
                  ),
                  title: Text("this is the item number : ${index}"),
                ),
              ),
            );
          },
        ),
      ),
    );*/
/*   child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),*/
