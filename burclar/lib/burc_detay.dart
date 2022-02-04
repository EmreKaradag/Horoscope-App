import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  
  Color appbarRengi=Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbarRenginiBul();
  }

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           
            
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi+" Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset("images/"+widget.secilenBurc.burcBuyukResim,fit: BoxFit.cover,),),

          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(widget.secilenBurc.burcDetay,style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          )
        ],
      )
    );
  
 
  
}

  void appbarRenginiBul() async{
    _generator=await PaletteGenerator.fromImageProvider(AssetImage("images/${widget.secilenBurc.burcBuyukResim}"));
    appbarRengi=_generator.dominantColor!.color;
    setState(() {
      
    });
  }
}



