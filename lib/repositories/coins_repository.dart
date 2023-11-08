import 'package:dio/dio.dart';
import '../models/coin.dart';

class CoinsRepository {
  Future<List<Coin>> getConsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,DOGE,ZEC,AWC,TRX,USDT,TWT,AVAX&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final coinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageURL = usdData['IMAGEURL'];
      return Coin(
        name: e.key, 
        price: price, 
        imageURL: 'https://www.cryptocompare.com/$imageURL');
    }).toList();

    return coinsList;
  }
}
