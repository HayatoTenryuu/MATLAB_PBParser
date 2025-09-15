%% This script is used to give the user recommendations based on the tests done.

function [b1, b2, b3, b4, b5, br, b21, b22, b23, b24, b25, br2, ...
    fig1, fig2] = recommendaccion(bestw, bestr, fig, big1, big2, bigr)

    %-----------------
    % Recommendations:
    %-----------------

    % Determine the best schema
    bbig1 = char(big1);
    bbig2 = char(big2);
    bbigr = char(bigr);

    schem1 = str2double(bbig1(length(bbig1)-2 : length(bbig1)));
    schem2 = str2double(bbig2(length(bbig2)-2 : length(bbig2)));
    schemR = str2double(bbigr(length(bbigr)));

    [ball_set1, ball_set2, ball_setR] = schema(bestw, bestr, schem1, schem2, schemR);

    b1 = ball_set1(1);
    b2 = ball_set1(2);
    b3 = ball_set1(3);
    b4 = ball_set1(4);
    b5 = ball_set1(5);
    br = ball_setR(1);

    b21 = ball_set2(1);
    b22 = ball_set2(2);
    b23 = ball_set2(3);
    b24 = ball_set2(4);
    b25 = ball_set2(5);
    br2 = ball_setR(2);


    % Customize figure:
    fig1 = figure;
    copyobj(get(fig,'Children'), fig1);
    fig.Visible = "off";
    fig1.Visible = "off";
    
    fig2 = figure;
    copyobj(get(fig,'Children'), fig2);
    fig.Visible = "off";
    fig2.Visible = "off";

    % First Schema 
    fig1.Name = "Data based on First Schema";
    fig1.NumberTitle = "off";
    fig1.Position = [fig1.Position(1)-50, fig1.Position(2)- 80, 700, 600];
    fig1.Children(4, 1).Children.FaceColor = "flat";
    fig1.Children(3, 1).Children.FaceColor = "flat";
    fig1.Children(2, 1).Children.FaceColor = "flat";
    fig1.Children(1, 1).Children.FaceColor = "flat";

    % Color the recommended numbers differently:
    for col = 1:69
        if fig1.Children(4, 1).Children.XData(col) == b1
            fig1.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig1.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig1.Children(4, 1).Children.XData(col) == b2
            fig1.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig1.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig1.Children(4, 1).Children.XData(col) == b3
            fig1.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig1.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig1.Children(4, 1).Children.XData(col) == b4
            fig1.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig1.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig1.Children(4, 1).Children.XData(col) == b5
            fig1.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig1.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        else
            fig1.Children(4, 1).Children.CData(col, :) = [0, 0, 1];
            fig1.Children(3, 1).Children.CData(col, :) = [0, 0, 1];
        end
    end
    for col = 1:26
        if fig1.Children(2, 1).Children.XData(col) == br
            fig1.Children(2, 1).Children.CData(col, :) = [0.75, 0, 1];
            fig1.Children(1, 1).Children.CData(col, :) = [0.75, 0, 1];
        else
            fig1.Children(2, 1).Children.CData(col, :) = [1, 0, 0];
            fig1.Children(1, 1).Children.CData(col, :) = [1, 0, 0];
        end
    end

    % Second Schema
    fig2.Name = "Data based on 1, 1, 3 Schema";
    fig2.NumberTitle = "off";
    fig2.Position = [fig2.Position(1)-50, fig2.Position(2)- 80, 700, 600];
    fig2.Children(4, 1).Children.FaceColor = "flat";
    fig2.Children(3, 1).Children.FaceColor = "flat";
    fig2.Children(2, 1).Children.FaceColor = "flat";
    fig2.Children(1, 1).Children.FaceColor = "flat";

    % Color the recommended numbers differently:
    for col = 1:69
        if fig2.Children(4, 1).Children.XData(col) == b21
            fig2.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig2.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig2.Children(4, 1).Children.XData(col) == b22
            fig2.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig2.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig2.Children(4, 1).Children.XData(col) == b23
            fig2.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig2.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig2.Children(4, 1).Children.XData(col) == b24
            fig2.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig2.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        elseif fig2.Children(4, 1).Children.XData(col) == b25
            fig2.Children(4, 1).Children.CData(col, :) = [1, 0, 0.75];
            fig2.Children(3, 1).Children.CData(col, :) = [1, 0, 0.75];
        else
            fig2.Children(4, 1).Children.CData(col, :) = [0, 0, 1];
            fig2.Children(3, 1).Children.CData(col, :) = [0, 0, 1];
        end
    end
    for col = 1:26
        if fig2.Children(2, 1).Children.XData(col) == br2
            fig2.Children(2, 1).Children.CData(col, :) = [0.75, 0, 1];
            fig2.Children(1, 1).Children.CData(col, :) = [0.75, 0, 1];
        else
            fig2.Children(2, 1).Children.CData(col, :) = [1, 0, 0];
            fig2.Children(1, 1).Children.CData(col, :) = [1, 0, 0];
        end
    end
end