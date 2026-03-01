// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
    products: [
        .library(
            name: "MPVKit",
            targets: ["_MPVKit"]
        ),
        .library(
            name: "MPVKit-GPL",
            targets: ["_MPVKit-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_MPVKit",
            dependencies: [
                "Libmpv", "_FFmpeg", "Libuchardet", "Libbluray",
            ],
            path: "Sources/_MPVKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_MPVKit-GPL",
            dependencies: [
                "Libmpv-GPL", "_FFmpeg-GPL", "Libuchardet", "Libbluray",
            ],
            path: "Sources/_MPVKit-GPL",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),

        .binaryTarget(
            name: "Libmpv-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libmpv-GPL.xcframework.zip",
            checksum: "8063e18de45b71e02fdafc3a64f7f341eb33168b1c4753d5996272bcea82075a"
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavcodec-GPL.xcframework.zip",
            checksum: "3a0a4acb9e127bde9215cc5f8dc9eda68f3319cd05ea8d84a4d6ab1b0887db79"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavdevice-GPL.xcframework.zip",
            checksum: "e5cec4fe46fe4120115d99aaff05740016c4a3f8caf4019167a94e0e98569c3c"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavformat-GPL.xcframework.zip",
            checksum: "71d3f646a89da6f878b2db59c99c06d7a3cc99395ee3afd76b5593ebbef04844"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavfilter-GPL.xcframework.zip",
            checksum: "23a2b1de292bb113a5467ce43fea92a688fd56fa53e570e3c477f65d656599b8"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavutil-GPL.xcframework.zip",
            checksum: "7c2395882621834c2a5c8961d984b80b6ba9b513f448bdf67f16bdf471835407"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libswresample-GPL.xcframework.zip",
            checksum: "a7375e30fddfe23ceee671f183f3679c7c9a4c89f6ff1da27787a09c50125feb"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libswscale-GPL.xcframework.zip",
            checksum: "45c2654c6d32cb42a310e138c52eb4095b6da40a004dd42d927cf616279b9ed2"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libcrypto.xcframework.zip",
            checksum: "593283be2a90f7fd66f6e6ed331b2f099cf403e0926fe3b4ac09a7062b793965"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.5/Libssl.xcframework.zip",
            checksum: "ff5ffd43d015d7285fd37e4a3145b25cbd8d2842740bd629a711c299a20e226a"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gmp.xcframework.zip",
            checksum: "ad33c7a08f4cdcb9924c8f0e6d9a054dad33d7794b97667bf8b6fb2b236ae585"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/nettle.xcframework.zip",
            checksum: "0fdf3ebf8bd7b8bc8eee837cf27261cb4c52ae520b6576a2f468656aa1691e02"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/hogweed.xcframework.zip",
            checksum: "25727c9fa67287fa0a4f4722f88bb8be669b23cd7e837e2d00870eb8a25d3f27"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.11/gnutls.xcframework.zip",
            checksum: "3dbec5809339189bf9679e218c6cff387ebf8fb72745927835afc2678f5c9f4d"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libunibreak.xcframework.zip",
            checksum: "001087c0e927ae00f604422b539898b81eb77230ea7700597b70393cd51e946c"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfreetype.xcframework.zip",
            checksum: "f2840aba1ce35e51c0595557eee82c908dac8e32108ecc0661301c06061e051c"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libfribidi.xcframework.zip",
            checksum: "4a55513792ef7a17893875f74cc84c56f3657e8768c07a7a96f563a11dc4b743"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libharfbuzz.xcframework.zip",
            checksum: "91558d8497d9d97bc11eeef8b744d104315893bfee8f17483d8002e14565f84b"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.4/Libass.xcframework.zip",
            checksum: "1e41f5a69c74f6c6407aab84a65ccd0b34e73fa44465f488f99bf22bd61b070d"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-2512/Libsmbclient.xcframework.zip",
            checksum: "3a53375fab11bc888cc553664ea5dd902208d04f0cc21ec746302bf356246b6f"
        ),

        .binaryTarget(
            name: "Libbluray",
            url: "https://github.com/mpvkit/libbluray-build/releases/download/1.4.0/Libbluray.xcframework.zip",
            checksum: "bc037d34e2b0b5ab7f202fb371f5fb298136cc66fdf406c2172185d06f53f18d"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1-xcode/Libuavs3d.xcframework.zip",
            checksum: "1e69250279be9334cd2f6849abdc884c8e4bb29212467b6f071fdc1ac2010b6b"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.2/Libdovi.xcframework.zip",
            checksum: "e693e239808350868e79c5448ef9f02e2716bc822dd8632a41a368a1eae5ca7d"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.4.1/MoltenVK.xcframework.zip",
            checksum: "9bd1ca1e4563bacd25d6e55d37b10341d50b2601bc2684bc332188e79daa2b79"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2025.5.0/Libshaderc_combined.xcframework.zip",
            checksum: "758047b615708575b580eb960a2d083f760a29dc462d6eaa360416c946ce433b"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/lcms2-build/releases/download/2.17.0/lcms2.xcframework.zip",
            checksum: "dc0dce0606f6ab6841a8ec5a6bd4448e2f3ef00661a050460f806c9393dc6982"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.351.0-2512/Libplacebo.xcframework.zip",
            checksum: "3b2bd57b82549566963effadf0891a141448d9f89c7d48fca0b8f823b854bac6"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.5.2-xcode/Libdav1d.xcframework.zip",
            checksum: "8a8b78e23e28ecc213232805f3c1936141fc9befe113e87234f4f897f430a532"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavcodec.xcframework.zip",
            checksum: "f0996abd267daeecd8f98fb960f152a7a7204d5884c02926d93a712eef42c46e"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavdevice.xcframework.zip",
            checksum: "71a00769f4417fe8d2d16ba96982645fe0812f5d8118cc15d6b24ac65f52b2e3"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavformat.xcframework.zip",
            checksum: "438e351a6f056b12b6077dd654b8eebfc0a73b6fc458b57af6a0fbb126ac8543"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavfilter.xcframework.zip",
            checksum: "2e83ad1af5cec306ac9841829237b2afbc975528c9d094845012d1b0ef07ba80"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libavutil.xcframework.zip",
            checksum: "308e49389ebe86ea4707ee19220caeb3f2fafb56d3f63020db6d1e6b5dc49ca1"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libswresample.xcframework.zip",
            checksum: "018eaf3a5e4d28a7e0f5c30c767840150bd78105b7f5a05912e55770c4ad684f"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libswscale.xcframework.zip",
            checksum: "0729c329235def1aee270eb78644da41f939d50d29ee433bbb9dd48ceb7e7fc6"
        ),

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8-xcode/Libuchardet.xcframework.zip",
            checksum: "503202caa0dafb6996b2443f53408a713b49f6c2d4a26d7856fd6143513a50d7"
        ),

        .binaryTarget(
            name: "Libmpv",
            url: "https://github.com/edde746/MPVKit/releases/download/0.41.0/Libmpv.xcframework.zip",
            checksum: "060d5b3405353f0fa4d3b63c68e09d2d51db8a28bbc77ef61b5bd2d2826da1a2"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
