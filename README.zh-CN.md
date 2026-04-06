# Musk Algorithm Skill

这是一个围绕马斯克“五步工作法 / The Algorithm”构建的公开资料库和自研 Skill 仓库。

英文首页见：[README.md](./README.md)

## 安装

```bash
npx skills add apple-ouyang/musk-algorithm-skill
```

## 这个仓库包含什么

这个仓库的范围是明确的：

- **一手和二手公开来源**，专注于五步工作法本身
- **Markdown 化的规范副本**，方便阅读和引用
- **可复用的 agent skill**，可以直接用来审查你自己的流程、产品或工程决策
- **轻量级验证脚本**，用于维护 skill 质量

这不是一个试图收录所有马斯克相关文章的仓库。焦点很窄：五步法、它的背景、以及如何实际应用它。

## 仓库结构

- `sources/` — 来源索引和抓取状态
- `corpus/primary/` — 一手或近一手来源的 Markdown 化材料
- `corpus/secondary/` — 二手材料、案例补充和出处说明
- `skills/musk-5-step-algorithm/` — Skill 本体
- `docs/` — 研究 memo、skill review、验证说明

## 当前参考文章

下面每篇文章都有明确的收录理由。这些是最能支撑五步法及其真实应用场景的来源。

- [Starbase Tour and Interview with Elon Musk](https://everydayastronaut.com/starbase-tour-and-interview-with-elon-musk/) — 当前最关键的一手公开来源，直接给出了五步法的顺序和简明解释。
- [Elon Musk | Britannica Money](https://www.britannica.com/money/Elon-Musk) — 用来补足 PayPal、SpaceX、Tesla、Neuralink、X 等公司的时间线背景。
- [xAI | Britannica Money](https://www.britannica.com/money/xAI) — 用来补足 xAI 的位置，帮助解释这套方法后来为什么常被投射到新公司上。
- [TechCrunch 关于自动化失误的报道](https://techcrunch.com/2018/04/13/elon-musk-admits-excessive-automation-at-tesla-was-a-mistake/) — 最适合支撑“过度自动化是错误”“Humans are underrated”这类核心原话。
- [Tesla 2018 Q1 更新信 / 财报讨论镜像](https://platform.aeronaut.ai/docs/tsla/letters/2018-q1-update-letter) — 最清楚地支撑 FlufferBot 案例，以及“我们到底需不需要这个部件”这条决策链。
- [CNBC / Gayle King 访谈报道](https://www.cnbc.com/2018/11/02/elon-musk-tesla-nearly-died-model-3-production-hell-was-excruciating.html) — 适合说明生产地狱、复杂传送带网络，以及“删基础设施而不是继续调参”的案例。
- [An Evening with Elon Musk transcript (Henry Ford)](https://www.thehenryford.org/docs/default-source/default-document-library/default-document-library/transcript_musk_full-length.pdf/?sfvrsn=0) — 主要用于补足第一性原理层的原话背景，而不是直接当五步法原文来源。

## 推荐用法

这个 skill 适合用来处理：

- 流程过度复杂
- 需求来源不清
- 想删步骤但不知道从哪下手
- 想自动化但怀疑时机不对
- 想用马斯克五步法审查产品、运营、招聘、交付、制造或工程流程
