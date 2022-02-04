import 'package:burclar/burc_detay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      margin: EdgeInsets.fromLTRB(8.0, 4, 8.0, 4),
      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset("images/"+ListelenenBurc.burcKucukResim),
          title: Text(ListelenenBurc.burcAdi,style: myTextStyle.headline5),
          subtitle: Text(ListelenenBurc.burcTarihi,style: myTextStyle.subtitle1,),
          trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.pink,),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: ListelenenBurc)));
          },
        ),
      ),
    
    );
  }
}