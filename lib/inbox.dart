import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
        title: Text('Inbox', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search Mail",
                  border: InputBorder.none,
                  icon: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.dehaze),
                  )
                  void main () {
                    runAPP(
                      new MaterialAPP(
                        title: "today",
                        home: 
                      )
                    )
                  }
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                5,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "inem",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "00.00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Apa benar inem tukang pijat!!!!!",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("this is gmail app using flutter !!!!!"),
          Icon(Icons.star_border)
        ],
      ),
    );
  }
}
