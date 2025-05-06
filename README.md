# ⏱ TimeToStory

[pt-BR version](https://github.com/0bvim/time-to-story-points-converter/blob/main/README.pt-BR.md)

**TimeToStory** is a small CLI tool written in Elixir that takes a time value in `HH.MM` format and converts the **minutes** to a proportional value on a 100-minute scale (keeping the **hour** value unchanged).

This is especially useful for scenarios like visual timelines, task boards, or sprint story mapping, where 1 hour is divided into 100 units instead of 60.

---

## 📦 Features

- Accepts time input in `HH.MM` format.
- Validates that minutes are in the `00–59` range.
- Converts minutes to a base-100 proportional scale.
- Keeps hour value unchanged.
- Returns the final result as a float with 2 decimal places.
- Can be compiled into a binary (`escript`).

---

## 📥 Installation

Make sure you have Elixir installed. Then:

```bash
git clone https://github.com/your-user/time_to_story
cd time_to_story
mix escript.build
````

This will create a binary named `ttsc`.

---

## 🚀 Usage

```bash
./ttsc HH.MM
```

### Examples

```bash
./ttsc 1.40
# => Proportional value (with respect to 100): 1.67

./ttsc 1.59
# => Proportional value (with respect to 100): 1.98

./ttsc 0.15
# => Proportional value (with respect to 100): 0.25
```

---

## ⚠️ Input Format Rules

* Use dot (`.`) as separator: `HH.MM`
* Minutes must be between `00` and `59`
* Invalid input like `2.75` will show an error.

---

## 🧪 Development

Run in IEx:

```elixir
TimeToStory.main(["1.40"])
```

---

## 📄 License

MIT © You

---
