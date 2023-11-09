tableextension 50100 "CSD ResourceExt" extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource type';
            DataClassification = CustomerContent;
            OptionMembers = "Internal;External";
            OptionCaption = 'Internal, External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
        // Add changes to table fields here

        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.Testfield("Unit Cost");
            end;
        }

    }
}