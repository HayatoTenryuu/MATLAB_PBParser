%% Application entry point if using code.

classdef App < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                    matlab.ui.Figure
        Image_4                     matlab.ui.control.Image
        Image_3                     matlab.ui.control.Image
        Image_2                     matlab.ui.control.Image
        Image                       matlab.ui.control.Image
        Label                       matlab.ui.control.Label
        Label_5                     matlab.ui.control.Label
        Label_4                     matlab.ui.control.Label
        Label_3                     matlab.ui.control.Label
        Label_6                     matlab.ui.control.Label
        GiveMeSuggestionsButton     matlab.ui.control.Button
        AnalyzeDataButton           matlab.ui.control.Button
        OrganizeDataButton          matlab.ui.control.Button
        ImportHistoricalDataButton  matlab.ui.control.Button
        uBestEverPowerballNumberGeneratoruLabel  matlab.ui.control.Label
    end

    properties (Access = public)
        a = [];
        b = [];
        c = figure("Visible","off");
        d = [];
    end
    
    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            clc
            app.Image.Visible = "off";
            app.Image_2.Visible = "off";
            app.Image_3.Visible = "off";
            app.Image_4.Visible = "off";
        end

        % Button pushed function: ImportHistoricalDataButton
        function ImportHistoricalDataButtonPushed(app, event)
            fprintf("Downloading..." + newline);
            
            % Loading image on:
            app.Image.Visible = "on";
            drawnow;

            % Download powerball data:
            a_site_scraper;
            fprintf("Download Complete!" + newline);
            
            % Done label on:
            app.Image.Visible = "off";
            app.Label_6.Text = "Done!";
            drawnow;
        end

        % Button pushed function: OrganizeDataButton
        function OrganizeDataButtonPushed(app, event)
            fprintf(newline + "Tidying things up..." + newline);

            % Loading image on:
            app.Image_2.Visible = "on";
            drawnow;

            % Organize data:
            b_data_organizer;

            % Done label on:
            app.Image_2.Visible = "off";
            app.Label_3.Text = "Done!";
            drawnow;

            fprintf("All done!" + newline);
        end

        % Button pushed function: AnalyzeDataButton
        function AnalyzeDataButtonPushed(app, event)

            % Loading image on:
            app.Image_3.Visible = "on";
            drawnow;

            % Analyze data:
            [app.a, app.b, app.c, app.d] = c_data_analyzer();

            % Done label on:
            app.Image_3.Visible = "off";
            app.Label_4.Text = "Done!";
            drawnow;

            fprintf("Analysis Complete!" + newline);
        end
        
        % Button pushed function: GiveMeSuggestionsButton
        function GiveMeSuggestionsButtonPushed(app, event)
            choice = 0;
            %fprintf("d is " + string(app.d) + newline);
            
            % Get number of recommendations from user:
            fontformat = '\fontsize{9}';
            prompt = {fontformat + "I will use the two best schemas, but " + ...
                "would you like to use the recent best 2 or the overall best 2?"};
            dlgtitle = "Which top schemas should we use?";
            optsa.Interpreter = 'tex';
            optsa.WindowStyle = 'modal';
            optsa.Default='Recent Best';
            answer1 = questdlg(prompt, dlgtitle, 'Recent Best', 'Overall Best', 'Cancel', optsa);
            
            switch answer1
                case 'Recent Best'
                    choice = 1;
                case 'Overall Best'
                    choice = 2;
                case 'Cancel'
                    return;
            end

            fontformat = '\fontsize{9}';
            prompt = {fontformat + "How many sets of lottery picks do you want?"};
            dlgtitle = "How many suggestions should I generate?";
            fieldsize = [1 65];
            optsa.Interpreter = 'tex';
            optsa.WindowStyle = 'modal';
            answer2 = inputdlg(prompt, dlgtitle, fieldsize, "1", optsa);
            
            % Create recommendations:
            if length(answer2) > 0 && str2double(cell2mat(answer2(1))) >= 1
                
                % Loading image on:
                app.Image_4.Visible = "on";
                drawnow;

                % Clear previous recommendations:
                locale = dir;
                last = length(locale);
                
                for q = 1:last
                    finder = locale(q).name;
                    if finder == "Your Recommendations"
                        fclose("all");
                        rmdir("Your Recommendations", "s");
                    end
                end
                
                % Extract the top 2 schemas from the analysis
                if choice == 1
                    big1 = [app.d(1), app.d(4)];
                    big2 = [app.d(2), app.d(5)];
                    bigr = [app.d(3), app.d(6)];
                elseif choice == 2
                    big1 = [app.d(7), app.d(10)];
                    big2 = [app.d(8), app.d(11)];
                    bigr = [app.d(9), app.d(12)];
                else
                    return;
                end

                % Run recommendations script as often as requested:
                for q = 1:str2double(cell2mat(answer2(1)))
                    d_make_recommendation(app.a, app.b, app.c, big1, big2, bigr, q, choice);
                end

                % Done label on:
                app.Image_4.Visible = "off";
                app.Label_5.Text = "Done!";
                drawnow;
    
                % Open output:
                winopen(".\Your Recommendations\");
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off', 'AutoResizeChildren', 'off');
            app.UIFigure.Position = [100 100 760 520];
            app.UIFigure.Name = "Best Powerball Number Generator";
            app.UIFigure.Icon = "./resources/magic8.png";
            app.UIFigure.SizeChangedFcn = @UIFigureSizeChanged;

            % Create uBestEverPowerballNumberGeneratoruLabel
            app.uBestEverPowerballNumberGeneratoruLabel = uilabel(app.UIFigure);
            app.uBestEverPowerballNumberGeneratoruLabel.HorizontalAlignment = 'center';
            app.uBestEverPowerballNumberGeneratoruLabel.FontSize = 28;
            app.uBestEverPowerballNumberGeneratoruLabel.Interpreter = 'html';
            app.uBestEverPowerballNumberGeneratoruLabel.Position = [(app.UIFigure.Position(3)/2 - 340) (app.UIFigure.Position(4)/2 + 140) 690 69];
            app.uBestEverPowerballNumberGeneratoruLabel.Text = '<u> Best Ever Powerball Number Generator* </u>';
            app.uBestEverPowerballNumberGeneratoruLabel.Parent = app.UIFigure;

            % Create ImportHistoricalDataButton
            app.ImportHistoricalDataButton = uibutton(app.UIFigure, 'push');
            app.ImportHistoricalDataButton.ButtonPushedFcn = createCallbackFcn(app, @ImportHistoricalDataButtonPushed, true);
            app.ImportHistoricalDataButton.FontSize = 16;
            app.ImportHistoricalDataButton.Position = [(app.UIFigure.Position(3)/2 - 180) (app.UIFigure.Position(4) - 200) 188 47];
            app.ImportHistoricalDataButton.Text = 'Import Historical Data';

            % Create OrganizeDataButton
            app.OrganizeDataButton = uibutton(app.UIFigure, 'push');
            app.OrganizeDataButton.ButtonPushedFcn = createCallbackFcn(app, @OrganizeDataButtonPushed, true);
            app.OrganizeDataButton.FontSize = 16;
            app.OrganizeDataButton.Position = [(app.UIFigure.Position(3)/2 - 180) (app.UIFigure.Position(4) - 280) 188 47];
            app.OrganizeDataButton.Text = 'Organize Data';

            % Create AnalyzeDataButton
            app.AnalyzeDataButton = uibutton(app.UIFigure, 'push');
            app.AnalyzeDataButton.ButtonPushedFcn = createCallbackFcn(app, @AnalyzeDataButtonPushed, true);
            app.AnalyzeDataButton.FontSize = 16;
            app.AnalyzeDataButton.Position = [(app.UIFigure.Position(3)/2 - 180) (app.UIFigure.Position(4) - 360) 188 47];
            app.AnalyzeDataButton.Text = 'Analyze Data';

            % Create GiveMeSuggestionsButton
            app.GiveMeSuggestionsButton = uibutton(app.UIFigure, 'push');
            app.GiveMeSuggestionsButton.ButtonPushedFcn = createCallbackFcn(app, @GiveMeSuggestionsButtonPushed, true);
            app.GiveMeSuggestionsButton.FontSize = 16;
            app.GiveMeSuggestionsButton.Position = [(app.UIFigure.Position(3)/2 - 180) (app.UIFigure.Position(4) - 440) 188 47];
            app.GiveMeSuggestionsButton.Text = 'Give Me Suggestions';

            % Create Label_6
            app.Label_6 = uilabel(app.UIFigure);
            app.Label_6.Tag = 'Label_6';
            app.Label_6.HorizontalAlignment = 'center';
            app.Label_6.FontSize = 16;
            app.Label_6.Position = [(app.UIFigure.Position(3)/2 + 100) (app.UIFigure.Position(4) - 190) 67 34];
            app.Label_6.Text = ' ';

            % Create Label_3
            app.Label_3 = uilabel(app.UIFigure);
            app.Label_3.HorizontalAlignment = 'center';
            app.Label_3.FontSize = 16;
            app.Label_3.Position = [(app.UIFigure.Position(3)/2 + 100) (app.UIFigure.Position(4) - 270) 67 34];
            app.Label_3.Text = ' ';

            % Create Label_4
            app.Label_4 = uilabel(app.UIFigure);
            app.Label_4.HorizontalAlignment = 'center';
            app.Label_4.FontSize = 16;
            app.Label_4.Position = [(app.UIFigure.Position(3)/2 + 100) (app.UIFigure.Position(4) - 350) 67 34];
            app.Label_4.Text = ' ';

            % Create Label_5
            app.Label_5 = uilabel(app.UIFigure);
            app.Label_5.HorizontalAlignment = 'center';
            app.Label_5.FontSize = 16;
            app.Label_5.Position = [(app.UIFigure.Position(3)/2 + 100) (app.UIFigure.Position(4) - 430) 67 34];
            app.Label_5.Text = ' ';

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.HorizontalAlignment = 'center';
            app.Label.Position = [(app.UIFigure.Position(3)/2 - 235) (app.UIFigure.Position(4) - 500) 467 22];
            app.Label.Text = '* = odds are better than going to the cashier and asking for a random set of numbers.';

            % Create Image
            app.Image = uiimage(app.UIFigure);
            app.Image.Position = [(app.UIFigure.Position(3)/2 + 80) (app.UIFigure.Position(4) - 195) 100 40];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'resources', 'hzk6C.gif');

            % Create Image_2
            app.Image_2 = uiimage(app.UIFigure);
            app.Image_2.Position = [(app.UIFigure.Position(3)/2 + 80) (app.UIFigure.Position(4) - 265) 100 40];
            app.Image_2.ImageSource = fullfile(pathToMLAPP, 'resources', 'hzk6C.gif');

            % Create Image_3
            app.Image_3 = uiimage(app.UIFigure);
            app.Image_3.Position = [(app.UIFigure.Position(3)/2 + 80) (app.UIFigure.Position(4) - 355) 100 40];
            app.Image_3.ImageSource = fullfile(pathToMLAPP, 'resources', 'hzk6C.gif');

            % Create Image_4
            app.Image_4 = uiimage(app.UIFigure);
            app.Image_4.Position = [(app.UIFigure.Position(3)/2 + 80) (app.UIFigure.Position(4) - 435) 100 40];
            app.Image_4.ImageSource = fullfile(pathToMLAPP, 'resources', 'hzk6C.gif');

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = App

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end

% Dynamic spacing - Children are in opposite order of their creation
function UIFigureSizeChanged(Figure, event)
    
    % uBestEverPowerballNumberGeneratoruLabel
    Figure.Children(14).Position = [(Figure.Position(3)/2 - 340) (Figure.Position(4)/2 + 150) 690 69];
    
    % ImportHistoricalDataButton
    Figure.Children(13).Position = [(Figure.Position(3)/2 - 180) (Figure.Position(4)/2 + 70) 188 47];
    
    % OrganizeDataButton
    Figure.Children(12).Position = [(Figure.Position(3)/2 - 180) (Figure.Position(4)/2 - 10) 188 47];
    
    % AnalyzeDataButton
    Figure.Children(11).Position = [(Figure.Position(3)/2 - 180) (Figure.Position(4)/2 - 90) 188 47];
    
    % GiveMeSuggestionsButton
    Figure.Children(10).Position = [(Figure.Position(3)/2 - 180) (Figure.Position(4)/2 - 170) 188 47];
    
    % Label_6
    Figure.Children(9).Position = [(Figure.Position(3)/2 + 100) (Figure.Position(4)/2 + 80) 67 34];
    
    % Label_3
    Figure.Children(8).Position = [(Figure.Position(3)/2 + 100) (Figure.Position(4)/2 - 0) 67 34];
    
    % Label_4
    Figure.Children(7).Position = [(Figure.Position(3)/2 + 100) (Figure.Position(4)/2 - 80) 67 34];
    
    % Label_5
    Figure.Children(6).Position = [(Figure.Position(3)/2 + 100) (Figure.Position(4)/2 - 160) 67 34];
    
    % Label
    Figure.Children(5).Position = [(Figure.Position(3)/2 - 235) (Figure.Position(4)/2 - 240) 467 22];
    
    % Image
    Figure.Children(4).Position = [(Figure.Position(3)/2 + 80) (Figure.Position(4)/2 + 75) 100 40];
    
    % Image_2
    Figure.Children(3).Position = [(Figure.Position(3)/2 + 80) (Figure.Position(4)/2 - 5) 100 40];
    
    % Image_3
    Figure.Children(2).Position = [(Figure.Position(3)/2 + 80) (Figure.Position(4)/2 - 85) 100 40];
    
    % Image_4
    Figure.Children(1).Position = [(Figure.Position(3)/2 + 80) (Figure.Position(4)/2 - 165) 100 40];
end

