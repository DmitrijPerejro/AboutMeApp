//
//  User.swift
//  AboutMeApp
//
//  Created by Perejro on 06/11/2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func fetchUser() -> User {
        User(
            login: "root",
            password: "123",
            person: Person(
                name: "Perejro",
                age: 33,
                about: "dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                motorcycle: Bike(
                    title: "Kawasaki",
                    model: "Ninja 636",
                    shortDescription: "Kawasaki Ninja 636 — это спортивный мотоцикл, который сочетает в себе мощность и управляемость, идеально подходя для опытных гонщиков и энтузиастов мотоциклетных гонок. Оснащенный двигателем объемом 636 см³, он обеспечивает отличную динамику и маневренность. Благодаря своему агрессивному дизайну и высокотехнологичной подвеске, Ninja 636 идеально подходит как для трека, так и для повседневных поездок. Это сочетание скорости, стабильности и комфорта делает Kawasaki Ninja 636 одним из популярных мотоциклов в своем классе.",
                    description: """
                        Kawasaki Ninja 636 — это один из самых популярных и мощных мотоциклов в классе спортивных мотоциклов средней мощности. Он представляет собой усовершенствованную версию модели Ninja 600, с увеличенным рабочим объемом двигателя до 636 см³, что позволяет достичь отличной производительности и гибкости на дороге. Ninja 636 известен своим динамичным и агрессивным стилем, что делает его идеальным выбором как для трековых гонок, так и для повседневной езды.

                        Двигатель Ninja 636 — это четырехтактный, рядный 4-цилиндровый агрегат с системой впуска с переменной геометрией, что улучшает отклик и мощность на всех оборотах. Это позволяет мотоциклу обеспечивать превосходную ускорение и отличную маневренность. Он обладает 130 л.с. и весом около 190 кг, что дает ему превосходное соотношение мощности и веса.

                        Качество езды на Ninja 636 достигается благодаря продвинутой подвеске и тормозам, которые обеспечивают отличную стабильность на любых скоростях. Мотоцикл оснащен регулируемой передней и задней подвеской, а также мощной тормозной системой с двойными дисками спереди и одним сзади, что гарантирует высокий уровень безопасности.

                        Кроме того, Kawasaki Ninja 636 имеет современную электронику, включая систему контроля тяги, системы управления запуском, и настраиваемые карты впрыска топлива. Эти особенности позволяют не только улучшить производительность, но и обеспечить комфорт и безопасность при разных условиях вождения.

                        Стильный и аэродинамичный дизайн Ninja 636 не оставит равнодушным никого, кто ценит спортивные мотоциклы. Его агрессивный внешний вид, современная светотехника и аэродинамичные линии подчеркивают его принадлежность к спортивному классу и делают его заметным на дороге.

                        В общем, Kawasaki Ninja 636 — это сочетание мощного двигателя, отличной управляемости и комфорта. Это мотоцикл, который будет радовать как на треке, так и на обычной дороге, предоставляя своему владельцу уникальные ощущения от езды.
                    """
                )
            )
        )
    }
}

struct Person {
    let name: String
    let age: Int
    let about: String
    let motorcycle: Bike
}

struct Bike {
    let title: String;
    let model: String;
    let shortDescription: String
    let description: String;
}


