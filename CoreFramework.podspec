
Pod::Spec.new do |spec|
  spec.name         = "CoreFramework"
  spec.version      = "0.0.2"
  spec.summary      = "CoreFramework foi desenvolvido para atender ao app Reminder como core de design e de componentes a serem utilizados pela equipe ReminderTeam"
  spec.description  = <<-DESC
                      Esse projeto tem o intuito de melhorar e ajudar
                      no desenvolvimento compartilhado de componentes.
  DESC

  spec.homepage     = "https://github.com/CarlosTSIlva/CoreFramework"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "CarlosTSIlva" => "carlosteixeira.tc@hotmail.com" }
  spec.platform     = :ios, "18.5"
  spec.swift_version = "5.0"
  spec.source       = { :git => "https://github.com/CarlosTSIlva/CoreFramework.git", :tag => "#{spec.version}" }
  spec.source_files = "CoreFramework/Resources/Source/**/*.{swift,h}",
  spec.frameworks   = "UIKit"
  spec.exclude_files = "Classes/Exclude"
end

