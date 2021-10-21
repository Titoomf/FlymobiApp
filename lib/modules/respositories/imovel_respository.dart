import 'package:dio/dio.dart';
import 'package:flymobi/modules/model/errors/erros.dart';
import 'package:flymobi/modules/model/imovel.dart';

class ImovelRepository {
  // instancia o package que vai ter acesso a net que serio o DIO
  Dio dio;
  final url = '';
  List<ImovelModel> imoveisLista = <ImovelModel>[];

  static final instance = ImovelRepository(
    Dio(),
  );

  ImovelRepository(this.dio);

  Future<void> getImoveis() async {
    List<ImovelModel> imoveis = [];
    try {
      // var response = await dio.get(url);
      // final data = response.data;
      // usando api interna

      final data = [
        {
          'tipoImovel': 'apartamento',
          'categoria': 'venda',
          'codigo': 'apt58458',
          'valor': 500000,
          'metros': 252,
          'quartos': 4,
          'garagem': 4,
          'banheiro': 3,
          'cidade': 'Florianopolis',
          'bairro': 'Centro',
          'corretor': 'Turra',
        },
        {
          'tipoImovel': 'apartamento',
          'categoria': 'alugo',
          'codigo': 'apt21487',
          'valor': 7000000,
          'metros': 300,
          'quartos': 3,
          'garagem': 5,
          'cidade': 'itajai',
          'bairro': 'Centro',
          'corretor': 'atrito',
        },
        {
          'tipoImovel': 'apartamento',
          'categoria': 'venda',
          'codigo': 'apt58745',
          'valor': 10000000,
          'metros': 500,
          'quartos': 4,
          'garagem': 3,
          'cidade': 'florianopolis',
          'bairro': 'Canas Vieira',
          'corretor': 'pereira junior',
        }
      ];

      imoveis = (data)
          .map(
            (item) => ImovelModel.fromMap(item),
          )
          .toList();
    } catch (e) {
      throw (ErrorExemple(e.toString()));
    }
    // vou esperar ter um dalay de 1 seconds para ter as lista de imovis
    // await Future.delayed(
    //   const Duration(
    //     seconds: 1,
    //   ),
    // );

    // retorno minha variavel
    imoveisLista = imoveis;
  }
}
