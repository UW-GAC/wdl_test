version 1.0

workflow HelloWorld {
  call WriteGreeting
}

task WriteGreeting {
  command{
    echo "Hello"
  }

  output{
    File output_greeting = stdout()
  }

  runtime{
    docker: "uwgac/primed-imputation:0.1.0"
  }
}
