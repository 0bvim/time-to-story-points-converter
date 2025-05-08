# 🇧🇷 TimeToStory

[en-US version](https://github.com/0bvim/time-to-story-points-converter/blob/main/README.md)

**TimeToStory** é uma ferramenta de linha de comando em Elixir que recebe um valor de tempo no formato `MM` e converte **os minutos** para uma escala proporcional de 100 unidades.

Ideal para timelines visuais, quadros de tarefas ou mapeamento de histórias onde 1 hora é igual a 100 unidades em vez de 60 minutos.

---

## 📦 Funcionalidades

* Aceita tempo no formato `MM`
* Valida que os minutos estejam entre `00` e `59`
* Converte os minutos para escala de 100
* Retorna o valor final como float arredondado com 2 casas decimais
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
./tp MM
```

### Exemplos

```bash
./tp 40
# => Valor proporcional (em relação a 100): 67

./tp 59
# => Valor proporcional (em relação a 100): 98

./tp 15
# => Valor proporcional (em relação a 100): 25
```

---

## ⚠️ Regras de entrada

* Minutos devem estar entre `00` e `59`
* Entradas inválidas como `2.75` exibirão erro

---

## 🧪 Desenvolvimento

Executar em IEx:

```elixir
TimeParser.main(["40"])
```

---

## 📄 Licença

MIT ©
