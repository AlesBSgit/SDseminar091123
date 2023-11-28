report 50101 "CSD SeminarRegParticipantList"

{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    Caption = 'Seminar Reg. - Participant List';

    dataset
    {
        dataitem(SeminarRegistrationHeader; "CSD Seminar Reg. Header")
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_No; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_Name; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(Starting_Datee; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration; "Duration")
            {
                IncludeCaption = true;
            }
            column(Instructor_Name; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column(Room_Name; "Room Name")
            {
                IncludeCaption = true;
            }

            dataitem(SeminarRegistrationLine; "CSD Seminar Registration Line")
            {
                DataItemTableView = sorting("Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");

                column(Bill_To_Customer_number; "Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Contact_Number; "Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Name; "Participant Name")
                {
                    IncludeCaption = true;
                }
            }
        }

        dataitem("Company Information"; "Company Information")
        {
            column(Company_Name; Name)
            {
                // Label = SeminarRegParticipantsList;
                IncludeCaption = true;
            }
        }
    }


    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = './Layouts/SeminarRegParticipantList.rdl';
        }
    }

    labels
    {
        SeminarRegParticipantsList = 'Seminar Reg. Participant List';
    }
}