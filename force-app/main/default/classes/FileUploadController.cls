public with sharing class FileUploadController {

  public Document document {get;set;}

  public PageReference upload() {

    document.AuthorId = UserInfo.getUserId();
    document.FolderId = UserInfo.getUserId(); // put it in running user's folder

    try {
      insert document;
    } catch (DMLException e) {
      ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error uploading file'));
      return null;
    } 

    return null;
  }

}