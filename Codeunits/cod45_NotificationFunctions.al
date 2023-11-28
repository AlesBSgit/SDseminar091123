codeunit 50145 "CSD Notification Functions"
{
    procedure OpenCustomerCard(inNotification: Notification; Cust: Record "Customer")
    var
        myInt: Integer;
    begin
        Page.Run(Page::"Customer Card", Cust);
    end;


}