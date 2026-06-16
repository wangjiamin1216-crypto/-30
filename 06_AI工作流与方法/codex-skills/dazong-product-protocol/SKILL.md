---
name: dazong-product-protocol
description: Use this skill when working in `/Users/manman/Desktop/大宗3.0` on product protocols, state machines, field contracts, seller/buyer/platform workbench docs, low-fidelity prototype explanations, review delivery materials, or consistency checks. It preserves the user's preferred workflow: start from role and business rules, reuse existing protocols, keep MVP boundaries tight, avoid expanding into finance/contracts/logistics/risk/BI unless explicitly requested, and make small direct edits with a clear change report.
---

# 大宗 3.0 产品协议协作

## When To Use

Use this skill for tasks involving:

- 页面协议、结构协议、字段协议、状态机协议、评审交付材料。
- 卖家指标经营工作台、指标商品、草稿箱、全部商品管理、平台审核端、买家指标交易相关协议。
- 低保真原型说明、页面文字线框、协议一致性复核。
- 用户要求“直接修改”“复核一遍”“不要扩展”“保持一致”“评审前检查”。

Do not use this skill for unrelated coding, visual-only image generation, general translation, or simple one-off answers.

## Operating Principles

Always follow the project worldview:

- 平台交易核心是指标，不是传统商品展示。
- 商品只是指标的载体。
- 先做角色、关系、规则、状态，再做页面和表现。
- 页面服务业务对象，不随意创造新的生命周期。
- 输出面向实施、评审、研发和 UI 协作。

Default posture:

- Prefer the smallest useful patch over a full rewrite.
- Reuse existing state machines and field protocols before adding anything.
- Keep support pages as support pages, not new core modules.
- When the user provides a boundary, preserve it literally unless newer files contradict it.

## File Intake Order

In `/Users/manman/Desktop/大宗3.0`, before creating, moving, or editing files:

1. Read `AGENTS.md`.
2. Read `README.md`.
3. Use `rg --files` to locate real paths instead of assuming root-level files.
4. Open only the task-relevant protocols.

Common locations:

- Page and seller-side protocols: `02_产品方案与协议/卖家侧/`
- State machines and shared rules: `02_产品方案与协议/状态机与通用/`
- Platform backend protocols: `02_产品方案与协议/平台后台/`
- AI workflow and reusable methods: `06_AI工作流与方法/`
- Temporary/system files: `99_临时与系统文件/`

`AGENTS.md` is protected. Never move, rename, archive, merge, overwrite, or delete it.

## Boundary Rules

When working on seller indicator workbench MVP, preserve these boundaries unless the user explicitly changes them:

- State machine object is `指标商品`, not seller workbench.
- Main states are only: `草稿`、`待审核`、`审核驳回`、`已上架`、`已下架`.
- 库存 is an operating field and risk label, not an independent inventory state machine.
- 沟通/协商 only keeps entry,待响应提醒, and IM access unless the task is specifically about negotiation state machine.
- 草稿箱 only承接草稿状态.
- 全部商品管理页承接五个指标商品主状态, but must not become a full backend.
- 平台审核端 only participates through audit pass, reject, logs, and forced delisting within MVP.
- Do not expand into full finance, contract, fulfillment, logistics, risk, BI, research institute, or full transaction backend.

## Protocol Writing Pattern

For a new or revised protocol, structure from stable business logic outward:

1. Object and scope: define the actual lifecycle object and what the document does not cover.
2. Roles and relationship: who uses it, who operates it, who sees it.
3. State or field basis: cite existing state machine and field protocol.
4. Page or module purpose: explain what problem the page/module solves.
5. Allowed information and behavior: list only what is in scope.
6. Forbidden behavior: explicitly prevent out-of-scope interpretation.
7. Exceptions and audit: cover invalid states, permission, logs, and rollback where relevant.
8. MVP boundary: close with what is not being done now.

Use Markdown. Do not output code for product protocol tasks unless the user explicitly asks for implementation.

## Consistency Review Checklist

When asked to review files before评审 or development, check:

- Do all files use the same lifecycle object?
- Are the five indicator product states consistent?
- Are allowed buttons consistent with state rules?
- Are forbidden operations stated where UI and backend need them?
- Are fields aligned with the field protocol, especially required vs optional fields?
- Are support pages clearly not redefining state machines?
- Are inventory warning and communication reminders treated as fields/reminders, not separate state machines?
- Are delete, withdraw, reject, forced delist, and resubmit rules consistent?
- Are status logs and audit logs required for state changes?
- Does each page have enough information for UI layout and frontend behavior?
- Does the review delivery have enough rules for backend API and validation design?
- Are MVP exclusions repeated clearly enough to prevent scope creep?

If inconsistencies are found, make the smallest direct edit, then report:

- What file changed.
- What the old meaning was.
- What it was changed to.
- Why it matters for development or UI design.

## Low-Fidelity And UI Handoff

When converting protocols to low-fidelity structure:

- Do not invent new business modules.
- Start with information hierarchy: P0, P1, P2, weak display.
- Map each module to fields and state-based behavior.
- Explain button changes by state.
- Use text wireframes before visual design.
- For visual work, follow the provided reference style, but keep the business logic from the protocols.

For seller indicator workbench, common modules include:

- 顶部经营概览区。
- 主经营区。
- 右侧待办/建议区。
- 底部辅助能力区。
- 指标商品经营模块。
- 库存/吨位维护模块。
- 待响应沟通消息模块。
- 企业沟通入口模块。
- 新手空状态引导模块 when no product or operating data exists.

## Final Response Style

For direct edits, answer in Chinese with:

- A short conclusion first.
- A concise list of changed files and changed meanings.
- A development/UI readiness judgment when relevant.
- Remaining review questions only if they are truly needed.

Avoid long theoretical explanations. The user prefers practical, review-ready output and direct file changes.
