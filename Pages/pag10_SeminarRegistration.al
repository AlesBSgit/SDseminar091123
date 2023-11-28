page 50110 "CSD Seminar Registration"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3-1
    //     - Created new page
    //   Chapter 7 - Lab 5-8
    //     - Added Post Action  

    Caption = 'Seminar Registration';
    PageType = Document;
    SourceTable = "CSD Seminar Reg. Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    AssistEdit = true;
                    ApplicationArea = All;

                    trigger OnAssistEdit();
                    begin
                        if Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                        FieldIsMandatory := true;
                    end;

                    trigger OnValidate()
                    begin
                        FieldIsMandatory := true;
                    end;
                }

                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'enter the starting date of the seminar registration';
                    ShowMandatory = FieldIsMandatory;

                    trigger OnValidate()
                    var
                        DateBeforeTodayWarning: Label 'Date Is Before Today';
                    begin
                        if Rec."Starting Date" < WorkDate() then
                            DateBeforeTodayNotification.Message('Date is Before Today');
                            DateBeforeTodayNotification.Send();
                    end;
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar No. is mandatory';
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Instructor Resource No.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                    Tooltip = 'Instructor Resource No.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
            }
            part(SeminarRegistrationLines; "CSD Seminar Reg. Subpage")
            {
                Caption = 'Lines';
                SubPageLink = "Document No." = field("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room Name"; Rec."Room Name")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room Address"; Rec."Room Address")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room Address 2"; Rec."Room Address 2")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room Post Code"; Rec."Room Post Code")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room City"; Rec."Room City")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room Country/Reg. Code"; Rec."Room Country/Reg. Code")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
                field("Room County"; Rec."Room County")
                {
                    ApplicationArea = All;
                    Tooltip = 'Seminar Name';
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = field("Seminar No.");
                ApplicationArea = All;
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = field("Bill-to Customer No.");
                ApplicationArea = All;
            }

            systempart("Links"; Links)
            {
                ApplicationArea = All;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Seminar Registration")
            {
                Caption = 'Seminar Registration';
                action("Comments")
                {
                    Caption = 'Comments';
                    Image = Comment;
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Table Name" = const("CSD Seminar Registration"));
                    ApplicationArea = All;
                }
                action("Charges")
                {
                    Caption = 'Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                    ApplicationArea = All;
                }
            }
        }
        area(Processing)
        {
            action("Post")
            {
                Caption = 'Post';
                Image = PostDocument;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ShortcutKey = F9;
                RunObject = codeunit "CSD Seminar-Post (Yes/No)";
                ApplicationArea = All;
            }
        }
    }



    var
        FieldIsMandatory: Boolean;
        DateBeforeTodayNotification: Notification;

    trigger OnInsertRecord(belowXRec: Boolean): Boolean
    var
    begin
        FieldIsMandatory := true;
    end;
}

