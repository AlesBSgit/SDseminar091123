// Report 50100 "CSD Import Currencies Test"
// {

//     Caption = 'CSD Import Currencies Rest';
//     UsageCategory = ReportsAndAnalysis;
//     ApplicationArea = All;




//     trigger OnPreReport()

//     begin
//         if not Client.Get(url, Response) then
//             Error(NoConnectTxt, url);
//         if not Response.IsSuccessStatusCode then
//             Error(NoConnectTxt2, Response.HttpStatusCode, Response.ReasonPhrase);
//         Response.Content.ReadAs(JsonResponse);
//         JsonResponse := '[' + copyStr(JsonResponse, 2, Strlen(JsonResponse) - 2) + ']';
//         if not Array.ReadFrom(JsonResponse) then
//             Error('Error readoing JSON Response');
//         foreach Token in Array do begin
//             object := Token.AsObject;
//         end;
//         Error('Errot text \%1, %1')
//     end;

//     var
//         Client: Httpclient;
//         Response: HttpResponseMessage;

//         Token:
//         Url: Label 'http://www.floatrates.com/daily/dkk.json';
//         JsonResponse: Text;
//         NoConnectTxt: label 'Error getting response from server';
//         NoConnectTxt2: label 'Error getting response from server - Status is %1 Error is %2', comment = '%1 = Status';


// }