class MenuItemModel {
  final String title;
  final String iconPath; // Path to your asset
  
  MenuItemModel({
    required this.title, 
    required this.iconPath,
  });
}



final List<MenuItemModel> menuItems = [
    MenuItemModel(title: "Analysis Pro", iconPath: "assets/images/chart.png"), // Replace with local assets
    MenuItemModel(title: "G. Generator", iconPath: "assets/images/generator.png"),
    MenuItemModel(title: "Plant Summery", iconPath: "assets/images/charge.png"),
    MenuItemModel(title: "Natural Gas", iconPath: "assets/images/fire.png"),
    MenuItemModel(title: "D. Generator", iconPath: "assets/images/generator.png"),
    MenuItemModel(title: "Water Process", iconPath: "assets/images/faucet.png"),
  ];