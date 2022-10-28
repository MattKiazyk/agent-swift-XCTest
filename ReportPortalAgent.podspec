Pod::Spec.new do |s|
    s.name             = 'ReportPortalAgent'
    s.version          = '3.0.1'
    s.summary          = 'Agent to push test results on Report Portal'

    s.description      = <<-DESC
        This agent allows to see test results on the Report Portal - http://reportportal.io
    DESC

    s.homepage         = 'https://github.com/MattKiazyk/ReportPortalAgent'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'DarthRumata' => 'stas.kirichok@windmill.ch' }
    s.source           = { :git => 'https://github.com/MattKiazyk/ReportPortalAgent.git', :tag => s.version.to_s }

    s.ios.deployment_target = '11.0'
    s.tvos.deployment_target = '10.3'
    s.swift_version = '5.1.0'
    s.source_files = 'Sources/**/*'

    s.weak_framework = "XCTest"
    s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"',
    }
end
