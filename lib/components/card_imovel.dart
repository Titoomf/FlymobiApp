import 'package:flutter/material.dart';

import 'package:flymobi/modules/model/imovel.dart';

class CardImovel extends StatelessWidget {
  final ImovelModel imovel;
  const CardImovel({
    Key? key,
    required this.imovel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              bottom: 16,
              left: 16,
              top: 10,
            ),
            child: Stack(
              children: [
                ClipRRect(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 350,
                          height: 210,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.network(
                                'https://exame.com/wp-content/uploads/2020/09/Apartamento-compacto-incorporadora-You-Inc-mercado-imobiliario.jpg',
                              ),
                              Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withAlpha(0),
                                      Colors.black12,
                                      Colors.black26,
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                width: 150,
                                left: 0,
                                bottom: 160,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black54,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        imovel.tipoImovel,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'RobotoSlab',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 170,
                                right: 10,
                                height: 30,
                                width: 103,
                                child: Container(
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black54,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      imovel.codigo,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'RobotoSlab',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                height: 20,
                                left: 10,
                                bottom: 80,
                                child: Text(
                                  'R\$ ${imovel.valor.toStringAsFixed(2)}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'RobotoSlab',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Positioned(
                                height: 20,
                                right: 285,
                                bottom: 50,
                                width: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.pinkAccent,
                                  ),
                                  child: Text(
                                    imovel.categoria,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'RobotoSlab',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 15,
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.grid_goldenratio_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      '250 m² |',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.car_repair,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      ' 4 |',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.shower,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      '10 |',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.single_bed_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      ' 4 ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 320,
                          child: Text(
                            'Cidade : ${imovel.cidade}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RobotoSlab',
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            width: 320,
                            child: Text(
                              'Bairro: ${imovel.bairro}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoSlab',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: SizedBox(
                                    width: 320,
                                    height: 30,
                                    child: Text(
                                      'corretor : ${imovel.corretor}',
                                      style: const TextStyle(
                                        fontFamily: 'RobotoSlab',
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
