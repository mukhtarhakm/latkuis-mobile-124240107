import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';
import 'package:latkuis/views/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {

    final filteredMenus = menus.where((menu) {
      return menu.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Column(
      children: [
      Padding(padding: EdgeInsets.all(12.0),
      child: TextField(
        onChanged: (value) {
          setState(() {
            searchQuery = value;
          });
        },
        decoration: InputDecoration(
          hintText: "Cari menu...",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      ),



        Expanded(
          child: ListView.builder(
            itemCount: filteredMenus.length,
            itemBuilder: (context, index) {
              final item = filteredMenus[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(product: item),
                    ),
                  );
                },
                title: Text(item.name),
                subtitle: Text("Rp ${item.price}"),
                leading: Image.network(item.image, width: 50, height: 50),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
          ),
        ),
      ],
    );
    // return Scaffold(
    //   appBar: AppBar(title: Text("Home")),
    //   body: ListView.builder(
    //     itemCount: products.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => DetailPage(product: products[index]),
    //             ),
    //           );
    //         },
    //         title: Text(products[index].name),
    //         subtitle: Text("Rp ${products[index].price}"),
    //         leading: Image.network(
    //           products[index].image,
    //           width: 50,
    //           height: 50,
    //         ),
    //         trailing: Icon(Icons.arrow_forward_ios),
    //       );
    //     },
    //   ),
    // );
  }
}
