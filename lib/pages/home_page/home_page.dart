import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shoe_ecommerce/data/data.dart';

import '../details_page/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Colors.white : Colors.black38),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? MyColors.myOrange : Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          color: MyColors.myBlack,
                          child: Image.asset(e.image),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        e.title,
                        style: const TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('lib/assets/images/ic_menu.png'),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Image.asset('lib/assets/images/ic_search.png')],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset('lib/assets/images/img_banner.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: 'New Release',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ))),
                      const SizedBox(height: 10),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: 'Nike Air\nMax 90',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ))),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                MyColors.myBlack),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)))),
                        child: const Text('BUY NOW'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: buildCategories(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                  text: "New Men's",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 10),
          GridView.count(
            childAspectRatio: 0.9,
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5.0),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: Data.generateProducts()
                .map(
                  (e) => Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    elevation: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.leftToRight,
                                child: const DetailPage()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              e.image,
                              height: 90,
                              width: double.infinity,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: e.type,
                                  style: const TextStyle(
                                      color: MyColors.myOrange,
                                      fontSize: 16.0)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: e.title,
                                  style: const TextStyle(
                                      color: Colors.black87, fontSize: 18.0)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  text: TextSpan(
                                      text: "\$ ${e.price}",
                                      style: const TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.black87),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30)))),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked, //specify the location of the FAB
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyColors.myOrange,
          onPressed: () {
            debugPrint('Home');
          },
          tooltip: "start FAB",
          elevation: 4.0,
          child: Container(
            margin: const EdgeInsets.all(15.0),
            child: const Icon(Icons.home_outlined, color: Colors.white,),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(width: 30,),
              IconButton(icon: Image.asset("lib/assets/images/ic_shop.png"), onPressed: () {},),
              IconButton(icon: Image.asset("lib/assets/images/ic_wishlist.png"), onPressed: () {},),
              IconButton(icon: Image.asset("lib/assets/images/ic_notif.png"), onPressed: () {},),
              const SizedBox(width: 2,),
            ],
          ),
        )
    );
  }
}
