#
# Be sure to run `pod lib lint LPDOpenSSL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LPDOpenSSL'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LPDOpenSSL.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cnkcq/LPDOpenSSL'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cnkcq' => 'chengquan.wang@ele.me' }
  s.source           = { :git => 'https://github.com/cnkcq/LPDOpenSSL.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.header_dir          = 'openssl' # 必须指定 指定后 引用方式为
  #import <openssl/rsa.h> #include <openssl/pem.h> #include <openssl/bio.h> #include <openssl/sha.h>

  s.public_header_files = "LPDOpenSSL/include/openssl/*.h"
  s.vendored_libraries  = "LPDOpenSSL/lib/*.a"
  s.preserve_paths      = "LPDOpenSSL/lib/*.a"
  s.libraries           = 'crypto', 'ssl'
  s.requires_arc        = false

  s.libraries = ['stdc++','c++.1','c++abi','z.1.1.3','icucore']
end
