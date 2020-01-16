%% Templates to generate code generation models
ec_models = {
    'code_generation_system',
    'multi_rate',
    'export_function',
    };
%% Display them
for model = ec_models'
    disp(model)
end
%%
P = mfilename('fullpath');
% Close all models
bdclose('all');
for idx = 1:length(ec_models)
    model = ec_models{idx};
    hdl = Simulink.createFromTemplate(model);
    save_system(hdl, sprintf('local_%s_model', model));
    slbuild(hdl);
    configSet = getActiveConfigSet(bdroot);
    switchTarget(configSet, 'ert_shrlib.tlc', []);
    slbuild(hdl);
    close_system(hdl);
end

exit(0);