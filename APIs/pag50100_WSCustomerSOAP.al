page 50105 "DIR WS Customer SOAP"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Caption = 'WS Customer SOAP';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("Sales_(LCY)"; Rec."Sales (LCY)")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}