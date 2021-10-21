import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flymobi/components/card_imovel.dart';
import 'package:flymobi/modules/respositories/imovel_respository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currencyIndex = 0;

  @override
  void initState() {
    ImovelRepository.instance.getImoveis();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(65, 105, 225, 1),
        title: const Text('Imóveis'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          final imovel = ImovelRepository.instance.imoveisLista[index];
          return CardImovel(
            imovel: imovel,
          );
        },
        separatorBuilder: (_, index) {
          return const Divider(
            color: Colors.black54,
            height: 5,
            indent: 10,
            endIndent: 10,
            thickness: 1,
          );
        },
        itemCount: ImovelRepository.instance.imoveisLista.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        currentIndex: _currencyIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(65, 105, 225, 1),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontFamily: 'RobotoSlab',
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Imovéis',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_sharp,
              color: Colors.white,
            ),
            label: 'Atendimentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
            ),
            label: 'Pessoas',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Configuração',
          ),
        ],
        onTap: (index) {
          _currencyIndex = index;
          if (index == 0) {
            // instancia o repositorio para pegar a função getImoveis

            ImovelRepository.instance.getImoveis();
          }
          setState(() {});
        },
      ),
    );
  }
}
