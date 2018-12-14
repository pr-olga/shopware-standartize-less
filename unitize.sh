#!/bin/sh

lessFile=${1:-*}

echo "Do you want to make less cleaner and save your time (yes/no) ?"
read answer

if [ $answer = yes ]
    then
        sed -i -E "s/^\s+top:(\s)([-.0-9]+)px;/.unitize\(top, \2\);/g" ${lessFile}
        sed -i -E "s/^\s+right:(\s)([-.0-9]+)px;/.unitize\(right, \2\);/g" ${lessFile}
        sed -i -E "s/^\s+bottom:(\s)([-.0-9]+)px;/.unitize\(bottom, \2\);/g" ${lessFile}
        sed -i -E "s/^\s+left:(\s)([-.0-9]+)px;/.unitize\(left, \2\);/g" ${lessFile}

        sed -i -E "s/^\s+height:(\s)([.0-9]+)px;/.unitize-height\(\2\);/g" ${lessFile}
        sed -i -E "s/^\s+min-height:(\s)([.0-9]+)px;/.unitize-min-height\(\2\);/g" ${lessFile}
        sed -i -E "s/^\s+max-height:(\s)([.0-9]+)px;/.unitize-max-height\(\2\);/g" ${lessFile}

        sed -i -E "s/^\s+width:(\s)([.0-9]+)px;/.unitize-width\(\2\);/g" ${lessFile}
        sed -i -E "s/^\s+min-width:(\s)([.0-9]+)px;/.unitize-min-width\(\2\);/g" ${lessFile}
        sed -i -E "s/^\s+max-width:(\s)([.0-9]+)px;/.unitize-max-width\(\2\);/g" ${lessFile}

        sed -i -E "s/line-height:(\s)([.0-9]+)px;/.unitize\(line-height, \2\);/g" ${lessFile}

        sed -i -E "s/font-size:(\s)([.0-9]+)px;/.unitize\(font-size, \2\);/g" ${lessFile}

        echo "Do you want to unitize margins (yes/no) ?"
        read answer
            if [ $answer = yes ]
                then
                    sed -i -E "s/margin-top:(\s)([-.0-9]+)px;/.unitize\(margin-top, \2\);/g" ${lessFile}
                    sed -i -E "s/margin-right:(\s)([-.0-9]+)px;/.unitize\(margin-right, \2\);/g" ${lessFile}
                    sed -i -E "s/margin-bottom:(\s)([-.0-9]+)px;/.unitize\(margin-bottom, \2\);/g" ${lessFile}
                    sed -i -E "s/margin-left:(\s)([-.0-9]+)px;/.unitize\(margin-left, \2\);/g" ${lessFile}
            fi
        echo "Do you want to unitize paddings (yes/no) ?"
        read answer
            if [ $answer = yes ]
            then
                sed -i -E "s/padding-top:(\s)([-.0-9]+)px;/.unitize\(padding-top, \2\);/g" ${lessFile}
                sed -i -E "s/padding-right:(\s)([-.0-9]+)px;/.unitize\(padding-right, \2\);/g" ${lessFile}
                sed -i -E "s/padding-bottom:(\s)([-.0-9]+)px;/.unitize\(padding-bottom, \2\);/g" ${lessFile}
                sed -i -E "s/padding-left:(\s)([-.0-9]+)px;/.unitize\(padding-left, \2\);/g" ${lessFile}
            fi
fi
echo "The file '$lessFile' is clean now"
echo "Do you want to remove the shell script (yes/no) ?"
    read answer
        if [ $answer = yes ]
            then  rm unitize.sh -f
        fi