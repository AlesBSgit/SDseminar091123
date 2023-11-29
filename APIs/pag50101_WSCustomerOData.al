page 50104 "DIR WS Customer OData"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;
    Caption = 'WS Customer OData';
    Insertallowed = false;
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

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}