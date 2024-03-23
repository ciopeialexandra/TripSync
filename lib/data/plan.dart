
class Plan {
  String budget;
  String date;
  String friend;
  bool isSkiing;
  bool isBigCity;
  bool isHistoricalHeritage;
  bool isSwimming;
  bool isShopping;
  bool isNature;
  String result;

  Plan(this.budget, this.date, this.friend,this.isSkiing,this.isBigCity,this.isHistoricalHeritage,this.isSwimming,this.isShopping,this.isNature,this.result);

  void setPlanBudget(String budget) {
    this.budget = budget;
  }
  void setPlanDate(String date) {
    this.date = date;
  }
  void setPlanFriend(String friend) {
    this.friend = friend;
  }
  void setPlanSki(bool value) {
    isSkiing = value;
  }
  void setPlanCity(bool value) {
    isBigCity = value;
  }
  void setPlanHistorical(bool value) {
    isHistoricalHeritage = value;
  }
  void setPlanSwim(bool value) {
    isSwimming = value;
  }
  void setPlanShopping(bool value) {
    isShopping = value;
  }
  void setPlanNature(bool value) {
    isNature = value;
  }
  void setPlanResult(String value) {
    result = value;
  }
  // void setPlanStartDate(DateTime value) {
  //   startDate = value;
  // }
  // void setPlanEndDate(DateTime value) {
  //   endDate = value;
  // }
  String getPlanBudget(){
    return budget;
  }
  String getPlanDate(){
    return date;
  }
  String getPlanFriend(){
    return friend;
  }
  bool getPlanSki(){
    return isSkiing;
  }
  bool getPlanCity(){
    return isBigCity;
  }
  bool getPlanHistorical(){
    return isHistoricalHeritage;
  }
  bool getPlanSwim(){
    return isSwimming;
  }
  bool getPlanShopping(){
    return isShopping;
  }
  bool getPlanNature(){
    return isNature;
  }
  String getPlanResult(){
    return result;
  }
  // DateTime getPlanStartDate(){
  //   return startDate;
  // }
  // DateTime getPlanEndDate(){
  //   return endDate;
  // }
}