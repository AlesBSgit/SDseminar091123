table 50102 AlIssue

{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; number; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; title; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(4; created_at; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(5; user; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; state; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; html_url; Text[250])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }

    procedure RefreshIssues()
    var
        RefreshALIssues: Codeunit "Refresh AL Issues Code";
    begin
        RefreshALIssues.Refresh();
    end;

}