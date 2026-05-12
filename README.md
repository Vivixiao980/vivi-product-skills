# Vivi Product Skills

把产品顾问融入你的 Vibe Coding 工作流。

这个仓库包含两个面向独立开发者、小团队和产品创作者的 AI Skill：

- `vivi-productthink`：把模糊 idea 问清楚，整理成产品成型卡。
- `vivi-biz-review`：对项目、产品、官网或 GitHub 仓库做一次商业评估。

它们的关系很简单：

```text
一句话 idea
  ↓
vivi-productthink
  ↓
产品成型卡
  ↓
vivi-biz-review
  ↓
商业判断 + 本周行动
```

你也可以直接使用 `vivi-biz-review`。它是主入口；当输入信息还不够清楚时，它会提醒你先补哪些关键上下文。

## 为什么做

Vibe Coding 让“做出来”变得越来越快，但产品判断不能被跳过。

很多产品不是死在技术上，而是死在一开始没想清楚：

- 用户到底是谁？
- 他现在怎么解决这个问题？
- 他为什么要换成你的方案？
- 这个方向有没有可能变成一门小生意？
- 现在应该继续开发，还是先验证？

这两个 Skill 的目标不是替你做决定，而是在你动手之前、做了一半的时候、准备继续投入之前，帮你把关键问题摆到桌面上。

## Skill 1: vivi-productthink

`vivi-productthink` 负责问清楚。

适合这些情况：

- 你只有一句话 idea。
- 你有一堆散乱想法，还没形成产品方向。
- 你想在商业评估前先整理上下文。
- 你希望把 README、项目说明或产品想法整理成产品成型卡。

示例输入：

```text
我想做一个 AI 工具，帮知识博主把长文拆成小红书笔记。用 vivi-productthink 帮我问清楚。
```

最终输出：

```text
产品一句话定义：
目标用户：
核心场景：
现有替代方案：
用户已付出成本：
最大未验证假设：
最小验证实验：
还缺什么：
交给 vivi-biz-review 的输入：
```

## Skill 2: vivi-biz-review

`vivi-biz-review` 负责下判断。

适合这些情况：

- 你有一个 GitHub 项目，想知道商业上值不值得继续做。
- 你有一个产品官网，想做商业评估。
- 你有一个 README / 产品文档，想看定位、竞品、市场和商业模式。
- 你有一张产品成型卡，想进一步判断是否值得投入。

示例输入：

```text
帮我用 vivi-biz-review review 一下这个 GitHub 项目，看看商业上值不值得继续做。
```

最终输出：

```text
是否值得继续：
证据等级：
一句话理由：

1. Positioning 定位
2. Jobs-to-be-Done
3. Competitor Scan 竞品扫描
4. 市场规模粗估
5. 商业模式建议
6. 缺什么
7. 一句话建议
```

它不会输出虚假的数字评分，而是给出行动导向的中文判断：

```text
值得做，直接推进
值得做，但先想清楚再做
先验证，再决定做不做
不值得继续投入
```

## 安装

### Claude Code

```bash
git clone https://github.com/Vivixiao980/vivi-product-skills.git
cp -R vivi-product-skills/skills/vivi-productthink ~/.claude/skills/
cp -R vivi-product-skills/skills/vivi-biz-review ~/.claude/skills/
```

然后重启 Claude Code。

### 一键安装

```bash
curl -fsSL https://raw.githubusercontent.com/Vivixiao980/vivi-product-skills/main/install.sh | bash
```

## 示例

- [从 idea 到产品成型卡](examples/productthink-example.md)
- [Product Judge 商业评估](examples/biz-review-productjudge.md)
- [xhs-cover-skill 商业评估](examples/biz-review-xhscover.md)
- [JD 测谎仪商业评估](examples/biz-review-jd-lie-detector.md)

## 文件结构

```text
vivi-product-skills/
├── README.md
├── install.sh
├── skills/
│   ├── vivi-productthink/
│   │   └── SKILL.md
│   └── vivi-biz-review/
│       ├── SKILL.md
│       └── template.md
└── examples/
    ├── productthink-example.md
    ├── biz-review-productjudge.md
    ├── biz-review-xhscover.md
    └── biz-review-jd-lie-detector.md
```

## License

MIT
