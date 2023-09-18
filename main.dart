import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
     body:Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemCount: 4,
                itemBuilder: (ctx, i) {
                  return Card(
                    child: Container(
                      height: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  'https://static.pexels.com/photos/9611/flowers.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'beautiful',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                                  Text(
                                    'nice',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        
                      ),
                    )
                  ;
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 264,
                ),
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
