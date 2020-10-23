public with sharing class redirect {
public redirect(Apexpages.StandardController Controller){}

public Pagereference pageAccount(){
 return new pageReference('/001');

}
}