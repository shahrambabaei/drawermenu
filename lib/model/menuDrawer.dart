class MenuDrawer{
   String nameCategory;
  List<SubMenu> subMenu;

  MenuDrawer({this.nameCategory, this.subMenu});

  MenuDrawer.fromJson(Map<String, dynamic> json) {
    nameCategory = json['nameCategory'];
    subMenu = json['subMenu'];
  }

}

class SubMenu{
   String name;
   String address;
   String description;
   String pageOrder;
   String pageCategoryOrder;
   String pageCategoryName;

 SubMenu({this.name, this.address,this.description,this.pageOrder,this.pageCategoryOrder,this.pageCategoryName});


     SubMenu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
        description = json['description'];
            pageOrder = json['pageOrder'];
                pageCategoryOrder = json['pageCategoryOrder'];
                    pageCategoryName = json['pageCategoryName'];
  
  
  }



}