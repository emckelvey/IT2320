window.onload = function Load()
{
    var grid = document.getElementsByClassName("grid")[0];

    for (var i=1; i<7; i++)
    {
        var row = CreateDiv("", "row");
        grid.appendChild(row);
        
        for (var j=1; j<7; j++)
        {
            var text = i + "," + j;
            var cell = CreateDiv(text, "cell");
            cell.addEventListener("click", ClickedCell);
            row.appendChild(cell);
        }
    }
}

function CreateDiv(text, className)
{
    var newDiv = document.createElement("div");    
    newDiv.className = className;
    newDiv.innerHTML = text;
    return newDiv;
}

function ClickedCell(element)
{
    element.target.className = (element.target.className=="cell") ? "cell active" : "cell";
}