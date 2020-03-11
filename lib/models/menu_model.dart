class Menus {
  final String title;
  final int id;
  final String imgPath;

  Menus({this.title, this.id, this.imgPath = ''});

  static List<Menus> menuList = [
    Menus(title: 'Dashboard', id: 1),
    Menus(title: 'Schedule', id: 2),
    Menus(title: 'Sports', id: 3),
    Menus(title: 'Arena', id: 4),
    Menus(title: 'My Points', id: 5)
  ];
}
