import 'package:flutter/material.dart';
import 'package:shop_product_price/pages/product_detail_container.dart';
import 'package:shop_product_price/utils/CommunWidgets/app_text.dart';
import 'package:shop_product_price/utils/Dimantions/dimation.dart';
import 'package:shop_product_price/utils/communWidgets/add_input_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // texteditingcontrolers
  late TextEditingController searchTextEditingControler;
  late TextEditingController productNameTextEditingControler;
  late TextEditingController productPrizeTextEditingControler;
  late TextEditingController productKeyWordsTextEditingControler;

  @override
  void initState() {
    super.initState();
    searchTextEditingControler = TextEditingController(text: "");
    productNameTextEditingControler = TextEditingController(text: "");
    productPrizeTextEditingControler = TextEditingController(text: "");
    productKeyWordsTextEditingControler = TextEditingController(text: "");
  }

  @override
  void dispose() {
    super.dispose();
    searchTextEditingControler.dispose();
    productNameTextEditingControler.dispose();
    productPrizeTextEditingControler.dispose();
    productKeyWordsTextEditingControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchTextEditingControler,
          style: TextStyle(fontSize: Dimantions.fontSizeOf(19)),
          decoration: InputDecoration(
              hintText: "Search",
              contentPadding: EdgeInsets.zero,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimantions.widthOf(20))))),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(
            Dimantions.widthOf(10),
            Dimantions.heightOf(0),
            Dimantions.widthOf(10),
            Dimantions.heightOf(0)),
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              margin: EdgeInsets.fromLTRB(Dimantions.widthOf(2),
                  Dimantions.heightOf(8), Dimantions.widthOf(2), 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: " Dal ",
                    fontSize: 25,
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: (() async {
                      await _showAddProductDialog(context);
                    }),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < 5; i++) const ProductContainere(),
          ]

              // a.map((e) => SizedBox()).toList()

              );
        },
        scrollDirection: Axis.vertical,
        itemCount: 4,
      ),
    );
  }

  Future<void> _showAddProductDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Card(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimantions.widthOf(9),
                vertical: Dimantions.heightOf(10)),
            child: Column(
              children: [
                // product name
                AddInputBox(
                    hintText: "Product Name",
                    textEditingController: productNameTextEditingControler),
                // product prize
                AddInputBox(
                  hintText: "Product Prize",
                  textEditingController: productPrizeTextEditingControler,
                  textInputType: TextInputType.number,
                ),
                // product keywords
                AddInputBox(
                  hintText: "KeyWords for Search",
                  textEditingController: productKeyWordsTextEditingControler,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const AppText(
                          text: "Cancel",
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: const AppText(
                          text: "Submit",
                        )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
