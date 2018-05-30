##############################
# Functions
##############################

## 切換到 KKBOX 專案目錄
kcd() {
    cd ~/Projects/kkbox/$1
}

## 執行多次指令
run() {
    number=$1
    shift
    for i in `seq $number`; do
      $@
    done
}

## 強推 Git Branch
fo() {
	branch_name=$(git symbolic-ref -q HEAD)
	branch_name=${branch_name##refs/heads/}
	branch_name=${branch_name:-HEAD}
	git push origin +$branch_name
}