#!/bin/bash

repos=(
  "https://github.com/outflanknl/NetshHelperBeacon.git"
  "https://github.com/outflanknl/Exploits.git"
  "https://github.com/outflanknl/PasswordDump2ELK.git"
  "https://github.com/outflanknl/DoH_c2_Trigger.git"
  "https://github.com/outflanknl/Invoke-ADLabDeployer.git"
  "https://github.com/outflanknl/Excel4-DCOM.git"
  "https://github.com/outflanknl/Invoke-Templator.git"
  "https://github.com/outflanknl/Recon-AD.git"
  "https://github.com/outflanknl/SharpHide.git"
  "https://github.com/outflanknl/Net-GPPPassword.git"
  "https://github.com/outflanknl/Zipper.git"
  "https://github.com/outflanknl/Scripts.git"
  "https://github.com/outflanknl/TamperETW.git"
  "https://github.com/outflanknl/Ps-Tools.git"
  "https://github.com/outflanknl/Dumpert.git"
  "https://github.com/outflanknl/external_c2.git"
  "https://github.com/outflanknl/PrintNightmare.git"
  "https://github.com/outflanknl/InlineWhispers.git"
  "https://github.com/outflanknl/Spray-AD.git"
  "https://github.com/outflanknl/RedFile.git"
  "https://github.com/outflanknl/Presentations.git"
  "https://github.com/outflanknl/CS-Situational-Awareness-BOF.git"
  "https://github.com/outflanknl/C2-Tool-Collection.git"
  "https://github.com/outflanknl/RedELK-workshop.git"
  "https://github.com/outflanknl/EvilClippy.git"
  "https://github.com/outflanknl/Training-MSOfficeOffensiveTradecraft.git"
  "https://github.com/outflanknl/RedELK.git"
  "https://github.com/outflanknl/unmanaged-dotnet-patch.git"
  "https://github.com/outflanknl/HelpColor.git"
)


total_repos=${#repos[@]}
current_repo=0

for repo in "${repos[@]}"; do
  current_repo=$((current_repo + 1))
  echo "Cloning repository $current_repo of $total_repos: $repo"
  git clone "$repo" 
  rm -rf "$(basename "$repo" .git)/.git"
done

