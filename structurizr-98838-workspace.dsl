workspace {
    /*
     * Modelo: Representa los elementos del sistema y sus relaciones.
     */

   model {
        /* Persona: Cliente del sistema bancario. */
        Cliente = person "Cliente del banco" {
            description "Persona que accede a los servicios bancarios a través de aplicaciones web y móviles."
        }

        /* Sistema Bancario */
        SistemaDeBanca = softwareSystem "Sistema Bancario" {
            description "Sistema principal que gestiona las operaciones y servicios bancarios."

            /* Contenedor: Core Bancario Tradicional */
            CoreTradicional = container "Core Bancario Tradicional" "Servicios y bases de datos heredadas" {
                description "Gestión de operaciones bancarias tradicionales."
                
                DBSQLServer = component "Base de Datos SQL Server" {
                    description "Almacena información crítica del sistema bancario tradicional."
                    technology "Microsoft SQL Server"
                }

                ServiciosSOAP = component "Servicios SOAP" {
                    description "Servicios legacy basados en SOAP para operaciones básicas."
                    technology "SOAP, XML"
                }
            }

            /* Contenedor: Core Bancario Digital */
            CoreDigital = container "Core Bancario Digital" "Microservicios y bases de datos modernas" {
                description "Plataforma moderna que soporta servicios avanzados y transacciones en tiempo real."

                AuthService = component "Servicio de Autenticación" {
                    description "Gestiona la autenticación de los usuarios."
                    technology "OAuth2, JWT"
                }

                UserService = component "Servicio de Usuarios" {
                    description "Administra información de clientes y perfiles."
                    technology "REST API, .NET Core"
                }

                TransactionService = component "Servicio de Transacciones" {
                    description "Gestiona operaciones bancarias y transferencias."
                    technology "REST API, .NET Core"
                }

                DBNoSQL = component "Base de Datos NoSQL" {
                    description "Base de datos moderna para almacenamiento de datos no relacionales."
                    technology "MongoDB"
                }
            }

            /* Contenedor: Sistema de Banca Web y Móvil */
            BancaWebMovil = container "Sistema de Banca Web y Móvil" "Interfaz de usuario y API Gateway" {
                description "Frontend y backend que permiten la interacción de los clientes con los servicios bancarios."

                WebApp = component "Aplicación Web" {
                    description "Frontend para clientes basado en navegadores."
                    technology "Angular, Tailwind CSS"
                }

                MobileApp = component "Aplicación Móvil" {
                    description "Aplicación móvil para acceso a servicios bancarios."
                    technology "Flutter"
                }

                APIGateway = component "API Gateway" {
                    description "Punto de entrada unificado para los microservicios."
                    technology "Kong API Gateway"
                }
            }

            /* Contenedor: Plataforma de Servicios de Pago */
            ServiciosPago = container "Plataforma de Servicios de Pago" "Conexión con redes de pago externas" {
                description "Permite transacciones seguras a través de redes de pago como SWIFT y ISO 20022."

                PaymentProcessor = component "Procesador de Pagos" {
                    description "Gestión de transacciones financieras."
                    technology "Java, Spring Boot"
                }
            }

            /* Contenedor: APIs de Open Finance */
            OpenFinance = container "APIs de Open Finance" "Servicios para socios y terceros" {
                description "Expone servicios bancarios para integraciones con plataformas externas."

                PartnerAPI = component "API para Socios" {
                    description "Ofrece acceso seguro a servicios para socios."
                    technology "REST API"
                }
            }

            /* Contenedor: Sistema de Gestión de Riesgos */
            GestionRiesgos = container "Sistema de Gestión de Riesgos" "Análisis en tiempo real" {
                description "Monitorea y evalúa riesgos asociados a las operaciones bancarias."

                RiskEngine = component "Motor de Evaluación de Riesgos" {
                    description "Procesa datos transaccionales para evaluar riesgos."
                    technology "Python, TensorFlow"
                }
            }

            /* Contenedor: Sistema de Prevención de Fraudes */
            PrevFraudes = container "Sistema de Prevención de Fraudes" "Modelos de Machine Learning" {
                description "Detecta y previene actividades sospechosas en tiempo real."

                FraudDetection = component "Motor de Detección de Fraudes" {
                    description "Identifica patrones sospechosos utilizando modelos ML."
                    technology "Python, Scikit-learn"
                }
            }

            /* Relaciones entre contenedores */
            CoreTradicional -> CoreDigital "Sincronización de datos" "Canales seguros"
            CoreDigital -> BancaWebMovil "Servicios REST" "API seguras"
            BancaWebMovil -> ServiciosPago "Procesamiento de pagos" "Conexión cifrada"
            ServiciosPago -> CoreDigital "Actualización de datos transaccionales" "Canales seguros"
            CoreDigital -> OpenFinance "Exposición de servicios" "APIs públicas"
            CoreDigital -> GestionRiesgos "Provee datos para análisis de riesgos" "Transacciones"
            GestionRiesgos -> PrevFraudes "Análisis de anomalías" "Datos para modelos de ML"
        }

        /* Relaciones entre personas y el sistema */
        Cliente -> BancaWebMovil "Accede a servicios bancarios" "Interacción directa"
    }

    /*
     * Vistas: Define cómo se visualizan los elementos del modelo.
     */
    views {
        /* Vista de contexto del sistema */
        systemContext SistemaDeBanca {
            include *
            autolayout lr
            description "Vista general del sistema bancario y sus interacciones externas."
        }

        /* Vista de contenedores */
        container SistemaDeBanca {
            include *
            autolayout tb
            description "Vista detallada de los contenedores del sistema bancario."
        }

        /* Vista de componentes del Core Bancario Tradicional */
        component CoreTradicional {
            include *
            autolayout lr
            description "Vista detallada de los componentes del Core Bancario Tradicional."
        }

        /* Vista de componentes del Core Bancario Digital */
        component CoreDigital {
            include *
            autolayout lr
            description "Vista detallada de los componentes del Core Bancario Digital."
        }

        /* Vista de componentes del Sistema de Banca Web y Móvil */
        component BancaWebMovil {
            include *
            autolayout lr
            description "Vista detallada de los componentes del Sistema de Banca Web y Móvil."
        }

        /* Vista de componentes de la Plataforma de Servicios de Pago */
        component ServiciosPago {
            include *
            autolayout lr
            description "Vista detallada de los componentes de la Plataforma de Servicios de Pago."
        }

        /* Vista de componentes de las APIs de Open Finance */
        component OpenFinance {
            include *
            autolayout lr
            description "Vista detallada de los componentes de las APIs de Open Finance."
        }

        /* Vista de componentes del Sistema de Gestión de Riesgos */
        component GestionRiesgos {
            include *
            autolayout lr
            description "Vista detallada de los componentes del Sistema de Gestión de Riesgos."
        }

        /* Vista de componentes del Sistema de Prevención de Fraudes */
        component PrevFraudes {
            include *
            autolayout lr
            description "Vista detallada de los componentes del Sistema de Prevención de Fraudes."
        }

        /* Estilos de elementos */
        styles {
            element "Cliente" {
                background #ffcc00
                color #000000
                shape person
            }
            element "CoreTradicional" {
                background #f2f2f2
                shape roundedBox
            }
            element "CoreDigital" {
                background #99ccff
                shape roundedBox
            }
            element "BancaWebMovil" {
                background #00cc66
                shape roundedBox
            }
            element "ServiciosPago" {
                background #ff9966
                shape roundedBox
            }
            element "OpenFinance" {
                background #cc99ff
                shape roundedBox
            }
            element "GestionRiesgos" {
                background #6699ff
                shape roundedBox
            }
            element "PrevFraudes" {
                background #ff6666
                shape roundedBox
            }
        }
    }
}