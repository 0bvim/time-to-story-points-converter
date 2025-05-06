# 🇧🇷 TimeToStory

[en-US version](https://github.com/0bvim/time-to-story-points-converter/blob/main/README.md)

**TimeToStory** é uma ferramenta de linha de comando em Elixir que recebe um valor de tempo no formato `HH.MM` e converte **somente os minutos** para uma escala proporcional de 100 unidades (mantendo a parte das **horas** intacta).

Ideal para timelines visuais, quadros de tarefas ou mapeamento de histórias onde 1 hora é igual a 100 unidades em vez de 60 minutos.

---

## 📦 Funcionalidades

* Aceita tempo no formato `HH.MM`
* Valida que os minutos estejam entre `00` e `59`
* Converte os minutos para escala de 100
* Mantém as horas como estão
* Retorna o valor final como float com 2 casas decimais
* Pode ser compilado como binário (`escript`)

---

## 📥 Instalação

Certifique-se de ter o Elixir instalado. Depois:

```bash
git clone https://github.com/seu-usuario/time_to_story
cd time_to_story
mix escript.build
```

---

## 🚀 Uso

```bash
./ttsc HH.MM
```

### Exemplos

```bash
./ttsc 1.40
# => Valor proporcional (em relação a 100): 1.67

./ttsc 1.59
# => Valor proporcional (em relação a 100): 1.98

./ttsc 0.15
# => Valor proporcional (em relação a 100): 0.25
```

---

## ⚠️ Regras de entrada

* Use ponto (`.`) como separador: `HH.MM`
* Minutos devem estar entre `00` e `59`
* Entradas inválidas como `2.75` exibirão erro

---

## 🧪 Desenvolvimento

Executar em IEx:

```elixir
TimeToStory.main(["1.40"])
```

---

## 📄 Licença

MIT ©

```

---
