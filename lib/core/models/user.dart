class User {
  int id;
  String emailVerifiedAt;
  int active;
  String email;
  int phone;
  String apiToken;
  String firstName;
  String lastName;
  String empCode;
  String gender;
  String dob;
  String age;
  String maritalStatus;
  String skypeId;
  String email2;
  String phone2;
  String landline;
  String middleName;
  String remarks;
  String attachment;
  int lockStatus;
  String createdAt;
  String updatedAt;
  String phoneCode;
  String phone2Code;
  String cvPath;
  String landlineCode;
  String prefix;
  List<Roles> roles;
  List<Companies> companies;

  User(
      {this.id,
      this.emailVerifiedAt,
      this.active,
      this.email,
      this.phone,
      this.apiToken,
      this.firstName,
      this.lastName,
      this.empCode,
      this.gender,
      this.dob,
      this.age,
      this.maritalStatus,
      this.skypeId,
      this.email2,
      this.phone2,
      this.landline,
      this.middleName,
      this.remarks,
      this.attachment,
      this.lockStatus,
      this.createdAt,
      this.updatedAt,
      this.phoneCode,
      this.phone2Code,
      this.cvPath,
      this.landlineCode,
      this.prefix,
      this.roles,
      this.companies});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    emailVerifiedAt = json['email_verified_at'];
    active = json['active'];
    email = json['email'];
    phone = json['phone'];
    apiToken = json['api_token'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    empCode = json['emp_code'];
    gender = json['gender'];
    dob = json['dob'];
    age = json['age'];
    maritalStatus = json['marital_status'];
    skypeId = json['skype_id'];
    email2 = json['email_2'];
    phone2 = json['phone_2'];
    landline = json['landline'];
    middleName = json['middle_name'];
    remarks = json['remarks'];
    attachment = json['attachment'];
    lockStatus = json['lock_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    phoneCode = json['phone_code'];
    phone2Code = json['phone_2_code'];
    cvPath = json['cv_path'];
    landlineCode = json['landline_code'];
    prefix = json['prefix'];
    if (json['roles'] != null) {
      roles = new List<Roles>();
      json['roles'].forEach((v) {
        roles.add(new Roles.fromJson(v));
      });
    }
    if (json['companies'] != null) {
      companies = new List<Companies>();
      json['companies'].forEach((v) {
        companies.add(new Companies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['active'] = this.active;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['api_token'] = this.apiToken;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['emp_code'] = this.empCode;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['age'] = this.age;
    data['marital_status'] = this.maritalStatus;
    data['skype_id'] = this.skypeId;
    data['email_2'] = this.email2;
    data['phone_2'] = this.phone2;
    data['landline'] = this.landline;
    data['middle_name'] = this.middleName;
    data['remarks'] = this.remarks;
    data['attachment'] = this.attachment;
    data['lock_status'] = this.lockStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['phone_code'] = this.phoneCode;
    data['phone_2_code'] = this.phone2Code;
    data['cv_path'] = this.cvPath;
    data['landline_code'] = this.landlineCode;
    data['prefix'] = this.prefix;
    if (this.roles != null) {
      data['roles'] = this.roles.map((v) => v.toJson()).toList();
    }
    if (this.companies != null) {
      data['companies'] = this.companies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Roles {
  int id;
  String name;
  String createdAt;
  String updatedAt;
  List<Permissions> permissions;

  Roles({this.id, this.name, this.createdAt, this.updatedAt, this.permissions});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['permissions'] != null) {
      permissions = new List<Permissions>();
      json['permissions'].forEach((v) {
        permissions.add(new Permissions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.permissions != null) {
      data['permissions'] = this.permissions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Permissions {
  int id;
  String name;
  String createdAt;
  String updatedAt;

  Permissions({this.id, this.name, this.createdAt, this.updatedAt});

  Permissions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Companies {
  int id;
  String name;
  String email;
  int phone;
  String address;
  String logoPath;
  String contactPerson;
  String createdAt;
  String updatedAt;
  String timeZone;

  Companies(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.logoPath,
      this.contactPerson,
      this.createdAt,
      this.updatedAt,
      this.timeZone});

  Companies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    logoPath = json['logo_path'];
    contactPerson = json['contact_person'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    timeZone = json['time_zone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['logo_path'] = this.logoPath;
    data['contact_person'] = this.contactPerson;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['time_zone'] = this.timeZone;
    return data;
  }
}
