import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  final String id;
  final String name;
  final String price;
  final String image;
  final Function deleteBook;

  Books(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.deleteBook});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundColor: Colors.amber,
            backgroundImage: NetworkImage(image),
          ),
          title: Text(
            name,
            style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            price,
            style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          ),
          trailing: IconButton(
            onPressed: () {
              deleteBook(id);
            },
            icon:const Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
