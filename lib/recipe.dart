class Recipe {
  String name;
  String assetPath;
  String time;

  Recipe(this.name, this.time, this.assetPath);
}

class FavoritRecipes {
  List<Recipe> favoritRecipes = [
    Recipe('bruschetta', '25 min', 'assets/bruschetta.png'),
    Recipe('chiabatta', '2 h 30 min', 'assets/chiabatta.png'),
    Recipe('churros', '40 min', 'assets/churros.png'),
    Recipe('karpachcho', '4 days', 'assets/karpachcho.png'),
    Recipe('lazanya_classic', '40 min', 'assets/lazanya_classic.png'),
    Recipe('musaka_classic', '2 h 00 min', 'assets/musaka_classic.png'),
    Recipe('musaka', '2 h 00 min', 'assets/musaka.png'),
    Recipe('paelya', '1 h 00 min', 'assets/paelya.png'),
    Recipe('pasta_fetuchini', '40 min', 'assets/pasta_fetuchini.png'),
    Recipe('pasta_karbonara', '35 min', 'assets/pasta_karbonara.png'),
    Recipe('pizza_pepperoni', '1 h 30 min', 'assets/pizza_pepperoni.png'),
    Recipe('pizza', '2 h 00 min', 'assets/pizza.png'),
    Recipe('rizotto', '30 min', 'assets/rizotto.png'),
    Recipe('salat', '15 min', 'assets/salat.png'),
    Recipe('tiramisu', '3 h 20 min', 'assets/tiramisu.png')
  ];
}
