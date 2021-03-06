##############################
# Functions
##############################

## 切換到專案目錄
pcd() {
    cd ~/Projects/$1
}

## 切換到 KKBOX 專案目錄
kcd() {
    cd ~/Projects/kkbox/$1
}

## 切換到實驗用目錄
ecd() {
    cd ~/Projects/experiment/$1
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

## 遞迴刪除資料夾
rrmd() {
    find . -type d -name "$1" | xargs rm -rf
}

## 遞迴刪除檔案
rrmf() {
    find . -type f -name "$1" | xargs rm -f
}
