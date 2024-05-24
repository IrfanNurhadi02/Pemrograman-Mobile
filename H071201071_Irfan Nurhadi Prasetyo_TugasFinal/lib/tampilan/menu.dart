import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myproject/data/data.dart';
import 'package:myproject/tampilan/login.dart';
import 'package:myproject/tampilan/shoe_card.dart';
import 'package:myproject/tampilan/details_product.dart';
import 'package:myproject/data/data2.dart';
import 'package:myproject/data/data3.dart';
import 'package:myproject/tampilan/details_product2.dart';
import 'package:myproject/tampilan/shoe_card2.dart';
import 'package:myproject/tampilan/shoe_card3.dart';
import 'package:myproject/data/data4.dart';
import 'package:myproject/tampilan/details_product4.dart';
import 'package:myproject/tampilan/details_product3.dart';
import 'package:myproject/tampilan/shoe_card4.dart';
import 'package:myproject/tampilan/signup.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // List<String> items = [
  //   "All",
  //   "Adidas",
  //   "Nike",
  //   "Puma",
  // ];
  // int current = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                padding: const EdgeInsets.only(top: 8),
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SvgPicture.asset("assets/icons/sneakers (1).svg"),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.black),
                padding: const EdgeInsets.only(top: 8),
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xff808080),
              labelPadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle:
                  TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Adidas",
                ),
                Tab(
                  text: "Nike",
                ),
                Tab(
                  text: "Puma",
                ),
                // Tab(
                //   text: "All",
                // ),
              ],
            ),
          ),
          backgroundColor: const Color(0xfffafafa),
          drawer: Container(
            width: 250,
            child: Drawer(
              elevation: 12,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-0.8, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.8, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.8, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Log Out",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: _shoeListView(),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: _shoeListView2(),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: _shoeListView3(),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: _shoeListView4(),
              )
              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child: _shoeListView(),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(15),
              //   child:

              // ),
            ],

            // children: [
            //   _shoeListView(),
            //   const Padding(padding: EdgeInsets.all(20))
            // ],
          ),

          // body: TabBarView(
          //   children: [

          //   ],
          // ),
        ),
      ),
    );
  }
}

Widget _shoeListView() {
  return ListView.builder(
    itemCount: shoesData.length,
    // physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsProduct(shoeData: shoesData[index]),
                  ),
                );
              },
              child: ShoeCard(shoe: shoesData[index])),
          const SizedBox(
            height: 15,
          )
        ],
      );
    },
  );
}

Widget _shoeListView2() {
  return ListView.builder(
    itemCount: shoesData2.length,
    // physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsProduct2(shoeData2: shoesData2[index]),
                  ),
                );
              },
              child: ShoeCard2(shoe2: shoesData2[index])),
          const SizedBox(
            height: 15,
          )
        ],
      );
    },
  );
}

Widget _shoeListView3() {
  return ListView.builder(
    itemCount: shoesData3.length,
    // physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsProduct3(shoeData3: shoesData3[index]),
                  ),
                );
              },
              child: ShoeCard3(shoe3: shoesData3[index])),
          const SizedBox(
            height: 15,
          )
        ],
      );
    },
  );
}

Widget _shoeListView4() {
  return ListView.builder(
    itemCount: shoesData4.length,
    // physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsProduct4(shoeData4: shoesData4[index]),
                  ),
                );
              },
              child: ShoeCard4(shoe4: shoesData4[index])),
          const SizedBox(
            height: 15,
          )
        ],
      );
    },
  );
}
