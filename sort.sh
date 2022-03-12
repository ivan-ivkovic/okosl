cd downloads
for file in *; do
    if [[ "$file" == *"_"* ]]; then
        for (( i=0; i<${#file}; i++ )); do
            character="${file:$i:1}"
            if [ $character == "_" ]; then
                course_name=${file:0:$i}
                if ! [ -d "../$ime_predmeta" ]; then
                    mkdir ../$ime_predmeta
                    echo "DA"
                fi
            fi
        done
    fi
done