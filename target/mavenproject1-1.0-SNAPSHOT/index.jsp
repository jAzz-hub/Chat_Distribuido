<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bate Papo Distribuído</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            
            body {
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }
            
            .container {
                width: 100%;
                max-width: 500px;
                background-color: white;
                border-radius: 12px;
                box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
                overflow: hidden;
            }
            
            .header {
                background: linear-gradient(to right, #ff6b6b, #ff8e53);
                padding: 25px;
                text-align: center;
            }
            
            .header h1 {
                color: white;
                font-size: 28px;
                font-weight: 600;
                letter-spacing: 0.5px;
                text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
            }
            
            .form-content {
                padding: 30px;
            }
            
            .input-group {
                margin-bottom: 20px;
            }
            
            .input-group label {
                display: block;
                margin-bottom: 8px;
                font-weight: 500;
                color: #555;
            }
            
            .input-group input {
                width: 100%;
                padding: 14px;
                border: 1px solid #ddd;
                border-radius: 6px;
                font-size: 16px;
                transition: border-color 0.3s;
            }
            
            .input-group input:focus {
                outline: none;
                border-color: #667eea;
                box-shadow: 0 0 0 2px rgba(102, 126, 234, 0.2);
            }
            
            .color-selection, .avatar-selection {
                margin: 25px 0;
            }
            
            .color-selection h3, .avatar-selection h3 {
                margin-bottom: 15px;
                color: #555;
                text-align: center;
            }
            
            .color-options, .avatar-options {
                display: flex;
                justify-content: space-around;
                flex-wrap: wrap;
            }
            
            .color-option, .avatar-option {
                text-align: center;
                cursor: pointer;
                transition: transform 0.3s;
                width: 30%;
            }
            
            .color-option:hover, .avatar-option:hover {
                transform: scale(1.05);
            }
            
            .color-circle {
                width: 60px;
                height: 60px;
                border-radius: 50%;
                border: 3px solid transparent;
                margin: 0 auto 8px;
                transition: all 0.3s;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }
            
            .avatar-img {
                width: 80px;
                height: 80px;
                border-radius: 50%;
                border: 3px solid transparent;
                padding: 5px;
                margin-bottom: 8px;
                transition: all 0.3s;
            }
            
            .color-option input[type="radio"], .avatar-option input[type="radio"] {
                display: none;
            }
            
            .color-option input[type="radio"]:checked + .color-circle {
                border-color: #667eea;
                transform: scale(1.1);
            }
            
            .avatar-option input[type="radio"]:checked + .avatar-img {
                border-color: #667eea;
                background-color: #f0f4ff;
            }
            
            .color-label, .avatar-label {
                display: block;
                font-weight: 500;
                color: #666;
            }
            
            .btn {
                background: linear-gradient(to right, #667eea, #764ba2);
                color: white;
                border: none;
                padding: 14px 20px;
                width: 100%;
                border-radius: 6px;
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
                transition: transform 0.3s, box-shadow 0.3s;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                margin-top: 10px;
            }
            
            .btn:hover {
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            }
            
            .btn:active {
                transform: translateY(0);
            }
            
            .footer {
                text-align: center;
                padding: 20px;
                color: #777;
                font-size: 14px;
                border-top: 1px solid #eee;
            }
            
            @media (max-width: 480px) {
                .container {
                    border-radius: 8px;
                }
                
                .header {
                    padding: 20px;
                }
                
                .header h1 {
                    font-size: 24px;
                }
                
                .form-content {
                    padding: 20px;
                }
                
                .color-option, .avatar-option {
                    width: 100%;
                    margin-bottom: 15px;
                }
                
                .color-options, .avatar-options {
                    flex-direction: column;
                    align-items: center;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>Bate Papo 1.0</h1>
            </div>
            
            <div class="form-content">
                <form name="frchat" action="sala.jsp" method="GET">
                    <div class="input-group">
                        <label for="username">Nome de usuário</label>
                        <input type="text" id="username" name="username" placeholder="Digite seu nome" required>
                    </div>
                    
                    <div class="color-selection">
                        <h3>Escolha a cor do chat</h3>
                        <div class="color-options">
                            <label class="color-option">
                                <input type="radio" name="color" value="black" required>
                                <div class="color-circle" style="background-color: #000000;"></div>
                                <span class="color-label">Preto</span>
                            </label>
                            
                            <label class="color-option">
                                <input type="radio" name="color" value="purple">
                                <div class="color-circle" style="background-color: #764BA2;"></div>
                                <span class="color-label">Roxo</span>
                            </label>
                            
                            <label class="color-option">
                                <input type="radio" name="color" value="blue">
                                <div class="color-circle" style="background-color: #667EEA;"></div>
                                <span class="color-label">Azul</span>
                            </label>
                        </div>
                    </div>
                    
                    <div class="avatar-selection">
                        <h3>Escolha seu avatar</h3>
                        <div class="avatar-options">
                            <label class="avatar-option">
                                <input type="radio" name="avatar" value="house" required>
                                <svg class="avatar-img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#FF6B6B">
                                    <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/>
                                </svg>
                                <span class="avatar-label">Casinha</span>
                            </label>
                            
                            <label class="avatar-option">
                                <input type="radio" name="avatar" value="man">
                                <svg class="avatar-img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#667EEA">
                                    <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                                </svg>
                                <span class="avatar-label">Hominho</span>
                            </label>
                            
                            <label class="avatar-option">
                                <input type="radio" name="avatar" value="woman">
                                <svg class="avatar-img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#764BA2">
                                    <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                                    <circle cx="12" cy="7" r="2"/>
                                </svg>
                                <span class="avatar-label">Menininha</span>
                            </label>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn">Entrar</button>
                </form>
            </div>
            
            <div class="footer">
                <p>Bate Papo Distribuído &copy; 2023</p>
            </div>
        </div>

        <script>
            // Adiciona interatividade à seleção de avatar
            document.addEventListener('DOMContentLoaded', function() {
                const avatarOptions = document.querySelectorAll('.avatar-option');
                const colorOptions = document.querySelectorAll('.color-option');
                
                avatarOptions.forEach(option => {
                    option.addEventListener('click', function() {
                        // Remove a seleção anterior
                        avatarOptions.forEach(opt => {
                            opt.querySelector('input[type="radio"]').checked = false;
                        });
                        
                        // Marca a opção atual
                        this.querySelector('input[type="radio"]').checked = true;
                    });
                });
                
                colorOptions.forEach(option => {
                    option.addEventListener('click', function() {
                        // Remove a seleção anterior
                        colorOptions.forEach(opt => {
                            opt.querySelector('input[type="radio"]').checked = false;
                        });
                        
                        // Marca a opção atual
                        this.querySelector('input[type="radio"]').checked = true;
                    });
                });
            });
        </script>
    </body>
</html>