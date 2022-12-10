function installRVC3
% Install RVC3 if it isn't installed
name = "RVC3";

installed = matlab.addons.installedAddons;
hasrvc3 = ismember(name,installed.Name);

if ~hasrvc3  
    display("Installing RVC3")

    % Install from the github release.
    outfilename = websave(tempdir+"rvc3.mltbx","https://github.com/jfmull/rvc3-split-toolbox/releases/download/0.9/RVC3.mltbx");
    matlab.addons.install(outfilename);
end

% Make sure it is enabled, too
rvc3enabled = matlab.addons.isAddonEnabled(name);

if ~rvc3enabled
    matlab.addons.enableAddon(name)
end

end