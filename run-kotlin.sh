#!/bin/bash
# Build and run the Kotlin Hello World program

echo "Compiling Kotlin program..."
kotlinc HelloWorld.kt -include-runtime -d HelloWorld.jar

if [ $? -eq 0 ]; then
    echo "Compilation successful. Running the program:"
    echo "----------------------------------------"
    java -jar HelloWorld.jar
else
    echo "Compilation failed!"
    exit 1
fi