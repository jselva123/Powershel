While ($userinput -ne "quit") {
      # Gather user input
      $userinput = Read-Host "Say 'yes' if you like scripting (enter 'quit' to stop the loop)"

      #Evaluate user input
      If($userinput -eq "yes") {echo "I also love scripting! that's cool" }
      elseif($userinput -eq "no") {echo "i really hate scripting too" }

}
$userinput = $null

