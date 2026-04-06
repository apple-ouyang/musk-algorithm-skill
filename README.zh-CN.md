# Musk Algorithm Skill

这是一个围绕马斯克“五步工作法 / The Algorithm”构建的公开资料库和自研 Skill 仓库。

英文首页见：[README.md](./README.md)

## 安装

我已经实际验证过，下面这条简化安装命令可以直接跑通：

```bash
npx skills add apple-ouyang/musk-algorithm-skill -g -y
```

如果你想显式指定 skill 名，也可以用这条：

```bash
npx skills add apple-ouyang/musk-algorithm-skill -g -y --skill musk-5-step-algorithm
```

说明：

- 上面两条命令我都在隔离的临时 `HOME` 目录里实际跑过，安装成功。
- 我不建议把 `apple-ouyang/musk-algorithm-skill@musk-5-step-algorithm` 当成 README 主命令，因为 CLI 在这个仓库场景下仍然主要把它当作“指定 repo 来源”，而不是一个严格的 skill 选择器。

## 怎么上 leaderboard

`skills.sh` 的 leaderboard 会根据匿名安装遥测自动统计。只要用户运行类似下面这样的命令安装：

```bash
npx skills add apple-ouyang/musk-algorithm-skill
```

安装量就会进入统计。

## 仓库内容

- `sources/`：来源索引和抓取状态
- `corpus/primary/`：一手或近一手来源的 Markdown 化材料
- `corpus/secondary/`：二手材料、案例补充和出处说明
- `skills/musk-5-step-algorithm/`：Skill 本体
- `docs/`：研究 memo、skill review、验证说明

## 推荐用法

这个 skill 适合用来处理：

- 流程过度复杂
- 需求来源不清
- 想删步骤但不知道从哪下手
- 想自动化但怀疑时机不对
- 想用马斯克五步法审查产品、运营、招聘、交付、制造或工程流程
