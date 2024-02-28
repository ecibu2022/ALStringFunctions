page 50130 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    Caption='AL Functions';
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // field(Name; NameSource)
                // {
                //     ApplicationArea = All;
                    
                // }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    

    trigger OnOpenPage()
    
    begin
        MyName:='Ecibu Michael';
        Message('User ID %1', UserId());
        // StrPos string position 
        // It checks your string then if it finds the string then returns an integer position
        Message('The postion of Ecibu is %1', StrPos(MyName, 'Ec'));
        // IndexOf(startPosition)
        Message('The index of E is %1' ,MyName.IndexOf('E'));
        // StrCopy(text, startIndex, length)
        Message('Copy String %1', CopyStr(MyName, 6, 2));
        // InsStr(string.text-to-add-to, sring-to-add, postion)
        Message('Adding INSERT %1', InsStr(MyName, 'INSERT', 6));
        exit
    end;



    var
        MyName: Text;
}