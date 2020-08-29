import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:water_shop/bottom_icon_icons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => Home(),
    // When navigating to the "second" route, build the SecondScreen widget.
    '/checkout': (context) => CheckOut(),
    // When navigating to the "second" route, build the SecondScreen widget
  },
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _textFieldController = TextEditingController();
  int selectedIndex = 0;
  @override
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: FlatButton( onPressed:(){ Navigator.pushReplacementNamed(context, '/checkout');},child: Image.asset('Assets/cart.png', scale: 20,))
              ),
    ]),
        body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 120, 0, 0),
            child: Text('Water Shop', style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.grey[200]
            ),
            margin: EdgeInsets.fromLTRB(30, 180, 25, 0),
      //Add padding around textfield
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
      //add icon outside input field
      //add icon to the beginning of text field
                prefixIcon: Icon(Icons.search, color: Colors.black ,),
      //can also add icon to the end of the textfiled
      //suffixIcon: Icon(Icons.remove_red_eye),
      ),
      ),
      ),
          Container(
              margin: EdgeInsets.fromLTRB(35, 260, 25, 0),
              child: Image.asset('Assets/Screenshot 2020-08-12 at 6.34.52 PM.png', )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(35, 570, 0, 0),
            child: Row(
              children: [
                Text(
                  'Catalog', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[900]),
                ),
                SizedBox(
                  width: 196,
                ),
                FlatButton(
                  onPressed: () {

                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.grey[700],
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 630, 0, 120),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            child: Stack(children: [
                              Image.asset('Assets/bottles.png', ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(30, 0, 0, 40),
                                  child: Text(
                                    'Bottles', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  margin: EdgeInsets.fromLTRB(17, 40, 0, 0),
                                  child: FlatButton(onPressed: null, child: Text('show all',style: TextStyle(color: Colors.black),))
                                ),
                              )

                            ],
                            )
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Stack(children: [
                            Image.asset('Assets/coolers.png', ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(25, 0, 0, 40),
                                child: Text(
                                  'Coolers', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  margin: EdgeInsets.fromLTRB(17, 40, 0, 0),
                                  child: FlatButton(onPressed: null, child: Text('show all',style: TextStyle(color: Colors.black),))
                              ),
                            )

                          ],
                          )
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Stack(children: [
                            Image.asset('Assets/water.png', ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.fromLTRB(35, 0, 0, 40),
                                child: Text(
                                  'Water', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  margin: EdgeInsets.fromLTRB(17, 40, 0, 0),
                                  child: FlatButton(onPressed: null, child: Text('show all',style: TextStyle(color: Colors.black),))
                              ),
                            ),
                          ],
                          )
                        ),
                      ]
                  ),
                ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              type:  BottomNavigationBarType.fixed ,
                backgroundColor: Colors.white.withOpacity(1),
                fixedColor: Colors.black,
                unselectedItemColor: Colors.grey,
                elevation: 0.0,
                currentIndex: selectedIndex,
                onTap: onItemTapped,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    icon: new Icon(BottomIcon.equal, size: 30,),
                    title: new Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(BottomIcon.menu,),
                    title: new Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    icon: new Icon(BottomIcon.heart_empty),
                      title: new Text('Favorites'),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(BottomIcon.user),
                      title: Text('Profile')
                  ),
                ],
              ),
          ),

//




//          Container(
//            margin: EdgeInsets.fromLTRB(30, 820, 30, 0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: const <Widget>[
//                Icon(
//                  Icons.shuffle,
//                  color: Colors.grey,
//                  size: 30.0,
//                  semanticLabel: 'Text to announce in accessibility modes',
//                ),
//                Icon(
//                  Icons.shuffle,
//                  color: Colors.grey,
//                  size: 30.0,
//                  semanticLabel: 'Text to announce in accessibility modes',
//                ),
//                Icon(
//                  Icons.repeat,
//                  color: Colors.grey,
//                  size: 30.0,
//                ),
//                Icon(
//                  Icons.playlist_play,
//                  color: Colors.grey,
//                  size: 30.0,
//                ),
//              ],
//            ),
//          ),
        ],
    ),
    );

  }
}

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int numOfItems = 1;
  int numOfItems1 = 1;
  int numOfItems2 = 1;
  int totalItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, color: Colors.black,
          ),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
          title: Text('Basket', style: TextStyle(color: Colors.black),),
          actions: [
            Container(
                margin: EdgeInsets.fromLTRB(25, 0, 0, 10),
                child: FlatButton( onPressed:(){},child: Image.asset('Assets/cart.png', scale: 20,))
            ),
          ]
      ),
        body: Stack(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 170,
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: new Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                width: 130,
                                margin: EdgeInsets.fromLTRB(0, 15, 200, 0),
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.dstATop),
                                    image:  AssetImage(
                                      'Assets/bottle2.png', ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 30, 0, 0),
                              child: Text('Masafi Water', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 60, 0, 0),
                              child: Text('Bottle 18,9 L', style: TextStyle(
                                color: Colors.grey, fontSize: 15,
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 95, 0, 0),
                              child: Text('\$7', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Montserrat'
                              ),),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.grey[200]
                                      )
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      if (numOfItems > 1){
                                        setState(() {
                                          numOfItems--;
                                        });
                                      }
                                    },
                                    color: Colors.white,
                                    textColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(240, 95, 0, 0),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(8, 98, 0, 0),
                                    child: Text(numOfItems.toString(), style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'
                                    ),)),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      setState(() {
                                        numOfItems++;
                                      });
                                    },
                                    color: Color(0xFF1DCBE2),
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(8, 95, 0, 0),
                                ),

                              ],
                            )
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 170,
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: new Stack(
                          overflow: Overflow.clip,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                width: 130,
                                margin: EdgeInsets.fromLTRB(0, 0, 200, 0),
                                decoration: new BoxDecoration(

                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.dstATop),
                                    image:  AssetImage(
                                      'Assets/water-dispenser.png',),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 30, 0, 0),
                              child: Text('Cooler Frost', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 60, 0, 0),
                              child: Text('Floor', style: TextStyle(
                                color: Colors.grey, fontSize: 15,
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 95, 0, 0),
                              child: Text('\$50', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Montserrat'
                              ),),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.grey[200]
                                      )
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      if (numOfItems1 > 1){
                                        setState(() {
                                          numOfItems1--;
                                        });
                                      }
                                    },
                                    color: Colors.white,
                                    textColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(240, 95, 0, 0),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(8, 98, 0, 0),
                                    child: Text(numOfItems1.toString(), style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'
                                    ),)),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      setState(() {
                                       numOfItems1++;
                                      });
                                    },
                                    color: Color(0xFF1DCBE2),
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(8, 95, 0, 0),
                                ),

                              ],
                            )
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 170,
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Card(
                        elevation: 1.5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: new Stack(
                          overflow: Overflow.clip,
                          children: [
                            ClipRRect(
                              clipBehavior: Clip.hardEdge,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                width: 130,
                                margin: EdgeInsets.fromLTRB(0, 15, 200, 0),
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.dstATop),
                                    image:  AssetImage(
                                      'Assets/water-bottle.png', ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 30, 0, 0),
                              child: Text('Summer Time', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 60, 0, 0),
                              child: Text('Bottle 2 L', style: TextStyle(
                                color: Colors.grey, fontSize: 15,
                              ),),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(155, 95, 0, 0),
                              child: Text('\$1', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Montserrat'
                              ),),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.grey[200]
                                      )
                                  ),
                                  width: 30,
                                  height: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      if (numOfItems2 > 1){
                                        setState(() {
                                          numOfItems2--;
                                        });
                                      }
                                    },
                                    color: Colors.white,
                                    textColor: Colors.black,
                                    child: Icon(
                                      Icons.remove,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(240, 95, 0, 0),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(8, 98, 0, 0),
                                    child: Text(numOfItems2.toString().padLeft(0,).padRight(0, ), style: TextStyle(
                                        fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Montserrat'
                                    ),)),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: MaterialButton(
                                    elevation: 0.0,
                                    onPressed: () {
                                      setState(() {
                                        numOfItems2++;
                                      });
                                    },
                                    color: Color(0xFF1DCBE2),
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                    padding: EdgeInsets.all(0),
                                    shape: CircleBorder(),
                                  ),
                                  margin: EdgeInsets.fromLTRB(8, 95, 0, 0),
                                ),

                              ],
                            )
                          ],
                        )
                    ),
                  ),

                ],
              ),
            ),

//    Container(
//       margin: EdgeInsets.fromLTRB(0, 800, 0, 0),
//       decoration: BoxDecoration(
//    borderRadius: BorderRadius.only(
//    topRight: Radius.circular(40),
//    topLeft: Radius.circular(40),
//    ),
//       ),
//       child: Footer(
//
//         backgroundColor: Colors.grey,
//    child: Padding(
//    padding: new EdgeInsets.all(20.0),
//    child: Row(
//
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      children: [
//        Container(
//            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           child: FlatButton( onPressed:(){},child: Image.asset('Assets/equal.png', scale: 20,))
//        ),
//        Container(
//           child: FlatButton( onPressed:(){},child: Image.asset('Assets/menu.png', scale: 20,))
//        ),
//        Container(
//
//           child: FlatButton( onPressed:(){},child: Image.asset('Assets/like.png', scale: 20,))
//        ),
//        Container(
//
//           child: FlatButton( onPressed:(){},child: Image.asset('Assets/user.png', scale: 20,))
//        ),
//      ],
//    )
//    ),
//    ),
//     ),
          Stack(
            children: [
              SlidingUpPanel(
//                collapsed: _floatingCollapsed(),
                minHeight: 120,
                panel:  Stack(
                  children: [
                    Row(
                      children: [
                        Container
                          (
                            margin: EdgeInsets.fromLTRB(30, 40, 0, 0),
                            child:  Text('\$58', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white, fontFamily: 'Montserrat'
                            ),)
                        ),
                        Container
                          (
                            height: 55,
                            decoration: BoxDecoration(
                              color: Color(0xFF1DCBE2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            margin: EdgeInsets.fromLTRB(140, 35, 0, 0),
                            child: FlatButton(onPressed: null, child: Text('Pay', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white
                            ),))
                        ),

                      ],
                    ),

                  ],
                ),
                boxShadow: [
                  BoxShadow(
                  blurRadius: 0,
                  color: Colors.white
                )],
                borderRadius: BorderRadius.circular(30), color: Color.fromRGBO(255, 166, 201, 10), maxHeight: 120,
              ),
            ],
          )
  ],
),
//      Center(child: Icon(CardIcons.plastic_bottle,))




    );
  }
}


