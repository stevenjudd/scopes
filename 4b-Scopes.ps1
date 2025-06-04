# Example: Passing a variable into a ForEach-Object -Parallel script block using 'using:'

# Define a variable in the parent scope
$greeting = "Hello, my fellow programmer"

# Create an array to process in parallel
$names = @("Kevin", "Alan", "Lora")

# Example 1: Without -Parallel (runs sequentially in the current process)
$names | ForEach-Object {
    # Directly access the parent variable
    "$greeting, $_! (sequential)"
}

# Example 2: With -Parallel (runs in parallel without 'using:', which will not work)
$names | ForEach-Object -Parallel {
  Start-Sleep -Seconds (Get-Random -Minimum 0 -Maximum 5) # Simulate some work
    # Access the parent variable using 'using:'
    "$greeting, $_! (parallel)"
}

# Example 3: With -Parallel (runs in parallel, requires 'using:' to access parent variables)
$names | ForEach-Object -Parallel {
  Start-Sleep -Seconds (Get-Random -Minimum 0 -Maximum 5) # Simulate some work
  # Access the parent variable using 'using:'
  "$using:greeting, $_! (parallel with using scope modifier)"
}