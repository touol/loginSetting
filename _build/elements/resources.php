<?php

return [
    'web' => [
        'registracziya' => [
            'id'=>101,
            'pagetitle' => 'Регистрация',
            'template' => 1,
            'hidemenu' => true,
            'properties' => [
                'templatename' => 'main'
            ],
        ],
        'spasibo-za-registracziyu' => [
            'id'=>102,
            'pagetitle' => 'Спасибо за регистрацию',
            'template' => 1,
            'hidemenu' => true,
            'content' => 'Спасибо за регистрацию!',
            'properties' => [
                'templatename' => 'main'
            ],
        ],
        'vosstanovlenie-parolya' => [
            'id'=>103,
            'pagetitle' => 'Восстановление пароля',
            'template' => 1,
            'hidemenu' => true,
            'properties' => [
                'templatename' => 'main'
            ],
        ],
        'lk' => [
            'id'=>104,
            'pagetitle' => 'Личный кабинет',
            'template' => 1,
            'hidemenu' => true,
            'published' => true,
            'properties' => [
                'templatename' => 'lk'
            ],
            'resources' => [
                'profil' => [
                    'id'=>105,
                    'pagetitle' => 'Профиль',
                    'template' => 1,
                    'hidemenu' => false,
                    'properties' => [
                        'templatename' => 'lk'
                    ],
                ],
                'smenit-parol' => [
                    'id'=>106,
                    'pagetitle' => 'Сменить пароль',
                    'template' => 1,
                    'hidemenu' => true,
                    'properties' => [
                        'templatename' => 'lk'
                    ],
                ],
            ],
        ],
    ],
];