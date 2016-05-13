#!/bin/bash

forOne() {
  echo "第一种for循环"
  for i in 1 2 3 4 5 6
  do
    echo ${i}
  done
}

forTwo() {
  echo "第二种for循环"
  for ((count=1;count<6;count++))
  do
    echo ${count}
  done
}

whileCycle() {
  echo "while循环"
  FILE="/etc/passwd"
  while [ -f ${FILE} ]
  do
    echo "${FILE}文件存在"
    if [ 0 -eq 0 ];then
      break
    elif [ 0 -eq 0 ];then
      break
    else
      break
    fi
    continue
  done
}

untilCycle() {
  echo "until循环"
  until ! [ -f ${FILE} ]
  do
    echo "${FILE}文件存在"
    break
  done
}

forOneVariable="第一种for循环"
forTwoVariable="第二种for循环"
whileCycleVariable="while循环"
untilCycleVariable="until循环"
select i in ${forOneVariable} ${forTwoVariable} ${whileCycleVariable} ${untilCycleVariable} 
do
  case $i in
    ${forOneVariable})
    echo "开始${forOneVariable}执行"
    forOne
    ;;
    ${forTwoVariable})
    echo "开始${forTwoVariable}执行"
    forTwo
    ;;
    ${whileCycleVariable})
    echo "开始${whileCycleVariable}执行"
    whileCycle
    ;;
    ${untilCycleVariable})
    echo "开始${untilCycleVariable}执行"
    untilCycle
    ;;
    *)
    exit
    ;;
  esac
done

