pageextension 50140 ItemCardExt extends "Item Card"
{
    actions
    {
        addlast(Functions)
        {
            action(DownloadPicture)
            {
                CaptionML = ENU = 'Download Picture';
                Image = Picture;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Client: HttpClient;
                    instr: InStream;
                    response: HttpResponseMessage;
                    UrlLabel: Label 'https://ba-consult.dk/downloads/bicycle.jpg';

                begin
                    Client.Get(UrlLabel, response);
                    response.Content.ReadAs(instr);
                    rec.Picture.ImportStream(InStr, 'Default image');
                    CurrPage.Update(true);
                end;
            }
        }
    }
}
