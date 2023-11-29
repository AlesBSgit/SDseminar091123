page 50103 "DIR WS Customer API"
{
    PageType = API;
    Caption = 'WS Customer API';
    APIPublisher = 'DirectionsEMEA';
    APIGroup = 'APIs';
    APIVersion = 'v1.0';
    EntityName = 'WSCustomer';
    EntitySetName = 'WSCustomers';
    SourceTable = customer;
    DelayedInsert = true;
    DeleteAllowed = false;
    ODataKeyFields = "No.";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Date_filter; Rec."Date Filter")
                {
                    ApplicationArea = All;

                }
                field("SalesLCY"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}