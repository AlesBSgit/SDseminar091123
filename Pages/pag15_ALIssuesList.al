page 50115 ALIssueList
{
    PageType = List;
    SourceTable = ALIssue;
    CaptionML = ENU = 'AL Issues';
    Editable = false;
    SourceTableView = order(descending);
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.id) { }
                field(number; Rec.Number) { }
                field(title; Rec.title) { }
                field(created_at; rec.created_at) { }
                field(user; Rec.user) { }
                field(state; Rec.state)
                {
                }
                field(html_url; Rec.html_url)
                {

                }
            }
        }

    }
    actions
    {
        area(processing)
        {
            action(RefreshALIssueList)
            {

                CaptionML = ENU = 'Refresh Issues';
                Promoted = true;
                PromotedCategory = Process;
                Image = RefreshLines;
                trigger OnAction();
                begin
                    Rec.RefreshIssues();
                    CurrPage.Update;
                    if Rec.FindFirst() then;
                end;
            }
        }
    }

}