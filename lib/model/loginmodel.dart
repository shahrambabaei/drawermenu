class LoginModel {
  Result result;
  bool isSuccess;
  int statusCode;
  List<String> messages;

  LoginModel({this.result, this.isSuccess, this.statusCode, this.messages});

  LoginModel.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    isSuccess = json['isSuccess'];
    statusCode = json['statusCode'];
    messages = json['messages'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    data['isSuccess'] = this.isSuccess;
    data['statusCode'] = this.statusCode;
    data['messages'] = this.messages;
    return data;
  }
}

class Result {
  int id;
  String userName;
  String password;
  String email;
  String firstName;
  String lastName;
  String fullName;
  String selfPhone1;
  String selfPhone2;
  String tokenAccess;
  List<Pages> pages;
  int roleId;
  String roleName;

  Result(
      {this.id,
      this.userName,
      this.password,
      this.email,
      this.firstName,
      this.lastName,
      this.fullName,
      this.selfPhone1,
      this.selfPhone2,
      this.tokenAccess,
      this.pages,
      this.roleId,
      this.roleName});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    password = json['password'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    selfPhone1 = json['selfPhone1'];
    selfPhone2 = json['selfPhone2'];
    tokenAccess = json['tokenAccess'];
    if (json['pages'] != null) {
      pages = <Pages>[];
      json['pages'].forEach((v) {
        pages.add(new Pages.fromJson(v));
      });
    }
    roleId = json['roleId'];
    roleName = json['roleName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['email'] = this.email;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['fullName'] = this.fullName;
    data['selfPhone1'] = this.selfPhone1;
    data['selfPhone2'] = this.selfPhone2;
    data['tokenAccess'] = this.tokenAccess;
    if (this.pages != null) {
      data['pages'] = this.pages.map((v) => v.toJson()).toList();
    }
    data['roleId'] = this.roleId;
    data['roleName'] = this.roleName;
    return data;
  }
}

class Pages {
  int pageId;
  String name;
  String address;
  String description;
  int pageOrder;
  int pageCategoryOrder;
  String pageCategoryName;

  Pages(
      {this.pageId,
      this.name,
      this.address,
      this.description,
      this.pageOrder,
      this.pageCategoryOrder,
      this.pageCategoryName});

  Pages.fromJson(Map<String, dynamic> json) {
    pageId = json['pageId'];
    name = json['name'];
    address = json['address'];
    description = json['description'];
    pageOrder = json['pageOrder'];
    pageCategoryOrder = json['pageCategoryOrder'];
    pageCategoryName = json['pageCategoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageId'] = this.pageId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['description'] = this.description;
    data['pageOrder'] = this.pageOrder;
    data['pageCategoryOrder'] = this.pageCategoryOrder;
    data['pageCategoryName'] = this.pageCategoryName;
    return data;
  }
}