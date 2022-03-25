if [ -f "variables.tf" ]; then
    cat > hi.out <<EOF
asdasdasd
EOF
else
    touch variables.tf
cat > hi.out <<EOF
${{secrets.VARIABLES}}
EOF
fi

