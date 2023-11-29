page 50143 "WS Customers"
{
    PageType = List;
    SourceTable = Customer;


    Layout {
        area(content){
            repeater(GroupName){
                field(No; Rec."No."){
                    ApplicationArea = All;
                }
                field(Name; Rec."Name"){
                    ApplicationArea = All;
                }
                field(City; Rec."City"){
                    ApplicationArea = All;
                }
            }
        }
    }

}