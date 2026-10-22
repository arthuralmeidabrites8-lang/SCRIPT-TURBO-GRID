-- ============================================================
-- SUBMUNDO 2.8 | FULL VERMELHO + ABA IDIOMA ✅
-- ============================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local CONFIG = {
    LIMITE_SEGURANCA = 350,
    VELOCIDADE_MIN = 10,
    VELOCIDADE_MAX = 1000,
    TECLA_PADRAO = "K",
    NOME_GUI = "Submundo28",
    LARGURA_JANELA = 340,
    ALTURA_JANELA = 460,
    ALTURA_JANELA_EXPANDIDA = 570,
    MARGEM_TELA = 12
}

-- 📋 TRADUÇÕES
local Idiomas = {
    pt = {
        TITULO = "SUBMUNDO 2.8 • TURBO GRID",
        CONTROLES = "CONTROLES",
        ATALHO = "ATALHO",
        AJUDA = "AJUDA",
        IDIOMA = "IDIOMA",
        CRIADOR = "CRIADOR",
        VELOCIDADE = "VELOCIDADE",
        LIMITE = "Limite de segurança: ",
        MENOS = "− 10",
        MAIS = "+ 10",
        LIGAR = "ATIVAR",
        PARAR = "PARAR",
        TECLA_TITULO = "TECLA DE ATALHO",
        TECLA_TEXTO = "Digite uma tecla para mostrar/esconder a janela",
        SALVAR = "SALVAR",
        SALVO = "SALVO: ",
        TECLA_INVALIDA = "TECLA INVÁLIDA",
        AJUDA_TEXTO = [[ 📖   COMO USAR
 1️⃣ ENTRE NO CARRO — Sente no banco antes de ativar.

 2️⃣ VELOCIDADE
 • Digite o valor ou use −10 / +10
 • Mín: 10  |  Máx: 1000
 • Mantenha o acelerador pressionado

 3️⃣ ATIVAR
 • O carro mantém a velocidade sozinho
 • Ajuste o valor a qualquer momento

 4️⃣ ⚠️ LIMITE — 350
 • Acima → painel vermelho + caveiras
 • Risco de expulsão ou banimento
 • Reduza para voltar ao normal

 5️⃣ ⛔ PARADA AUTOMÁTICA
 • Soltar acelerador → PARA
 • Frear → PARA
 • Sair do carro → PARA
 • Botão PARAR → PARA

 ⚠️ Use com moderação! O jogo detecta velocidades anormais.
]],
        IDIOMA_TITULO = "🌐 IDIOMA",
        IDIOMA_TEXTO = "Escolha o idioma da interface:",
        IDIOMA_PT = "Português",
        IDIOMA_EN = "English",
        IDIOMA_ES = "Español",
        IDIOMA_ATUAL = "Idioma atual: ",
        SOBRE_TITULO = "💀 SUBMUNDO 2.8",
        SOBRE_SUB = "Desenvolvido para Turbo Grid",
        VERSAO = "Versão: 2.8 • Estável",
        AVISO_PERIGO = "⚠️ PERIGO — ACIMA DE ",
        AVISO_FIM = "!",
        AVISO_REDUZA = "Risco de remoção ou banimento! Reduza agora.",
        AVISO_RESPONSAVEL = "Use com responsabilidade.\nNão me responsabilizo por banimentos.",
        ENTRAR_CARRO = "Entre no carro primeiro!",
        MOSTRAR = "MOSTRAR"
    },
    en = {
        TITULO = "SUBMUNDO 2.8 • TURBO GRID",
        CONTROLES = "CONTROLS",
        ATALHO = "HOTKEY",
        AJUDA = "HELP",
        IDIOMA = "LANGUAGE",
        CRIADOR = "CREATOR",
        VELOCIDADE = "SPEED",
        LIMITE = "Safety limit: ",
        MENOS = "− 10",
        MAIS = "+ 10",
        LIGAR = "ENABLE",
        PARAR = "STOP",
        TECLA_TITULO = "HOTKEY",
        TECLA_TEXTO = "Press a key to toggle window",
        SALVAR = "SAVE",
        SALVO = "SAVED: ",
        TECLA_INVALIDA = "INVALID KEY",
        AJUDA_TEXTO = [[ 📖   HOW TO USE
 1️⃣ GET IN THE CAR — Sit in driver seat before enabling.

 2️⃣ SPEED
 • Type value or use −10 / +10
 • Min: 10  |  Max: 1000
 • Hold accelerator down

 3️⃣ ENABLE
 • Car holds speed automatically
 • Adjust value anytime

 4️⃣ ⚠️ LIMIT — 350
 • Above → RED panel + skulls
 • Risk of kick or ban
 • Lower to return to normal

 5️⃣ ⛔ AUTO STOP
 • Release accelerator → STOPS
 • Brake → STOPS
 • Leave vehicle → STOPS
 • Click STOP → STOPS

 ⚠️ Use responsibly! Game detects abnormal speeds.
]],
        IDIOMA_TITULO = "🌐 LANGUAGE",
        IDIOMA_TEXTO = "Choose your interface language:",
        IDIOMA_PT = "Portuguese",
        IDIOMA_EN = "English",
        IDIOMA_ES = "Spanish",
        IDIOMA_ATUAL = "Current language: ",
        SOBRE_TITULO = "💀 SUBMUNDO 2.8",
        SOBRE_SUB = "Built for Turbo Grid",
        VERSAO = "Version: 2.8 • Stable",
        AVISO_PERIGO = "⚠️ DANGER — OVER ",
        AVISO_FIM = "!",
        AVISO_REDUZA = "Risk of removal or ban! Lower it now.",
        AVISO_RESPONSAVEL = "Use responsibly.\nNot responsible for bans.",
        ENTRAR_CARRO = "Get in a car first!",
        MOSTRAR = "SHOW"
    },
    es = {
        TITULO = "SUBMUNDO 2.8 • TURBO GRID",
        CONTROLES = "CONTROLES",
        ATALHO = "TECLA",
        AJUDA = "AYUDA",
        IDIOMA = "IDIOMA",
        CRIADOR = "CREADOR",
        VELOCIDADE = "VELOCIDAD",
        LIMITE = "Límite de seguridad: ",
        MENOS = "− 10",
        MAIS = "+ 10",
        LIGAR = "ACTIVAR",
        PARAR = "DETENER",
        TECLA_TITULO = "TECLA DE ACCESO",
        TECLA_TEXTO = "Pulsa una tecla para mostrar/ocultar",
        SALVAR = "GUARDAR",
        SALVO = "GUARDADO: ",
        TECLA_INVALIDA = "TECLA INVÁLIDA",
        AJUDA_TEXTO = [[ 📖   CÓMO USAR
 1️⃣ SUBE AL COCHE — Entra antes de activar.

 2️⃣ VELOCIDAD
 • Escribe valor o usa −10 / +10
 • Mín: 10  |  Máx: 1000
 • Mantén presionado el acelerador

 3️⃣ ACTIVAR
 • El coche mantiene velocidad solo
 • Cambia el valor cuando quieras

 4️⃣ ⚠️ LÍMITE — 350
 • Superarlo → panel ROJO + calaveras
 • Riesgo de expulsión o baneo
 • Baja para volver a la normalidad

 5️⃣ ⛔ PARADA AUTOMÁTICA
 • Soltar acelerador → PARA
 • Frenar → PARA
 • Bajar del coche → PARA
 • Botón DETENER → PARA

 ⚠️ Úsalo con responsabilidad! El juego detecta velocidades anormales.
]],
        IDIOMA_TITULO = "🌐 IDIOMA",
        IDIOMA_TEXTO = "Elige tu idioma de interfaz:",
        IDIOMA_PT = "Portugués",
        IDIOMA_EN = "Inglés",
        IDIOMA_ES = "Español",
        IDIOMA_ATUAL = "Idioma actual: ",
        SOBRE_TITULO = "💀 SUBMUNDO 2.8",
        SOBRE_SUB = "Creado para Turbo Grid",
        VERSAO = "Versión: 2.8 • Estable",
        AVISO_PERIGO = "⚠️ PELIGRO — SOBRE ",
        AVISO_FIM = "!",
        AVISO_REDUZA = "¡Riesgo de expulsión o baneo! Bájalo ahora.",
        AVISO_RESPONSAVEL = "Usa con responsabilidad.\nNo me hago responsable de baneos.",
        ENTRAR_CARRO = "¡Sube a un coche primero!",
        MOSTRAR = "MOSTRAR"
    }
}

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then return end
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

pcall(function()
    local antigo = PlayerGui:FindFirstChild(CONFIG.NOME_GUI)
    if antigo then antigo:Destroy() end
end)

local Estado = {
    velocidadeAtual = 350,
    sistemaAtivo = false,
    assentoVeiculo = nil,
    minimizado = false,
    encerrado = false,
    arrastando = false,
    inicioPosicao = Vector2.new(),
    inicioJanelaPosicao = Vector2.new(),
    abaSelecionada = 1,
    teclaAtalho = CONFIG.TECLA_PADRAO,
    alertaAtivo = false,
    idiomaAtual = "pt"
}

-- ============================================================
-- CORES — FULL VERMELHO
-- ============================================================

local Tema = {
    Padrao = {
        Fundo        = Color3.fromRGB(20, 4, 8),
        BarraSuperior = Color3.fromRGB(35, 8, 15),
        AbaAtiva     = Color3.fromRGB(190, 30, 65),
        AbaInativa   = Color3.fromRGB(40, 12, 22),
        Painel       = Color3.fromRGB(40, 10, 20),
        Borda        = Color3.fromRGB(230, 45, 85),
        Texto        = Color3.fromRGB(255, 225, 235),
        TextoInativo = Color3.fromRGB(150, 115, 130),
        Destaque     = Color3.fromRGB(255, 100, 135),
        Principal    = Color3.fromRGB(230, 45, 85),
        Botao        = Color3.fromRGB(65, 15, 32),
        FundoClaro   = Color3.fromRGB(50, 12, 28)
    },
    Alerta = {
        Fundo        = Color3.fromRGB(20, 4, 8),
        BarraSuperior = Color3.fromRGB(35, 8, 15),
        AbaAtiva     = Color3.fromRGB(210, 25, 60),
        AbaInativa   = Color3.fromRGB(40, 12, 22),
        Painel       = Color3.fromRGB(40, 10, 20),
        Borda        = Color3.fromRGB(255, 35, 75),
        Texto        = Color3.fromRGB(255, 225, 235),
        TextoInativo = Color3.fromRGB(150, 115, 130),
        Destaque     = Color3.fromRGB(255, 90, 120),
        Principal    = Color3.fromRGB(255, 40, 80),
        Botao        = Color3.fromRGB(65, 15, 32),
        FundoClaro   = Color3.fromRGB(50, 12, 28)
    },
    Escuro = Color3.fromRGB(55, 10, 25),
    Neutro = Color3.fromRGB(75, 75, 85)
}

-- ============================================================
-- UTILITÁRIOS
-- ============================================================

local function novo(classe, props, pai)
    local inst = Instance.new(classe)
    for k, v in pairs(props or {}) do inst[k] = v end
    inst.Parent = pai
    return inst
end

local function cantos(el, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r)
    c.Parent = el
end

local function restringirNaTela(x, y, larg, alt)
    local telaX = workspace.CurrentCamera.ViewportSize.X
    local telaY = workspace.CurrentCamera.ViewportSize.Y
    local nx = math.max(CONFIG.MARGEM_TELA, math.min(x, telaX - larg - CONFIG.MARGEM_TELA))
    local ny = math.max(CONFIG.MARGEM_TELA, math.min(y, telaY - alt - CONFIG.MARGEM_TELA))
    return nx, ny
end

local function planoHorizontal(vetor)
    return Vector3.new(vetor.X, 0, vetor.Z)
end

local function obterAssentoMotorista()
    local char = LocalPlayer.Character
    if not char then return nil end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum or hum.Health <= 0 then return nil end
    local seat = hum.SeatPart
    if seat and seat:IsA("VehicleSeat") and seat.Occupant == hum then return seat end
    return nil
end

local function pararSistema()
    Estado.sistemaAtivo = false
    Estado.assentoVeiculo = nil
end

-- ============================================================
-- INTERFACE
-- ============================================================

local Gui = novo("ScreenGui", {
    Name = CONFIG.NOME_GUI,
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling
}, PlayerGui)

local telaLarg, telaAlt = workspace.CurrentCamera.ViewportSize.X, workspace.CurrentCamera.ViewportSize.Y
local inicioX = (telaLarg - CONFIG.LARGURA_JANELA) / 2
local inicioY = (telaAlt - CONFIG.ALTURA_JANELA) / 2
inicioX, inicioY = restringirNaTela(inicioX, inicioY, CONFIG.LARGURA_JANELA, CONFIG.ALTURA_JANELA)

local Janela = novo("Frame", {
    Position = UDim2.new(0, inicioX, 0, inicioY),
    Size = UDim2.new(0, CONFIG.LARGURA_JANELA, 0, CONFIG.ALTURA_JANELA),
    BackgroundColor3 = Tema.Padrao.Fundo,
    ZIndex = 10,
    ClipsDescendants = true
}, Gui)
cantos(Janela, 26)

-- Borda externa
local Borda = novo("UIStroke", {
    Color = Tema.Padrao.Borda,
    Thickness = 2,
    Transparency = 0.3
}, Janela)

-- Camada de caveiras
local CamadaCaveiras = novo("Frame", {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    ZIndex = 15,
    Visible = false
}, Janela)

local function gerarCaveira()
    local caveira = novo("TextLabel", {
        Position = UDim2.new(math.random(5, 90)/100, 0, math.random(5, 90)/100, 0),
        Size = UDim2.new(0, 22 + math.random(10), 0, 22 + math.random(10)),
        BackgroundTransparency = 1,
        Text = "💀",
        TextSize = 22 + math.random(5),
        TextTransparency = 0.4 + math.random(3)/10,
        ZIndex = 16
    }, CamadaCaveiras)
    TweenService:Create(caveira, TweenInfo.new(1 + math.random(8)/10, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
        {Position = caveira.Position + UDim2.new(0, math.random(-10, 10), 0, -0.03)}):Play()
end
for i = 1, 12 do task.spawn(gerarCaveira) end

-- Aviso de perigo
local PainelAlerta = novo("Frame", {
    Position = UDim2.new(0.5, -150, 0, 395),
    Size = UDim2.new(0, 300, 0, 48),
    BackgroundColor3 = Color3.fromRGB(180, 45, 70),
    Visible = false,
    ZIndex = 25
}, Janela)
cantos(PainelAlerta, 12)

local TextoAviso1 = novo("TextLabel", {
    Position = UDim2.new(0, 12, 0, 6),
    Size = UDim2.new(1, -24, 0, 18),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Color3.fromRGB(255, 255, 140),
    TextSize = 14,
    Font = Enum.Font.GothamBold,
    ZIndex = 26
}, PainelAlerta)

local TextoAviso2 = novo("TextLabel", {
    Position = UDim2.new(0, 12, 0, 26),
    Size = UDim2.new(1, -24, 0, 18),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Color3.fromRGB(255, 220, 230),
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextWrapped = true,
    ZIndex = 26
}, PainelAlerta)

-- Barra de Título
local Barra = novo("Frame", {
    Size = UDim2.new(1, 0, 0, 52),
    BackgroundColor3 = Tema.Padrao.BarraSuperior,
    ZIndex = 30
}, Janela)
cantos(Barra, 26)

-- Arraste
Barra.InputBegan:Connect(function(m)
    if m.UserInputType == Enum.UserInputType.MouseButton1 then
        Estado.arrastando = true
        Estado.inicioPosicao = m.Position
        Estado.inicioJanelaPosicao = Vector2.new(Janela.Position.X.Offset, Janela.Position.Y.Offset)
    end
end)

UserInputService.InputChanged:Connect(function(m)
    if not Estado.arrastando then return end
    if m.UserInputType ~= Enum.UserInputType.MouseMovement then return end
    local delta = m.Position - Estado.inicioPosicao
    local novaAlt = (Estado.abaSelecionada == 3 or Estado.abaSelecionada == 4) and CONFIG.ALTURA_JANELA_EXPANDIDA or CONFIG.ALTURA_JANELA
    local nx, ny = restringirNaTela(
        Estado.inicioJanelaPosicao.X + delta.X,
        Estado.inicioJanelaPosicao.Y + delta.Y,
        CONFIG.LARGURA_JANELA, novaAlt
    )
    Janela.Position = UDim2.new(0, nx, 0, ny)
end)

UserInputService.InputEnded:Connect(function(m)
    if m.UserInputType == Enum.UserInputType.MouseButton1 then
        Estado.arrastando = false
    end
end)

-- Botões da Barra
local BtnMin = novo("TextButton", {
    Text = "−",
    Position = UDim2.new(1, -62, 0.5, -12),
    Size = UDim2.new(0, 24, 0, 24),
    BackgroundColor3 = Tema.Neutro,
    TextColor3 = Color3.fromRGB(230, 230, 230),
    TextSize = 16,
    Font = Enum.Font.GothamBold,
    AutoLocalize = false,
    ZIndex = 35
}, Barra)
cantos(BtnMin, 8)

local BtnFechar = novo("TextButton", {
    Text = "×",
    Position = UDim2.new(1, -30, 0.5, -12),
    Size = UDim2.new(0, 24, 0, 24),
    BackgroundColor3 = Tema.Padrao.Principal,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 18,
    Font = Enum.Font.GothamBold,
    AutoLocalize = false,
    ZIndex = 35
}, Barra)
cantos(BtnFechar, 8)

local TextoTitulo = novo("TextLabel", {
    Position = UDim2.new(0, 18, 0.5, -10),
    Size = UDim2.new(1, -100, 0, 20),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 15,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 32
}, Barra)

local BtnRestaurar = novo("TextButton", {
    Position = UDim2.new(0.02, 0, 0.02, 0),
    Size = UDim2.new(0, 60, 0, 60),
    BackgroundColor3 = Tema.Escuro,
    Text = "",
    TextColor3 = Tema.Padrao.Texto,
    TextSize = 11,
    Font = Enum.Font.GothamBold,
    Visible = false,
    AutoLocalize = false
}, Gui)
cantos(BtnRestaurar, 12)

-- ═══════════════════════════════════════════════════════════
-- ABAS — AGORA 5 ABAS, SENDO UMA DELA IDIOMA
-- ═══════════════════════════════════════════════════════════
local PainelAbas = novo("Frame", {
    Position = UDim2.new(0, 16, 0, 62),
    Size = UDim2.new(1, -32, 0, 40),
    BackgroundColor3 = Tema.Padrao.AbaInativa,
    ZIndex = 28
}, Janela)
cantos(PainelAbas, 12)

local IndicadorAba = novo("Frame", {
    Size = UDim2.new(0.2, -4, 1, -4),
    Position = UDim2.new(0, 2, 0, 2),
    BackgroundColor3 = Tema.Padrao.Principal,
    ZIndex = 29
}, PainelAbas)
cantos(IndicadorAba, 10)

local Abas = {}
for i = 1, 5 do
    Abas[i] = novo("TextButton", {
        Position = UDim2.new((i-1)*0.2, 0, 0, 0),
        Size = UDim2.new(0.2, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "",
        TextColor3 = i==1 and Tema.Padrao.Texto or Tema.Padrao.TextoInativo,
        TextSize = 11,
        Font = Enum.Font.GothamBold,
        AutoLocalize = false,
        ZIndex = 30
    }, PainelAbas)
end

-- Áreas de conteúdo
local Areas = {}
for i = 1, 5 do
    Areas[i] = novo("Frame", {
        Position = UDim2.new(0, 16, 0, 112),
        Size = (i == 3 or i == 4) and UDim2.new(1,-32,0,440) or UDim2.new(1,-32,0,250),
        BackgroundTransparency = 1,
        ZIndex = 25,
        Visible = i==1
    }, Janela)
end

-- ============================================================
-- ABA 1: CONTROLES
-- ============================================================

local TextoVelTit = novo("TextLabel", {
    Position = UDim2.new(0.5, -70, 0, 5),
    Size = UDim2.new(0, 140, 0, 24),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 16,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[1])

local CampoVel = novo("TextBox", {
    Position = UDim2.new(0.5, -70, 0, 35),
    Size = UDim2.new(0, 140, 0, 56),
    BackgroundColor3 = Tema.Padrao.Painel,
    Text = "350",
    TextColor3 = Tema.Padrao.Texto,
    TextSize = 30,
    Font = Enum.Font.GothamBold,
    ClearTextOnFocus = false,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[1])
cantos(CampoVel, 14)
novo("UIStroke", {Parent=CampoVel, Color=Tema.Padrao.Borda, Thickness=1, Transparency=0.5})

local TextoLimite = novo("TextLabel", {
    Position = UDim2.new(0.5, -70, 0, 100),
    Size = UDim2.new(0, 140, 0, 16),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[1])

local function btnEstilo(texto, pos, tam, cor)
    local b = novo("TextButton", {
        Text=texto, Position=pos, Size=tam,
        BackgroundColor3=cor,
        TextColor3=Color3.fromRGB(255,255,255),
        TextSize=13, Font=Enum.Font.GothamBold, AutoLocalize=false
    }, Areas[1])
    cantos(b, 14)
    return b
end

local Botoes = {
    Menos = btnEstilo("", UDim2.new(0.5,-145,0,120), UDim2.new(0,135,0,46), Tema.Padrao.Botao),
    Mais = btnEstilo("", UDim2.new(0.5,10,0,120), UDim2.new(0,135,0,46), Tema.Padrao.Principal),
    Ligar = btnEstilo("", UDim2.new(0.5,-145,0,175), UDim2.new(0,135,0,50), Tema.Padrao.Principal),
    Desligar = btnEstilo("", UDim2.new(0.5,10,0,175), UDim2.new(0,135,0,50), Color3.fromRGB(85, 15, 35)),
}

-- ============================================================
-- ABA 2: ATALHO
-- ============================================================

local TextoTeclaTit = novo("TextLabel", {
    Position = UDim2.new(0,0,0,10),
    Size = UDim2.new(1,0,0,26),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 16,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[2])

local TextoTeclaDesc = novo("TextLabel", {
    Position = UDim2.new(0,10,0,40),
    Size = UDim2.new(1,-20,0,40),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 12,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextWrapped = true
}, Areas[2])

local CampoTecla = novo("TextBox", {
    Position = UDim2.new(0.5,-55,0,95),
    Size = UDim2.new(0,110,0,54),
    BackgroundColor3 = Tema.Padrao.Painel,
    Text = "K",
    TextColor3 = Tema.Padrao.Texto,
    TextSize = 28,
    Font = Enum.Font.GothamBold,
    ClearTextOnFocus = true,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[2])
cantos(CampoTecla, 14)

local BtnSalvar = btnEstilo("", UDim2.new(0.5,-55,0,165), UDim2.new(0,110,0,44), Tema.Padrao.Principal)
BtnSalvar.Parent = Areas[2]

local StatusTecla = novo("TextLabel", {
    Position = UDim2.new(0,0,0,225),
    Size = UDim2.new(1,0,0,24),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 12,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[2])

-- ============================================================
-- ABA 3: AJUDA
-- ============================================================

local TextoAjuda = novo("TextLabel", {
    Position = UDim2.new(0,0,0,0),
    Size = UDim2.new(1,0,0,440),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Texto,
    TextSize = 13,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextYAlignment = Enum.TextYAlignment.Top,
    TextWrapped = true,
    LineHeight = 1.4
}, Areas[3])

-- ============================================================
-- ABA 4: IDIOMA — EXCLUSIVA
-- ============================================================

local TextoIdiomaTit = novo("TextLabel", {
    Position = UDim2.new(0,0,0,10),
    Size = UDim2.new(1,0,0,28),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 18,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[4])

local TextoIdiomaDesc = novo("TextLabel", {
    Position = UDim2.new(0,10,0,45),
    Size = UDim2.new(1,-20,0,35),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 12,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextWrapped = true
}, Areas[4])

local BotoesIdioma = {}
local function criarBotaoIdioma(sigla, texto, posY)
    local btn = novo("TextButton", {
        Position = UDim2.new(0.5, -130, 0, posY),
        Size = UDim2.new(0, 260, 0, 50),
        BackgroundColor3 = Tema.Padrao.Painel,
        Text = texto,
        TextColor3 = Tema.Padrao.Texto,
        TextSize = 14,
        Font = Enum.Font.GothamBold,
        AutoLocalize = false,
        ZIndex = 30
    }, Areas[4])
    cantos(btn, 14)
    BotoesIdioma[sigla] = btn
    return btn
end

local BtnIdiomaPt = criarBotaoIdioma("pt", "🇧🇷 Português", 100)
local BtnIdiomaEn = criarBotaoIdioma("en", "🇺🇸 English", 165)
local BtnIdiomaEs = criarBotaoIdioma("es", "🇪🇸 Español", 230)

local TextoIdiomaAtual = novo("TextLabel", {
    Position = UDim2.new(0,0,0,310),
    Size = UDim2.new(1,0,0,24),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[4])

-- ============================================================
-- ABA 5: CRIADOR
-- ============================================================

local TextoSobre1 = novo("TextLabel", {
    Position = UDim2.new(0,0,0,15),
    Size = UDim2.new(1,0,0,50),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Destaque,
    TextSize = 32,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[5])

local TextoSobre2 = novo("TextLabel", {
    Position = UDim2.new(0,0,0,70),
    Size = UDim2.new(1,0,0,35),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.Texto,
    TextSize = 16,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[5])

local TextoSobre3 = novo("TextLabel", {
    Position = UDim2.new(0,0,0,115),
    Size = UDim2.new(1,0,0,30),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 14,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[5])

local TextoSobre4 = novo("TextLabel", {
    Position = UDim2.new(0,0,0,150),
    Size = UDim2.new(1,0,0,30),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Tema.Padrao.TextoInativo,
    TextSize = 13,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center
}, Areas[5])

local TextoSobre5 = novo("TextLabel", {
    Position = UDim2.new(0,0,0,195),
    Size = UDim2.new(1,0,0,60),
    BackgroundTransparency = 1,
    Text = "",
    TextColor3 = Color3.fromRGB(200, 110, 130),
    TextSize = 13,
    Font = Enum.Font.Gotham,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextWrapped = true,
    LineHeight = 1.3
}, Areas[5])

-- ============================================================
-- ATUALIZAR IDIOMA
-- ============================================================

local function atualizarIdioma(sigla)
    local T = Idiomas[sigla]
    if not T then return end
    Estado.idiomaAtual = sigla

    TextoTitulo.Text = T.TITULO
    Abas[1].Text = T.CONTROLES
    Abas[2].Text = T.ATALHO
    Abas[3].Text = T.AJUDA
    Abas[4].Text = T.IDIOMA
    Abas[5].Text = T.CRIADOR
    TextoVelTit.Text = T.VELOCIDADE
    TextoLimite.Text = T.LIMITE..CONFIG.LIMITE_SEGURANCA
    Botoes.Menos.Text = T.MENOS
    Botoes.Mais.Text = T.MAIS
    Botoes.Ligar.Text = T.LIGAR
    Botoes.Desligar.Text = T.PARAR
    TextoTeclaTit.Text = T.TECLA_TITULO
    TextoTeclaDesc.Text = T.TECLA_TEXTO
    BtnSalvar.Text = T.SALVAR
    BtnRestaurar.Text = T.MOSTRAR
    TextoAviso1.Text = T.AVISO_PERIGO..CONFIG.LIMITE_SEGURANCA..T.AVISO_FIM
    TextoAviso2.Text = T.AVISO_REDUZA
    TextoAjuda.Text = T.AJUDA_TEXTO
    TextoIdiomaTit.Text = T.IDIOMA_TITULO
    TextoIdiomaDesc.Text = T.IDIOMA_TEXTO
    BtnIdiomaPt.Text = "🇧🇷 "..T.IDIOMA_PT
    BtnIdiomaEn.Text = "🇺🇸 "..T.IDIOMA_EN
    BtnIdiomaEs.Text = "🇪🇸 "..T.IDIOMA_ES
    TextoIdiomaAtual.Text = T.IDIOMA_ATUAL..T.IDIOMA_PT
    TextoSobre1.Text = T.SOBRE_TITULO
    TextoSobre2.Text = T.SOBRE_SUB
    TextoSobre3.Text = T.VERSAO
    TextoSobre4.Text = T.IDIOMA_ATUAL..T.IDIOMA_PT
    TextoSobre5.Text = T.AVISO_RESPONSAVEL
end

-- ============================================================
-- SISTEMA DE ALERTA E TEMA
-- ============================================================

local function aplicarTema(ativarAlerta)
    if Estado.alertaAtivo == ativarAlerta then return end
    Estado.alertaAtivo = ativarAlerta
    local t = ativarAlerta and Tema.Alerta or Tema.Padrao

    Janela.BackgroundColor3 = t.Fundo
    Borda.Color = t.Borda
    Barra.BackgroundColor3 = t.BarraSuperior
    PainelAbas.BackgroundColor3 = t.AbaInativa
    IndicadorAba.BackgroundColor3 = t.Principal
    CampoVel.BackgroundColor3 = t.Painel
    CampoVel.TextColor3 = t.Texto
    BtnFechar.BackgroundColor3 = t.Principal
    Botoes.Ligar.BackgroundColor3 = t.Principal
    Botoes.Mais.BackgroundColor3 = t.Principal
    Botoes.Menos.BackgroundColor3 = t.Botao
    BtnSalvar.BackgroundColor3 = t.Principal
    CampoTecla.BackgroundColor3 = t.Painel
    CampoTecla.TextColor3 = t.Texto
    StatusTecla.TextColor3 = t.Destaque
    TextoVelTit.TextColor3 = t.Destaque
    TextoTitulo.TextColor3 = t.Destaque

    CamadaCaveiras.Visible = ativarAlerta
    PainelAlerta.Visible = ativarAlerta
    PainelAlerta.BackgroundColor3 = ativarAlerta and Color3.fromRGB(210, 25, 60) or Color3.fromRGB(180, 45, 70)

    PainelAlerta.Position = (Estado.abaSelecionada == 3 or Estado.abaSelecionada == 4)
        and UDim2.new(0.5, -150, 0, 485)
        or UDim2.new(0.5, -150, 0, 395)

    for i = 1, 5 do
        Abas[i].TextColor3 = (i == Estado.abaSelecionada) and t.Texto or t.TextoInativo
    end

    -- Destaque botão do idioma selecionado
    for sigla, btn in pairs(BotoesIdioma) do
        btn.BackgroundColor3 = (sigla == Estado.idiomaAtual) and t.Principal or t.Painel
        btn.TextColor3 = (sigla == Estado.idiomaAtual) and Color3.fromRGB(255,255,255) or t.Texto
    end
end

-- ============================================================
-- NAVEGAÇÃO COM ANIMAÇÃO
-- ============================================================

local function trocarAba(indice)
    Estado.abaSelecionada = indice

    TweenService:Create(IndicadorAba, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        Position = UDim2.new((indice-1)*0.2 + 0.005, 0, 0, 2)
    }):Play()

    Janela.Size = (indice == 3 or indice == 4)
        and UDim2.new(0, CONFIG.LARGURA_JANELA, 0, CONFIG.ALTURA_JANELA_EXPANDIDA)
        or UDim2.new(0, CONFIG.LARGURA_JANELA, 0, CONFIG.ALTURA_JANELA)

    if indice == 3 or indice == 4 then
        local _, ny = restringirNaTela(Janela.Position.X.Offset, Janela.Position.Y.Offset, CONFIG.LARGURA_JANELA, CONFIG.ALTURA_JANELA_EXPANDIDA)
        Janela.Position = UDim2.new(0, Janela.Position.X.Offset, 0, ny)
    end

    for i = 1, 5 do Areas[i].Visible = (i == indice) end
    aplicarTema(Estado.velocidadeAtual > CONFIG.LIMITE_SEGURANCA)
end

for i = 1, 5 do
    Abas[i].Activated:Connect(function() trocarAba(i) end)
end

BtnIdiomaPt.Activated:Connect(function() atualizarIdioma("pt") end)
BtnIdiomaEn.Activated:Connect(function() atualizarIdioma("en") end)
BtnIdiomaEs.Activated:Connect(function() atualizarIdioma("es") end)

-- ============================================================
-- FUNÇÕES
-- ============================================================

local function validarTecla(t)
    if not t or t == "" then return nil end
    local l = string.upper(string.sub(t,1,1))
    if l:match("%a") then
        local ok, cod = pcall(function() return Enum.KeyCode[l] end)
        if ok and cod then return l, cod end
    end
    return nil
end

local function definirVel(n)
    if type(n) ~= "number" or n ~= n then
        CampoVel.Text = tostring(Estado.velocidadeAtual)
        return
    end
    Estado.velocidadeAtual = math.clamp(math.floor(n), CONFIG.VELOCIDADE_MIN, CONFIG.VELOCIDADE_MAX)
    CampoVel.Text = tostring(Estado.velocidadeAtual)
    aplicarTema(Estado.velocidadeAtual > CONFIG.LIMITE_SEGURANCA)
end

local function minimizar() Estado.minimizado=true; Janela.Visible=false; BtnRestaurar.Visible=true end
local function restaurar() Estado.minimizado=false; Janela.Visible=true; BtnRestaurar.Visible=false end

BtnMin.Activated:Connect(minimizar)
BtnRestaurar.Activated:Connect(restaurar)

 Botoes.Menos.Activated:Connect(function() definirVel(Estado.velocidadeAtual - 10) end)
Botoes.Mais.Activated:Connect(function() definirVel(Estado.velocidadeAtual + 10) end)
CampoVel.FocusLost:Connect(function(ok) if ok then definirVel(tonumber(CampoVel.Text)) end end)

Botoes.Ligar.Activated:Connect(function()
    if Estado.sistemaAtivo then return end
    local assento = obterAssentoMotorista()
    if not assento then
        warn("[SUBMUNDO] "..Idiomas[Estado.idiomaAtual].ENTRAR_CARRO)
        return
    end
    pararSistema()
    Estado.sistemaAtivo = true
    Estado.assentoVeiculo = assento
end)

Botoes.Desligar.Activated:Connect(function()
    pararSistema()
end)

BtnSalvar.Activated:Connect(function()
    local T = Idiomas[Estado.idiomaAtual]
    local l = validarTecla(CampoTecla.Text)
    if l then
        Estado.teclaAtalho = l
        CampoTecla.Text = l
        StatusTecla.Text = T.SALVO..l
        task.delay(2.5, function() StatusTecla.Text = "" end)
    else
        StatusTecla.Text = T.TECLA_INVALIDA
        task.delay(2, function() StatusTecla.Text = "" end)
    end
end)

BtnFechar.Activated:Connect(function()
    pararSistema()
    Estado.encerrado = true
    Gui:Destroy()
end)

UserInputService.InputBegan:Connect(function(inp, proc)
    if proc or Estado.encerrado then return end
    local _, cod = validarTecla(Estado.teclaAtalho)
    if cod and inp.KeyCode == cod then
        if Estado.minimizado then restaurar() elseif Janela.Visible then minimizar() end
    end
end)

-- ============================================================
-- LOOP PRINCIPAL
-- ============================================================

RunService.Heartbeat:Connect(function()
    if Estado.encerrado then return end
    aplicarTema(Estado.velocidadeAtual > CONFIG.LIMITE_SEGURANCA)

    if not Estado.sistemaAtivo then return end
    local assento = obterAssentoMotorista()
    if assento ~= Estado.assentoVeiculo then
        pararSistema()
        return
    end
    if assento.ThrottleFloat < 0.01 then
        pararSistema()
        return
    end
    local raiz = assento:FindFirstAncestorWhichIsA("Model")
    if not raiz or not raiz.PrimaryPart or raiz.PrimaryPart.Anchored then return end
    local dir = planoHorizontal(assento.CFrame.LookVector).Unit
    raiz.PrimaryPart.AssemblyLinearVelocity = dir * Estado.velocidadeAtual
end)

-- Inicializar
atualizarIdioma("pt")
aplicarTema(Estado.velocidadeAtual > CONFIG.LIMITE_SEGURANCA)

print("[SUBMUNDO 2.8] ✅ Full Vermelho + Aba Idioma")
