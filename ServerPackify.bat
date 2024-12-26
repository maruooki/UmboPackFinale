@echo off

set "mod_folder=.\mods"
set "config_folder=.\config"
pushd .

rem change to directory

cd /d "%mod_folder%" || (
    echo Folder not found: %mod_folder%
    echo Put this in your base server instance folder or it will not work!
    exit /b
)

echo Mods folder found, cleaning your folder of Client-Side Mods :D

rem remove mods script below

del /q "antighost-1.12-forge14.21.1.2387-1.1.1.jar"
del /q "beautifiedchatclient_1.12.2-1.0.jar"
del /q "BetterAdvancements-1.12.2-0.1.0.77.jar"
del /q "betterbiomeblend-1.12.2-1.1.7-forge.jar"
del /q "betterchat-1.4.jar"
del /q "bpopener-1.0.1.jar"
del /q "ChatFlow-1.4-7.jar"
del /q "cherishedworlds-1.12.2-1.0.1.jar"
del /q "ChunkAnimator-1.12.2-1.2.1.jar"
del /q "ClientTweaks_1.12.2-3.1.11.jar"
del /q "Controlling-3.0.12.4.jar"
del /q "CTM-MC1.12.2-1.0.2.31.jar"
del /q "DefaultOptions_1.12.2-9.2.8.jar"
del /q "FpsReducer-mc1.12.2-1.20.jar"
del /q "Highlighter-1.12.2-forge-1.1.7.jar"
del /q "keywizard-1.12.2-1.7.3.jar"
del /q "loadmyresources_forge_1.0.4_MC_1.12-1.12.2.jar"
del /q "mousetweaks-1.12.2-3.1.5.jar"
del /q "Neat 1.4-17.jar"
del /q "particleculling-1.12.2-v1.4.3.jar"
del /q "potiondescriptions-1.12.2-1.2.4.jar"
del /q "ProportionalDestructionParticles-1.12.2-1.2.4.jar"
del /q "ReAuth-1.12-Forge-4.0.7.jar"
del /q "RLFoliage-MC1.12-2.4.2.jar"
del /q "Shatter-1.12.2-7.0.1.jar"
del /q "SmoothFont-mc1.12.2-2.1.4.jar"
del /q "Sound-Physics-1.12.2-1.1.5.jar"
del /q "OptiFine_1.12.2_HD_U_G6_pre1.jar"
del /q "ThaumicJEI-1.12.2-1.7.0.jar"
del /q "Tips-1.12.2-1.0.9.jar"
del /q "JustEnoughEffects-1.0.3.jar"
del /q "soundreloader-1.2-1.12.2.jar"
del /q "tinkersjei-1.2.jar"
del /q "LevviatasEnhancedSubtitles-2.3.0.jar"
del /q "rawinput-1.7.0.jar"
del /q "rebind-1.12.2-2.7.5-0.jar"
del /q "ThaumicInventoryScanning_1.12.2-2.0.10.jar"
del /q "Modpack Configuration Checker-1.12.2-v1.9.5.jar"
del /q "CustomMainMenu-MC1.12.2-2.0.9.1.jar"

rem go back to base directory to load config folder correctly
popd .
cd /d "%config_folder%" || (
    echo Folder not found: %config_folder%
    echo Put this in your base server instance folder or it will not work!
    exit /b
)

echo Config folder found, cleaning config of crashes :D

rem remove musicTriggers server crashing files script below

del /q "MusicTriggers\channels.toml"
del /q "MusicTriggers\debug.toml"
rmdir /S /Q "MusicTriggers\example"
rmdir /S /Q "MusicTriggers\songs"
rmdir /S /Q "MusicTriggers\umbopack_bosses"
rmdir /S /Q "MusicTriggers\umbopack_dimension_biome"


echo All done! Script by Maruooki
echo If broken, please make an issue on the GitHub
echo https://github.com/maruooki/UmboPackFinale/issues

PAUSE