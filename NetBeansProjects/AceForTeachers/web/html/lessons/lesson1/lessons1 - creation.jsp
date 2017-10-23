<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ace for teachers - Variable Creation</title>
        <link href="../../../css/main.css" rel="stylesheet" type="text/css">
        <script src="../../../google-blockly/blockly_compressed.js"></script>
        <script src="../../../google-blockly/blocks_compressed.js"></script>
        <script src="../../../google-blockly/msg/js/en.js"></script>
        <script src="../../../google-blockly/javascript_compressed.js"></script>
        <script src="../../../google-blockly/demos/interpreter/acorn_interpreter.js"></script>
    <xml id="toolbox" style="display: none">
        <category id="catLogic" colour="210" name="Logic">
            <block type="controls_if"></block>
            <block type="logic_compare"></block>
            <block type="logic_operation"></block>
            <block type="logic_negate"></block>
            <block type="logic_boolean"></block>
            <block type="logic_null"></block>
            <block type="logic_ternary"></block>
        </category>
        <category id="catLoops" colour="120" name="Loops">
            <block type="controls_repeat_ext">
                <value name="TIMES">
                    <shadow type="math_number">
                        <field name="NUM">10</field>
                    </shadow>
                </value>
            </block>
            <block type="controls_whileUntil"></block>
            <block type="controls_for">
                <value name="FROM">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
                <value name="TO">
                    <shadow type="math_number">
                        <field name="NUM">10</field>
                    </shadow>
                </value>
                <value name="BY">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
            </block>
            <block type="controls_forEach"></block>
            <block type="controls_flow_statements"></block>
        </category>
        <category id="catMath" colour="230" name="Math">
            <block type="math_number"></block>
            <block type="math_arithmetic">
                <value name="A">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
                <value name="B">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
            </block>
            <block type="math_single">
                <value name="NUM">
                    <shadow type="math_number">
                        <field name="NUM">9</field>
                    </shadow>
                </value>
            </block>
            <block type="math_trig">
                <value name="NUM">
                    <shadow type="math_number">
                        <field name="NUM">45</field>
                    </shadow>
                </value>
            </block>
            <block type="math_constant"></block>
            <block type="math_number_property">
                <value name="NUMBER_TO_CHECK">
                    <shadow type="math_number">
                        <field name="NUM">0</field>
                    </shadow>
                </value>
            </block>
            <block type="math_change">
                <value name="DELTA">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
            </block>
            <block type="math_round">
                <value name="NUM">
                    <shadow type="math_number">
                        <field name="NUM">3.1</field>
                    </shadow>
                </value>
            </block>
            <block type="math_on_list"></block>
            <block type="math_modulo">
                <value name="DIVIDEND">
                    <shadow type="math_number">
                        <field name="NUM">64</field>
                    </shadow>
                </value>
                <value name="DIVISOR">
                    <shadow type="math_number">
                        <field name="NUM">10</field>
                    </shadow>
                </value>
            </block>
            <block type="math_constrain">
                <value name="VALUE">
                    <shadow type="math_number">
                        <field name="NUM">50</field>
                    </shadow>
                </value>
                <value name="LOW">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
                <value name="HIGH">
                    <shadow type="math_number">
                        <field name="NUM">100</field>
                    </shadow>
                </value>
            </block>
            <block type="math_random_int">
                <value name="FROM">
                    <shadow type="math_number">
                        <field name="NUM">1</field>
                    </shadow>
                </value>
                <value name="TO">
                    <shadow type="math_number">
                        <field name="NUM">100</field>
                    </shadow>
                </value>
            </block>
            <block type="math_random_float"></block>
        </category>
        <category id="catText" colour="160" name="Text">
            <block type="text"></block>
            <block type="text_join"></block>
            <block type="text_append">
                <value name="TEXT">
                    <shadow type="text"></shadow>
                </value>
            </block>
            <block type="text_length">
                <value name="VALUE">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
            <block type="text_isEmpty">
                <value name="VALUE">
                    <shadow type="text">
                        <field name="TEXT"></field>
                    </shadow>
                </value>
            </block>
            <block type="text_indexOf">
                <value name="VALUE">
                    <block type="variables_get">
                        <field name="VAR">text</field>
                    </block>
                </value>
                <value name="FIND">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
            <block type="text_charAt">
                <value name="VALUE">
                    <block type="variables_get">
                        <field name="VAR">text</field>
                    </block>
                </value>
            </block>
            <block type="text_getSubstring">
                <value name="STRING">
                    <block type="variables_get">
                        <field name="VAR">text</field>
                    </block>
                </value>
            </block>
            <block type="text_changeCase">
                <value name="TEXT">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
            <block type="text_trim">
                <value name="TEXT">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
            <block type="text_print">
                <value name="TEXT">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
            <block type="text_prompt_ext">
                <value name="TEXT">
                    <shadow type="text">
                        <field name="TEXT">abc</field>
                    </shadow>
                </value>
            </block>
        </category>
        <category id="catLists" colour="260" name="Lists">
            <block type="lists_create_with">
                <mutation items="0"></mutation>
            </block>
            <block type="lists_create_with"></block>
            <block type="lists_repeat">
                <value name="NUM">
                    <shadow type="math_number">
                        <field name="NUM">5</field>
                    </shadow>
                </value>
            </block>
            <block type="lists_length"></block>
            <block type="lists_isEmpty"></block>
            <block type="lists_indexOf">
                <value name="VALUE">
                    <block type="variables_get">
                        <field name="VAR">list</field>
                    </block>
                </value>
            </block>
            <block type="lists_getIndex">
                <value name="VALUE">
                    <block type="variables_get">
                        <field name="VAR">list</field>
                    </block>
                </value>
            </block>
            <block type="lists_setIndex">
                <value name="LIST">
                    <block type="variables_get">
                        <field name="VAR">list</field>
                    </block>
                </value>
            </block>
            <block type="lists_getSublist">
                <value name="LIST">
                    <block type="variables_get">
                        <field name="VAR">list</field>
                    </block>
                </value>
            </block>
            <block type="lists_split">
                <value name="DELIM">
                    <shadow type="text">
                        <field name="TEXT">,</field>
                    </shadow>
                </value>
            </block>
            <block type="lists_sort"></block>
        </category>
        <category id="catColour" colour="20" name="Color">
            <block type="colour_picker"></block>
            <block type="colour_random"></block>
            <block type="colour_rgb">
                <value name="RED">
                    <shadow type="math_number">
                        <field name="NUM">100</field>
                    </shadow>
                </value>
                <value name="GREEN">
                    <shadow type="math_number">
                        <field name="NUM">50</field>
                    </shadow>
                </value>
                <value name="BLUE">
                    <shadow type="math_number">
                        <field name="NUM">0</field>
                    </shadow>
                </value>
            </block>
            <block type="colour_blend">
                <value name="COLOUR1">
                    <shadow type="colour_picker">
                        <field name="COLOUR">#ff0000</field>
                    </shadow>
                </value>
                <value name="COLOUR2">
                    <shadow type="colour_picker">
                        <field name="COLOUR">#3333ff</field>
                    </shadow>
                </value>
                <value name="RATIO">
                    <shadow type="math_number">
                        <field name="NUM">0.5</field>
                    </shadow>
                </value>
            </block>
        </category>
        <sep></sep>
        <category id="catVariables" colour="330" custom="VARIABLE" name="Variables"></category>
        <category id="catFunctions" colour="290" custom="PROCEDURE" name="Functions"></category>
    </xml>
</head>
<body>
    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        if (session.getAttribute("userName") == null) {
            response.sendRedirect("login-page.jsp");
        }
    %>
    <div id="header-container">
        <div id="header">
            <div id="navigation">
                <h1 class="logo">ACE For Teachers</h1>
                <ul>
                    <li><a href="../../index.jsp">Home</a></li>
                    <li><a href="../../lessons.jsp">Lessons</a></li>
                    <li><a href="../../practice.jsp">Practice</a></li>
                    <li><a href="../../videos.jsp">Videos</a></li>
                    <li><form action="Logout" method="POST"><input type="submit" value="Logout"></form></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="content-blockly">
        <h1>Variable Creation</h1>
        <div class="box-container">            
            <div class="coding-environment">

                <div class="button-container">
                    <div id="nextButton" class="inline-block">
                        <a href="../../lessons/lesson1/lessons1%20-%20string.jsp" class="next-button">NEXT</a>
                    </div>
                    <div id="playButton" class="inline-block">
                        <button class="code-button run">RUN</button> 
                    </div>
                </div>

                <div id="blocklyDiv" style="height: 100%; width: 100%;"></div>
            </div>
            <div class="tutorial-section">
                <h3>Creating Variables</h3>
                <p>
                    Making our own variables is a cruical part of programming because somthimes we require more flexability that standard variable types dont provide, in order to build more complexe peices of programming
                </p>
                <h3>For Blockly</h3>
                <p>
                    Custom variables can hold manny diffrent types of data
                    <br>Step 1: go into the varible catagory and click Create a variable
                    <br>Step 2: give your varibale a meaningfull name and click ok Remember to follow good naming conventions 
                    <br>Step 3: click the red next button to continue
                </p>
                <h3>For Scratch</h3>
                <p>
                    Step 1: First click on the Data tab in scratch and then click “make a variable”
                    <br>Step 2: Give your Variable a meaningful name like myName and click ok. Make sure you have “for all sprites” clicked 
                </p>
            </div>
        </div>    
    </div>
    <script>
        var workspace = Blockly.inject('blocklyDiv',
                {toolbox: document.getElementById('toolbox'), trashcan: true});
        var code = Blockly.JavaScript.workspaceToCode(workspace);

        function myUpdateFunction(event) {
            var languageDropdown = document.getElementById('languageDropdown');
            var languageSelection = languageDropdown.options[languageDropdown.selectedIndex].value;
            var codeDiv = document.getElementById('codeDiv');
            var codeHolder = document.createElement('pre');
            codeHolder.className = 'prettyprint but-not-that-pretty';
            var code = document.createTextNode(Blockly[languageSelection].workspaceToCode(workspace));
            codeHolder.appendChild(code);
            codeDiv.replaceChild(codeHolder, codeDiv.lastElementChild);
            prettyPrint();
        }
        workspace.addChangeListener(myUpdateFunction);
        function executeBlockCode() {
            var code = Blockly.JavaScript.workspaceToCode(workspace);
            var initFunc = function (interpreter, scope) {
                var alertWrapper = function (text) {
                    text = text ? text.toString() : '';
                    return interpreter.createPrimitive(alert(text));
                };
                interpreter.setProperty(scope, 'alert',
                        interpreter.createNativeFunction(alertWrapper));
                var promptWrapper = function (text) {
                    text = text ? text.toString() : '';
                    return interpreter.createPrimitive(prompt(text));
                };
                interpreter.setProperty(scope, 'prompt',
                        interpreter.createNativeFunction(promptWrapper));
            };
            var myInterpreter = new Interpreter(code, initFunc);
            var stepsAllowed = 10000;
            while (myInterpreter.step() && stepsAllowed) {
                stepsAllowed--;
            }
            if (!stepsAllowed) {
                throw EvalError('Infinite loop.');
            }
        }

        document.getElementById('playButton').addEventListener('click', executeBlockCode);
    </script>
</body>
</html>
