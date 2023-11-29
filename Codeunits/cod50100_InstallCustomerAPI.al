codeunit 50103 "DIR Install Customer API"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        WebServiceManagement: Codeunit "Web Service Management";
        ObjectType: Option TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System,FieldNumber;
    begin
        WebServiceManagement.CreateTenantWebService(ObjectType::Page, Page::"DIR WS Customer SOAP", 'WSCustomerSOAP', true);
        WebServiceManagement.CreateTenantWebService(ObjectType::Page, Page::"DIR WS Customer OData", 'WSCustomerOData', true);
        WebServiceManagement.CreateTenantWebService(ObjectType::Page, Page::"DIR WS Customer API", 'WSCustomerAPI', true);
    end;
}