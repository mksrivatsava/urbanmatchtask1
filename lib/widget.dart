import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api_trigger.dart';

import 'model.dart';

class CharacterList extends StatefulWidget {
  CharacterList({Key key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  List<Repos> gitList = new List<Repos>();

  void getReposfromApi() async {
    ApiTrigger.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        gitList = list.map((model) => Repos.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getReposfromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor:  Color(0xFF151026),
          title: Text("Github Repos List"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: gitList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(gitList[index].full_name),
                  // subtitle: Text(characterList[index].id),
                  // leading: CircleAvatar(
                  //   backgroundImage: NetworkImage(characterList[index].img),
                  // ),
                );
              }),
        ));
  }
}
