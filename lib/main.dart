import 'package:flutter/material.dart';

void main() {
  // runAPP is a function in flutter that starts the app
  // runAPP takes a widget as an argument
  // any widget must have a capital letter in the beginning
  runApp(MyApp());
}

// when you write this line you will get an error so click on the light bulb and click on create 1 missing override
class MyApp extends StatelessWidget {
  // any line after this line because we clicked on create 1 missing override
  @override
  // build is a function that returns a widget
  Widget build(BuildContext context) {
    // until here
    // the MaterialApp is a widget that is used to create a material design app and always used in first page
    // MaterialApp organizes the app's design and navigation
    // MaterialApp takes something called properties
    return MaterialApp(
      // home is a property (widget) that takes a widget like text
      home: Scaffold(
        appBar: AppBar(
          title: Text('Details'),
          centerTitle: true, // centerTitle is a property that centers the title
          leading: IconButton(
            // you should write this line to add a icon and onPressed property, if you want to add an icon without onPressed property you can use the icon property in the AppBar widget
            icon: Icon(
              Icons.arrow_back,
            ), //Icons.arrow_back is a property that adds an arrow back icon
            onPressed: () {
              Navigator.pop(
                context,
              ); // navigator,pop is a function that goes back to the previous page
            },
          ),
          // actions make the icon appear on the right side of the app bar
          // Leading makes the icon appear on the left side of the app bar
          actions: [
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/Chair.webp",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  // mainAxisAlignment is a property that aligns the children of the row
                  // spaceBetween is a property that puts space between the children of the row to make first text on the left and the second text on the right
                  children: [
                    Text(
                      "Chair",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 107, 107, 107),
                      ),
                    ),
                    Text(
                      "\$212",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Minimalist chair with pillow",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ), // to make padding from the top and left and right
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ), // SizedBox is a widget that adds space between the children of the row
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    // anything before this line is for the colors of the circles
                    // now we will use container to make the rectangle that contains the text and buttons
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {},
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(icon: Icon(Icons.add), onPressed: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
