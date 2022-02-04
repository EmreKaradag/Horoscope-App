import 'package:burclar/burc_item.dart';
import 'package:flutter/material.dart';
import 'package:burclar/model/burc.dart';

import 'data/strings.dart';


class BurcListesi extends StatelessWidget {
  
  late List<Burc> tumBurclar;
  BurcListesi(){
   tumBurclar=veriKaynaginiHazirla();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: Text('Burçlar Listesi')
      ),
      body: ListView.builder(itemCount: tumBurclar.length,itemBuilder: (context,index){
        return BurcItem(ListelenenBurc: tumBurclar[index]);
      })
      );
      
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> temp=[];
    for(int i=0;i<12;i++){
    var burcAdi=Strings.BURC_ADLARI[i];
    var burcTarih=Strings.BURC_TARIHLERI[i];
    var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
    //koc1.png değerini oluşturmak için
    var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+'${i+1}.png';
    var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+'_buyuk${i+1}.png';
    Burc eklenecekBurc=Burc(burcAdi,burcTarih,burcDetay,burcKucukResim,burcBuyukResim);
    temp.add(eklenecekBurc);
    }
    return temp;
  }
}