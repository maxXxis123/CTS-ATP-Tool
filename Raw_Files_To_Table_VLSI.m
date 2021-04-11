%Get Path and Files List, Check if there are multiple files per scan
%concantenate talbe for the same scan (in case multiple files per scan)
%combine to a single table concantenated horizontaly with columns of height
%sort the tables by Col,Row,Zone,ID

function [Header, Table]  = Table_From_Files(mypath, myfiles)
%main_Files = (strfind(files(:),'Height.csv'));
BufferList = myfiles(find(~cellfun(@isempty,(strfind(myfiles(:),'Height.csv')))));
BufferList1 = cellfun(@(S) S(1:end-4), BufferList, 'Uniform', 0);
Finaltable = [];
SortMat = [8,9];
TempCellTable = [];
for i=1:numel(myfiles)
    
    filename = fullfile(mypath, myfiles(i));
    FileStr = char(filename);
    CellArrayTableBuffer = csv2cell(FileStr,',');

    
 %   CellArrayTableBuffer = textscan(fileID,'delimiter',',');
    TempCellTable = [CellArrayTableBuffer(1,:);sortrows(CellArrayTableBuffer(2:end,:),SortMat)];
    
    if i ==1
        Finaltable = [TempCellTable(:,5),TempCellTable(:,6),TempCellTable(:,8),TempCellTable(:,9),TempCellTable(:,7)];
        Finaltable(1,5) = num2cell(i);
    else
        TempCellTable(1,7) = num2cell(i);
        Finaltable = [Finaltable,TempCellTable(:,7)];
    end
end

for n=1:length(Finaltable)
    if isempty(Finaltable{n})
       Finaltable{n}=0;
    end
end

Header = Finaltable(1,:);
Table = Finaltable(2:end,:);
end
