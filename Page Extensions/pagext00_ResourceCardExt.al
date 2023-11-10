pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; Rec."CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (rec.Type = rec.Type::Machine);
        CurrPage.Update(false);
    end;

    

    var
        ShowMaxField: Boolean;

}