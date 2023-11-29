page 50144 "CSD API Customers"
{
    PageType = API;
    Caption = 'apiCustomers';
    APIpublisher = 'publisherName';
    APIGroup = 'groupName';
    EntityName = 'customer';
    EntitySetName = 'customers';
    DelayedInsert = true;
    sourceTable = Customer;
    layout
    {
        area(content)
        {
            repeater(GroupName)
            {
                field(No; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field(City; Rec."City")
                {
                    ApplicationArea = All;
                }
                field(Balance; Rec."Balance (LCY)")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}