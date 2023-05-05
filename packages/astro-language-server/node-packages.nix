# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@astrojs/compiler-1.4.1" = {
      name = "_at_astrojs_slash_compiler";
      packageName = "@astrojs/compiler";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/@astrojs/compiler/-/compiler-1.4.1.tgz";
        sha512 = "aXAxapNWZwGN41P+Am/ma/2kAzKOhMNaY6YuvLkUHFv+UZkmDHD6F0fE1sQA2Up0bLjgPQa1VQzoAaii5tZWaA==";
      };
    };
    "@emmetio/abbreviation-2.3.2" = {
      name = "_at_emmetio_slash_abbreviation";
      packageName = "@emmetio/abbreviation";
      version = "2.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/abbreviation/-/abbreviation-2.3.2.tgz";
        sha512 = "8vqkn4rtjm5Zv34RPgsq3/ij88ri+IcfC2MxPELytrQvfpaLyppscE0YSwDVuIUR6KL5GCBUfr5Mo7SHSbswpA==";
      };
    };
    "@emmetio/css-abbreviation-2.1.7" = {
      name = "_at_emmetio_slash_css-abbreviation";
      packageName = "@emmetio/css-abbreviation";
      version = "2.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/css-abbreviation/-/css-abbreviation-2.1.7.tgz";
        sha512 = "nrOt3/QROjYYK1cMjoO5fCfHIf0hFpcZeQQt7Ew6ixZ0ElEEs77ijnY57HC6ti91W/mn+c1T7ET8sClBMRHHBg==";
      };
    };
    "@emmetio/scanner-1.0.3" = {
      name = "_at_emmetio_slash_scanner";
      packageName = "@emmetio/scanner";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@emmetio/scanner/-/scanner-1.0.3.tgz";
        sha512 = "/EFyTijquAwKMGSBd50RnjxsfDXmZAFp71PGu7sM6LEnEJXMV+FKL7Rvr6YLu4czQmPVRsfyhcbQz+WZnM4AZw==";
      };
    };
    "@jridgewell/resolve-uri-3.1.0" = {
      name = "_at_jridgewell_slash_resolve-uri";
      packageName = "@jridgewell/resolve-uri";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/resolve-uri/-/resolve-uri-3.1.0.tgz";
        sha512 = "F2msla3tad+Mfht5cJq7LSXcdudKTWCVYUgw6pLFOOHSTtZlj6SWNYAp+AhuqLmWdBO2X5hPrLcu8cVP8fy28w==";
      };
    };
    "@jridgewell/sourcemap-codec-1.4.14" = {
      name = "_at_jridgewell_slash_sourcemap-codec";
      packageName = "@jridgewell/sourcemap-codec";
      version = "1.4.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.4.14.tgz";
        sha512 = "XPSJHWmi394fuUuzDnGz1wiKqWfo1yXecHQMRf2l6hztTO+nPru658AyDngaBe7isIxEkRsPR3FZh+s7iVa4Uw==";
      };
    };
    "@jridgewell/trace-mapping-0.3.18" = {
      name = "_at_jridgewell_slash_trace-mapping";
      packageName = "@jridgewell/trace-mapping";
      version = "0.3.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/@jridgewell/trace-mapping/-/trace-mapping-0.3.18.tgz";
        sha512 = "w+niJYzMHdd7USdiH2U6869nqhD2nbfZXND5Yp93qIbEmnDNk7PD48o+YchRVpzMU7M6jVCbenTR7PA1FLQ9pA==";
      };
    };
    "@nodelib/fs.scandir-2.1.5" = {
      name = "_at_nodelib_slash_fs.scandir";
      packageName = "@nodelib/fs.scandir";
      version = "2.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz";
        sha512 = "vq24Bq3ym5HEQm2NKCr3yXDwjc7vTsEThRDnkp2DK9p1uqLR+DHurm/NOTo0KG7HYHU7eppKZj3MyqYuMBf62g==";
      };
    };
    "@nodelib/fs.stat-2.0.5" = {
      name = "_at_nodelib_slash_fs.stat";
      packageName = "@nodelib/fs.stat";
      version = "2.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz";
        sha512 = "RkhPPp2zrqDAQA/2jNhnztcPAlv64XdhIp7a7454A5ovI7Bukxgt7MX7udwAu3zg1DcpPU0rz3VV1SeaqvY4+A==";
      };
    };
    "@nodelib/fs.walk-1.2.8" = {
      name = "_at_nodelib_slash_fs.walk";
      packageName = "@nodelib/fs.walk";
      version = "1.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz";
        sha512 = "oGB+UxlgWcgQkgwo8GcEGwemoTFt3FIO9ababBmaGwXIoBKZ+GTy0pP185beGg7Llih/NSHSV2XAs1lnznocSg==";
      };
    };
    "@pkgr/utils-2.4.0" = {
      name = "_at_pkgr_slash_utils";
      packageName = "@pkgr/utils";
      version = "2.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@pkgr/utils/-/utils-2.4.0.tgz";
        sha512 = "2OCURAmRtdlL8iUDTypMrrxfwe8frXTeXaxGsVOaYtc/wrUyk8Z/0OBetM7cdlsy7ZFWlMX72VogKeh+A4Xcjw==";
      };
    };
    "@vscode/emmet-helper-2.8.8" = {
      name = "_at_vscode_slash_emmet-helper";
      packageName = "@vscode/emmet-helper";
      version = "2.8.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vscode/emmet-helper/-/emmet-helper-2.8.8.tgz";
        sha512 = "QuD4CmNeXSFxuP8VZwI6qL+8vmmd7JcSdwsEIdsrzb4YumWs/+4rXRX9MM+NsFfUO69g6ezngCD7XRd6jY9TQw==";
      };
    };
    "@vscode/l10n-0.0.13" = {
      name = "_at_vscode_slash_l10n";
      packageName = "@vscode/l10n";
      version = "0.0.13";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vscode/l10n/-/l10n-0.0.13.tgz";
        sha512 = "A3uY356uOU9nGa+TQIT/i3ziWUgJjVMUrGGXSrtRiTwklyCFjGVWIOHoEIHbJpiyhDkJd9kvIWUOfXK1IkK8XQ==";
      };
    };
    "big-integer-1.6.51" = {
      name = "big-integer";
      packageName = "big-integer";
      version = "1.6.51";
      src = fetchurl {
        url = "https://registry.npmjs.org/big-integer/-/big-integer-1.6.51.tgz";
        sha512 = "GPEid2Y9QU1Exl1rpO9B2IPJGHPSupF5GnVIP0blYvNOMer2bTvSWs1jGOUg04hTmu67nmLsQ9TBo1puaotBHg==";
      };
    };
    "bplist-parser-0.2.0" = {
      name = "bplist-parser";
      packageName = "bplist-parser";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bplist-parser/-/bplist-parser-0.2.0.tgz";
        sha512 = "z0M+byMThzQmD9NILRniCUXYsYpjwnlO8N5uCFaCqIOpqRsJCrQL9NK3JsD67CN5a08nF5oIL2bD6loTdHOuKw==";
      };
    };
    "braces-3.0.2" = {
      name = "braces";
      packageName = "braces";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/braces/-/braces-3.0.2.tgz";
        sha512 = "b8um+L1RzM3WDSzvhm6gIz1yfTbBt6YTlcEKAvsmqCZZFw46z626lVj9j1yEPW33H5H+lBQpZMP1k8l+78Ha0A==";
      };
    };
    "bundle-name-3.0.0" = {
      name = "bundle-name";
      packageName = "bundle-name";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bundle-name/-/bundle-name-3.0.0.tgz";
        sha512 = "PKA4BeSvBpQKQ8iPOGCSiell+N8P+Tf1DlwqmYhpe2gAhKPHn8EYOxVT+ShuGmhg8lN8XiSlS80yiExKXrURlw==";
      };
    };
    "cross-spawn-7.0.3" = {
      name = "cross-spawn";
      packageName = "cross-spawn";
      version = "7.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-7.0.3.tgz";
        sha512 = "iRDPJKUPVEND7dHPO8rkbOnPpyDygcDFtWjpeWNCgy8WP2rXcxXL8TskReQl6OrB2G7+UJrags1q15Fudc7G6w==";
      };
    };
    "default-browser-4.0.0" = {
      name = "default-browser";
      packageName = "default-browser";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/default-browser/-/default-browser-4.0.0.tgz";
        sha512 = "wX5pXO1+BrhMkSbROFsyxUm0i/cJEScyNhA4PPxc41ICuv05ZZB/MX28s8aZx6xjmatvebIapF6hLEKEcpneUA==";
      };
    };
    "default-browser-id-3.0.0" = {
      name = "default-browser-id";
      packageName = "default-browser-id";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/default-browser-id/-/default-browser-id-3.0.0.tgz";
        sha512 = "OZ1y3y0SqSICtE8DE4S8YOE9UZOJ8wO16fKWVP5J1Qz42kV9jcnMVFrEE/noXb/ss3Q4pZIH79kxofzyNNtUNA==";
      };
    };
    "define-lazy-prop-3.0.0" = {
      name = "define-lazy-prop";
      packageName = "define-lazy-prop";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/define-lazy-prop/-/define-lazy-prop-3.0.0.tgz";
        sha512 = "N+MeXYoqr3pOgn8xfyRPREN7gHakLYjhsHhWGT3fWAiL4IkAt0iDw14QiiEm2bE30c5XX5q0FtAA3CK5f9/BUg==";
      };
    };
    "emmet-2.4.3" = {
      name = "emmet";
      packageName = "emmet";
      version = "2.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/emmet/-/emmet-2.4.3.tgz";
        sha512 = "Bq6zozVDVrLbBmKdosI9Q2DvrFh/ehwnNjgDRsvGVjPOEAhMKie9HwQnPuUi3NOZ2itVGyRwsLAdufnG9DVFwg==";
      };
    };
    "events-3.3.0" = {
      name = "events";
      packageName = "events";
      version = "3.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/events/-/events-3.3.0.tgz";
        sha512 = "mQw+2fkQbALzQ7V0MY0IqdnXNOeTtP4r0lN9z7AAawCXgqea7bDii20AYrIBrFd/Hx0M2Ocz6S111CaFkUcb0Q==";
      };
    };
    "execa-5.1.1" = {
      name = "execa";
      packageName = "execa";
      version = "5.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/execa/-/execa-5.1.1.tgz";
        sha512 = "8uSpZZocAZRBAPIEINJj3Lo9HyGitllczc27Eh5YYojjMFMn8yHMDMaUHE2Jqfq05D/wucwI4JGURyXt1vchyg==";
      };
    };
    "execa-7.1.1" = {
      name = "execa";
      packageName = "execa";
      version = "7.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/execa/-/execa-7.1.1.tgz";
        sha512 = "wH0eMf/UXckdUYnO21+HDztteVv05rq2GXksxT4fCGeHkBhw1DROXh40wcjMcRqDOWE7iPJ4n3M7e2+YFP+76Q==";
      };
    };
    "fast-glob-3.2.12" = {
      name = "fast-glob";
      packageName = "fast-glob";
      version = "3.2.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-glob/-/fast-glob-3.2.12.tgz";
        sha512 = "DVj4CQIYYow0BlaelwK1pHl5n5cRSJfM60UA0zK891sVInoPri2Ekj7+e1CT3/3qxXenpI+nBBmQAcJPJgaj4w==";
      };
    };
    "fastq-1.15.0" = {
      name = "fastq";
      packageName = "fastq";
      version = "1.15.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fastq/-/fastq-1.15.0.tgz";
        sha512 = "wBrocU2LCXXa+lWBt8RoIRD89Fi8OdABODa/kEnyeyjS5aZO5/GNvI5sEINADqP/h8M29UHTHUb53sUu5Ihqdw==";
      };
    };
    "fill-range-7.0.1" = {
      name = "fill-range";
      packageName = "fill-range";
      version = "7.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/fill-range/-/fill-range-7.0.1.tgz";
        sha512 = "qOo9F+dMUmC2Lcb4BbVvnKJxTPjCm+RRpe4gDuGrzkL7mEVl/djYSu2OdQ2Pa302N4oqkSg9ir6jaLWJ2USVpQ==";
      };
    };
    "get-stream-6.0.1" = {
      name = "get-stream";
      packageName = "get-stream";
      version = "6.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-stream/-/get-stream-6.0.1.tgz";
        sha512 = "ts6Wi+2j3jQjqi70w5AlN8DFnkSwC+MqmxEzdEALB2qXZYV3X/b1CTfgPLGJNMeAWxdPfU8FO1ms3NUfaHCPYg==";
      };
    };
    "glob-parent-5.1.2" = {
      name = "glob-parent";
      packageName = "glob-parent";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.2.tgz";
        sha512 = "AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==";
      };
    };
    "human-signals-2.1.0" = {
      name = "human-signals";
      packageName = "human-signals";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/human-signals/-/human-signals-2.1.0.tgz";
        sha512 = "B4FFZ6q/T2jhhksgkbEW3HBvWIfDW85snkQgawt07S7J5QXTk6BkNV+0yAeZrM5QpMAdYlocGoljn0sJ/WQkFw==";
      };
    };
    "human-signals-4.3.1" = {
      name = "human-signals";
      packageName = "human-signals";
      version = "4.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/human-signals/-/human-signals-4.3.1.tgz";
        sha512 = "nZXjEF2nbo7lIw3mgYjItAfgQXog3OjJogSbKa2CQIIvSGWcKgeJnQlNXip6NglNzYH45nSRiEVimMvYL8DDqQ==";
      };
    };
    "is-docker-2.2.1" = {
      name = "is-docker";
      packageName = "is-docker";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-docker/-/is-docker-2.2.1.tgz";
        sha512 = "F+i2BKsFrH66iaUFc0woD8sLy8getkwTwtOBjvs56Cx4CgJDeKQeqfz8wAYiSb8JOprWhHH5p77PbmYCvvUuXQ==";
      };
    };
    "is-docker-3.0.0" = {
      name = "is-docker";
      packageName = "is-docker";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-docker/-/is-docker-3.0.0.tgz";
        sha512 = "eljcgEDlEns/7AXFosB5K/2nCM4P7FQPkGc/DWLy5rmFEWvZayGrik1d9/QIY5nJ4f9YsVvBkA6kJpHn9rISdQ==";
      };
    };
    "is-extglob-2.1.1" = {
      name = "is-extglob";
      packageName = "is-extglob";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz";
        sha512 = "SbKbANkN603Vi4jEZv49LeVJMn4yGwsbzZworEoyEiutsN3nJYdbO36zfhGJ6QEDpOZIFkDtnq5JRxmvl3jsoQ==";
      };
    };
    "is-glob-4.0.3" = {
      name = "is-glob";
      packageName = "is-glob";
      version = "4.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-glob/-/is-glob-4.0.3.tgz";
        sha512 = "xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==";
      };
    };
    "is-inside-container-1.0.0" = {
      name = "is-inside-container";
      packageName = "is-inside-container";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-inside-container/-/is-inside-container-1.0.0.tgz";
        sha512 = "KIYLCCJghfHZxqjYBE7rEy0OBuTd5xCHS7tHVgvCLkx7StIoaxwNW3hCALgEUjFfeRk+MG/Qxmp/vtETEF3tRA==";
      };
    };
    "is-number-7.0.0" = {
      name = "is-number";
      packageName = "is-number";
      version = "7.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-number/-/is-number-7.0.0.tgz";
        sha512 = "41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==";
      };
    };
    "is-stream-2.0.1" = {
      name = "is-stream";
      packageName = "is-stream";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-2.0.1.tgz";
        sha512 = "hFoiJiTl63nn+kstHGBtewWSKnQLpyb155KHheA1l39uvtO9nWIop1p3udqPcUd/xbF1VLMO4n7OI6p7RbngDg==";
      };
    };
    "is-stream-3.0.0" = {
      name = "is-stream";
      packageName = "is-stream";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-3.0.0.tgz";
        sha512 = "LnQR4bZ9IADDRSkvpqMGvt/tEJWclzklNgSw48V5EAaAeDd6qGvN8ei6k5p0tvxSR171VmGyHuTiAOfxAbr8kA==";
      };
    };
    "is-wsl-2.2.0" = {
      name = "is-wsl";
      packageName = "is-wsl";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-wsl/-/is-wsl-2.2.0.tgz";
        sha512 = "fKzAra0rGJUUBwGBgNkHZuToZcn+TtXHpeCgmkMJMMYx1sQDYaCSyjJBSCa2nH1DGm7s3n1oBnohoVTBaN7Lww==";
      };
    };
    "isexe-2.0.0" = {
      name = "isexe";
      packageName = "isexe";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        sha512 = "RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      };
    };
    "jsonc-parser-2.3.1" = {
      name = "jsonc-parser";
      packageName = "jsonc-parser";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonc-parser/-/jsonc-parser-2.3.1.tgz";
        sha512 = "H8jvkz1O50L3dMZCsLqiuB2tA7muqbSg1AtGEkN0leAqGjsUzDJir3Zwr02BhqdcITPg3ei3mZ+HjMocAknhhg==";
      };
    };
    "merge-stream-2.0.0" = {
      name = "merge-stream";
      packageName = "merge-stream";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/merge-stream/-/merge-stream-2.0.0.tgz";
        sha512 = "abv/qOcuPfk3URPfDzmZU1LKmuw8kT+0nIHvKrKgFrwifol/doWcdA4ZqsWQ8ENrFKkd67Mfpo/LovbIUsbt3w==";
      };
    };
    "merge2-1.4.1" = {
      name = "merge2";
      packageName = "merge2";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/merge2/-/merge2-1.4.1.tgz";
        sha512 = "8q7VEgMJW4J8tcfVPy8g09NcQwZdbwFEqhe/WZkoIzjn/3TGDwtOCYtXGxA3O8tPzpczCCDgv+P2P5y00ZJOOg==";
      };
    };
    "micromatch-4.0.5" = {
      name = "micromatch";
      packageName = "micromatch";
      version = "4.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/micromatch/-/micromatch-4.0.5.tgz";
        sha512 = "DMy+ERcEW2q8Z2Po+WNXuw3c5YaUSFjAO5GsJqfEl7UjvtIuFKO6ZrKvcItdy98dwFI2N1tg3zNIdKaQT+aNdA==";
      };
    };
    "mimic-fn-2.1.0" = {
      name = "mimic-fn";
      packageName = "mimic-fn";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-fn/-/mimic-fn-2.1.0.tgz";
        sha512 = "OqbOk5oEQeAZ8WXWydlu9HJjz9WVdEIvamMCcXmuqUYjTknH/sqsWvhQ3vgwKFRR1HpjvNBKQ37nbJgYzGqGcg==";
      };
    };
    "mimic-fn-4.0.0" = {
      name = "mimic-fn";
      packageName = "mimic-fn";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-fn/-/mimic-fn-4.0.0.tgz";
        sha512 = "vqiC06CuhBTUdZH+RYl8sFrL096vA45Ok5ISO6sE/Mr1jRbGH4Csnhi8f3wKVl7x8mO4Au7Ir9D3Oyv1VYMFJw==";
      };
    };
    "npm-run-path-4.0.1" = {
      name = "npm-run-path";
      packageName = "npm-run-path";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/npm-run-path/-/npm-run-path-4.0.1.tgz";
        sha512 = "S48WzZW777zhNIrn7gxOlISNAqi9ZC/uQFnRdbeIHhZhCA6UqpkOT8T1G7BvfdgP4Er8gF4sUbaS0i7QvIfCWw==";
      };
    };
    "npm-run-path-5.1.0" = {
      name = "npm-run-path";
      packageName = "npm-run-path";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/npm-run-path/-/npm-run-path-5.1.0.tgz";
        sha512 = "sJOdmRGrY2sjNTRMbSvluQqg+8X7ZK61yvzBEIDhz4f8z1TZFYABsqjjCBd/0PUNE9M6QDgHJXQkGUEm7Q+l9Q==";
      };
    };
    "onetime-5.1.2" = {
      name = "onetime";
      packageName = "onetime";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/onetime/-/onetime-5.1.2.tgz";
        sha512 = "kbpaSSGJTWdAY5KPVeMOKXSrPtr8C8C7wodJbcsd51jRnmD+GZu8Y0VoU6Dm5Z4vWr0Ig/1NKuWRKf7j5aaYSg==";
      };
    };
    "onetime-6.0.0" = {
      name = "onetime";
      packageName = "onetime";
      version = "6.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/onetime/-/onetime-6.0.0.tgz";
        sha512 = "1FlR+gjXK7X+AsAHso35MnyN5KqGwJRi/31ft6x0M194ht7S+rWAvd7PHss9xSKMzE0asv1pyIHaJYq+BbacAQ==";
      };
    };
    "open-9.1.0" = {
      name = "open";
      packageName = "open";
      version = "9.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/open/-/open-9.1.0.tgz";
        sha512 = "OS+QTnw1/4vrf+9hh1jc1jnYjzSG4ttTBB8UxOwAnInG3Uo4ssetzC1ihqaIHjLJnA5GGlRl6QlZXOTQhRBUvg==";
      };
    };
    "path-key-3.1.1" = {
      name = "path-key";
      packageName = "path-key";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-3.1.1.tgz";
        sha512 = "ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
      };
    };
    "path-key-4.0.0" = {
      name = "path-key";
      packageName = "path-key";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-4.0.0.tgz";
        sha512 = "haREypq7xkM7ErfgIyA0z+Bj4AGKlMSdlQE2jvJo6huWD1EdkKYV+G/T4nq0YEF2vgTT8kqMFKo1uHn950r4SQ==";
      };
    };
    "picocolors-1.0.0" = {
      name = "picocolors";
      packageName = "picocolors";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/picocolors/-/picocolors-1.0.0.tgz";
        sha512 = "1fygroTLlHu66zi26VoTDv8yRgm0Fccecssto+MhsZ0D/DGW2sm8E8AjW7NU5VVTRt5GxbeZ5qBuJr+HyLYkjQ==";
      };
    };
    "picomatch-2.3.1" = {
      name = "picomatch";
      packageName = "picomatch";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz";
        sha512 = "JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==";
      };
    };
    "prettier-2.8.8" = {
      name = "prettier";
      packageName = "prettier";
      version = "2.8.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/prettier/-/prettier-2.8.8.tgz";
        sha512 = "tdN8qQGvNjw4CHbY+XXk0JgCXn9QiF21a55rBe5LJAU+kDyC4WQn4+awm2Xfk2lQMk5fKup9XgzTZtGkjBdP9Q==";
      };
    };
    "prettier-plugin-astro-0.8.0" = {
      name = "prettier-plugin-astro";
      packageName = "prettier-plugin-astro";
      version = "0.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/prettier-plugin-astro/-/prettier-plugin-astro-0.8.0.tgz";
        sha512 = "kt9wk33J7HvFGwFaHb8piwy4zbUmabC8Nu+qCw493jhe96YkpjscqGBPy4nJ9TPy9pd7+kEx1zM81rp+MIdrXg==";
      };
    };
    "queue-microtask-1.2.3" = {
      name = "queue-microtask";
      packageName = "queue-microtask";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/queue-microtask/-/queue-microtask-1.2.3.tgz";
        sha512 = "NuaNSa6flKT5JaSYQzJok04JzTL1CA6aGhv5rfLW3PgqA+M2ChpZQnAC8h8i4ZFkBS8X5RqkDBHA7r4hej3K9A==";
      };
    };
    "reusify-1.0.4" = {
      name = "reusify";
      packageName = "reusify";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/reusify/-/reusify-1.0.4.tgz";
        sha512 = "U9nH88a3fc/ekCF1l0/UP1IosiuIjyTh7hBvXVMHYgVcfGvt897Xguj2UOLDeI5BG2m7/uwyaLVT6fbtCwTyzw==";
      };
    };
    "run-applescript-5.0.0" = {
      name = "run-applescript";
      packageName = "run-applescript";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/run-applescript/-/run-applescript-5.0.0.tgz";
        sha512 = "XcT5rBksx1QdIhlFOCtgZkB99ZEouFZ1E2Kc2LHqNW13U3/74YGdkQRmThTwxy4QIyookibDKYZOPqX//6BlAg==";
      };
    };
    "run-parallel-1.2.0" = {
      name = "run-parallel";
      packageName = "run-parallel";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/run-parallel/-/run-parallel-1.2.0.tgz";
        sha512 = "5l4VyZR86LZ/lDxZTR6jqL8AFE2S0IFLMP26AbjsLVADxHdhB/c0GUsH+y39UfCi3dzz8OlQuPmnaJOMoDHQBA==";
      };
    };
    "s.color-0.0.15" = {
      name = "s.color";
      packageName = "s.color";
      version = "0.0.15";
      src = fetchurl {
        url = "https://registry.npmjs.org/s.color/-/s.color-0.0.15.tgz";
        sha512 = "AUNrbEUHeKY8XsYr/DYpl+qk5+aM+DChopnWOPEzn8YKzOhv4l2zH6LzZms3tOZP3wwdOyc0RmTciyi46HLIuA==";
      };
    };
    "sass-formatter-0.7.6" = {
      name = "sass-formatter";
      packageName = "sass-formatter";
      version = "0.7.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/sass-formatter/-/sass-formatter-0.7.6.tgz";
        sha512 = "hXdxU6PCkiV3XAiSnX+XLqz2ohHoEnVUlrd8LEVMAI80uB1+OTScIkH9n6qQwImZpTye1r1WG1rbGUteHNhoHg==";
      };
    };
    "shebang-command-2.0.0" = {
      name = "shebang-command";
      packageName = "shebang-command";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-command/-/shebang-command-2.0.0.tgz";
        sha512 = "kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==";
      };
    };
    "shebang-regex-3.0.0" = {
      name = "shebang-regex";
      packageName = "shebang-regex";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-3.0.0.tgz";
        sha512 = "7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==";
      };
    };
    "signal-exit-3.0.7" = {
      name = "signal-exit";
      packageName = "signal-exit";
      version = "3.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.7.tgz";
        sha512 = "wnD2ZE+l+SPC/uoS0vXeE9L1+0wuaMqKlfz9AMUo38JsyLSBWSFcHR1Rri62LZc12vLr1gb3jl7iwQhgwpAbGQ==";
      };
    };
    "strip-final-newline-2.0.0" = {
      name = "strip-final-newline";
      packageName = "strip-final-newline";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-final-newline/-/strip-final-newline-2.0.0.tgz";
        sha512 = "BrpvfNAE3dcvq7ll3xVumzjKjZQ5tI1sEUIKr3Uoks0XUl45St3FlatVqef9prk4jRDzhW6WZg+3bk93y6pLjA==";
      };
    };
    "strip-final-newline-3.0.0" = {
      name = "strip-final-newline";
      packageName = "strip-final-newline";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-final-newline/-/strip-final-newline-3.0.0.tgz";
        sha512 = "dOESqjYr96iWYylGObzd39EuNTa5VJxyvVAEm5Jnh7KGo75V43Hk1odPQkNDyXNmUR6k+gEiDVXnjB8HJ3crXw==";
      };
    };
    "suf-log-2.5.3" = {
      name = "suf-log";
      packageName = "suf-log";
      version = "2.5.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/suf-log/-/suf-log-2.5.3.tgz";
        sha512 = "KvC8OPjzdNOe+xQ4XWJV2whQA0aM1kGVczMQ8+dStAO6KfEB140JEVQ9dE76ONZ0/Ylf67ni4tILPJB41U0eow==";
      };
    };
    "synckit-0.8.5" = {
      name = "synckit";
      packageName = "synckit";
      version = "0.8.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/synckit/-/synckit-0.8.5.tgz";
        sha512 = "L1dapNV6vu2s/4Sputv8xGsCdAVlb5nRDMFU/E27D44l5U6cw1g0dGd45uLc+OXjNMmF4ntiMdCimzcjFKQI8Q==";
      };
    };
    "titleize-3.0.0" = {
      name = "titleize";
      packageName = "titleize";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/titleize/-/titleize-3.0.0.tgz";
        sha512 = "KxVu8EYHDPBdUYdKZdKtU2aj2XfEx9AfjXxE/Aj0vT06w2icA09Vus1rh6eSu1y01akYg6BjIK/hxyLJINoMLQ==";
      };
    };
    "to-regex-range-5.0.1" = {
      name = "to-regex-range";
      packageName = "to-regex-range";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha512 = "65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==";
      };
    };
    "tslib-2.5.0" = {
      name = "tslib";
      packageName = "tslib";
      version = "2.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tslib/-/tslib-2.5.0.tgz";
        sha512 = "336iVw3rtn2BUK7ORdIAHTyxHGRIHVReokCR3XjbckJMK7ms8FysBfhLR8IXnAgy7T0PTPNBWKiH514FOW/WSg==";
      };
    };
    "untildify-4.0.0" = {
      name = "untildify";
      packageName = "untildify";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/untildify/-/untildify-4.0.0.tgz";
        sha512 = "KK8xQ1mkzZeg9inewmFVDNkg3l5LUhoq9kN6iWYB/CC9YMG8HA+c1Q8HwDe6dEX7kErrEVNVBO3fWsVq5iDgtw==";
      };
    };
    "vscode-css-languageservice-6.2.5" = {
      name = "vscode-css-languageservice";
      packageName = "vscode-css-languageservice";
      version = "6.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-css-languageservice/-/vscode-css-languageservice-6.2.5.tgz";
        sha512 = "/1oyBZK3jfx6A0cA46FCUpy6OlqEsMT47LUIldCIP1YMKRYezJ9No+aNj9IM0AqhRZ92DxZ1DmU5lJ+biuiacA==";
      };
    };
    "vscode-html-languageservice-5.0.5" = {
      name = "vscode-html-languageservice";
      packageName = "vscode-html-languageservice";
      version = "5.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-html-languageservice/-/vscode-html-languageservice-5.0.5.tgz";
        sha512 = "7788ZT+I7/UhFoI4+bzaAiGGZEW7X39kTeuytLtw6jJA6W7ez85bWKYoFDcwrPNmywj3n/IkU9Op9asaje44jg==";
      };
    };
    "vscode-jsonrpc-8.1.0" = {
      name = "vscode-jsonrpc";
      packageName = "vscode-jsonrpc";
      version = "8.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-jsonrpc/-/vscode-jsonrpc-8.1.0.tgz";
        sha512 = "6TDy/abTQk+zDGYazgbIPc+4JoXdwC8NHU9Pbn4UJP1fehUyZmM4RHp5IthX7A6L5KS30PRui+j+tbbMMMafdw==";
      };
    };
    "vscode-languageserver-8.1.0" = {
      name = "vscode-languageserver";
      packageName = "vscode-languageserver";
      version = "8.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver/-/vscode-languageserver-8.1.0.tgz";
        sha512 = "eUt8f1z2N2IEUDBsKaNapkz7jl5QpskN2Y0G01T/ItMxBxw1fJwvtySGB9QMecatne8jFIWJGWI61dWjyTLQsw==";
      };
    };
    "vscode-languageserver-protocol-3.17.3" = {
      name = "vscode-languageserver-protocol";
      packageName = "vscode-languageserver-protocol";
      version = "3.17.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-protocol/-/vscode-languageserver-protocol-3.17.3.tgz";
        sha512 = "924/h0AqsMtA5yK22GgMtCYiMdCOtWTSGgUOkgEDX+wk2b0x4sAfLiO4NxBxqbiVtz7K7/1/RgVrVI0NClZwqA==";
      };
    };
    "vscode-languageserver-textdocument-1.0.10" = {
      name = "vscode-languageserver-textdocument";
      packageName = "vscode-languageserver-textdocument";
      version = "1.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-textdocument/-/vscode-languageserver-textdocument-1.0.10.tgz";
        sha512 = "dPA6WqtAQJ/Iopm0Hrj11VvaKxsEcm62jpqyaYbY0xuvUffeWAn77f3VKr2SCsJphSyEw4Fjkjqm2gQ24KQfrA==";
      };
    };
    "vscode-languageserver-types-3.17.3" = {
      name = "vscode-languageserver-types";
      packageName = "vscode-languageserver-types";
      version = "3.17.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-languageserver-types/-/vscode-languageserver-types-3.17.3.tgz";
        sha512 = "SYU4z1dL0PyIMd4Vj8YOqFvHu7Hz/enbWtpfnVbJHU4Nd1YNYx8u0ennumc6h48GQNeOLxmwySmnADouT/AuZA==";
      };
    };
    "vscode-uri-2.1.2" = {
      name = "vscode-uri";
      packageName = "vscode-uri";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-uri/-/vscode-uri-2.1.2.tgz";
        sha512 = "8TEXQxlldWAuIODdukIb+TR5s+9Ds40eSJrw+1iDDA9IFORPjMELarNQE3myz5XIkWWpdprmJjm1/SxMlWOC8A==";
      };
    };
    "vscode-uri-3.0.7" = {
      name = "vscode-uri";
      packageName = "vscode-uri";
      version = "3.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/vscode-uri/-/vscode-uri-3.0.7.tgz";
        sha512 = "eOpPHogvorZRobNqJGhapa0JdwaxpjVvyBp0QIUMRMSf8ZAlqOdEquKuRmw9Qwu0qXtJIWqFtMkmvJjUZmMjVA==";
      };
    };
    "which-2.0.2" = {
      name = "which";
      packageName = "which";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-2.0.2.tgz";
        sha512 = "BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      };
    };
  };
in
{
  "@astrojs/language-server" = nodeEnv.buildNodePackage {
    name = "_at_astrojs_slash_language-server";
    packageName = "@astrojs/language-server";
    version = "1.0.4";
    src = fetchurl {
      url = "https://registry.npmjs.org/@astrojs/language-server/-/language-server-1.0.4.tgz";
      sha512 = "H13Lt7pH1Dw5Ht1/y9VNAej174/WnwO+KH9UVl3BYbZNQftG5Yezc44zKC23L6UZ6/7753za8JouZcDP/vViWA==";
    };
    dependencies = [
      sources."@astrojs/compiler-1.4.1"
      sources."@emmetio/abbreviation-2.3.2"
      sources."@emmetio/css-abbreviation-2.1.7"
      sources."@emmetio/scanner-1.0.3"
      sources."@jridgewell/resolve-uri-3.1.0"
      sources."@jridgewell/sourcemap-codec-1.4.14"
      sources."@jridgewell/trace-mapping-0.3.18"
      sources."@nodelib/fs.scandir-2.1.5"
      sources."@nodelib/fs.stat-2.0.5"
      sources."@nodelib/fs.walk-1.2.8"
      sources."@pkgr/utils-2.4.0"
      (sources."@vscode/emmet-helper-2.8.8" // {
        dependencies = [
          sources."vscode-uri-2.1.2"
        ];
      })
      sources."@vscode/l10n-0.0.13"
      sources."big-integer-1.6.51"
      sources."bplist-parser-0.2.0"
      sources."braces-3.0.2"
      sources."bundle-name-3.0.0"
      sources."cross-spawn-7.0.3"
      sources."default-browser-4.0.0"
      sources."default-browser-id-3.0.0"
      sources."define-lazy-prop-3.0.0"
      sources."emmet-2.4.3"
      sources."events-3.3.0"
      (sources."execa-7.1.1" // {
        dependencies = [
          sources."human-signals-4.3.1"
          sources."is-stream-3.0.0"
          sources."mimic-fn-4.0.0"
          sources."npm-run-path-5.1.0"
          sources."onetime-6.0.0"
          sources."path-key-4.0.0"
          sources."strip-final-newline-3.0.0"
        ];
      })
      sources."fast-glob-3.2.12"
      sources."fastq-1.15.0"
      sources."fill-range-7.0.1"
      sources."get-stream-6.0.1"
      sources."glob-parent-5.1.2"
      sources."human-signals-2.1.0"
      sources."is-docker-3.0.0"
      sources."is-extglob-2.1.1"
      sources."is-glob-4.0.3"
      sources."is-inside-container-1.0.0"
      sources."is-number-7.0.0"
      sources."is-stream-2.0.1"
      (sources."is-wsl-2.2.0" // {
        dependencies = [
          sources."is-docker-2.2.1"
        ];
      })
      sources."isexe-2.0.0"
      sources."jsonc-parser-2.3.1"
      sources."merge-stream-2.0.0"
      sources."merge2-1.4.1"
      sources."micromatch-4.0.5"
      sources."mimic-fn-2.1.0"
      sources."npm-run-path-4.0.1"
      sources."onetime-5.1.2"
      sources."open-9.1.0"
      sources."path-key-3.1.1"
      sources."picocolors-1.0.0"
      sources."picomatch-2.3.1"
      sources."prettier-2.8.8"
      sources."prettier-plugin-astro-0.8.0"
      sources."queue-microtask-1.2.3"
      sources."reusify-1.0.4"
      (sources."run-applescript-5.0.0" // {
        dependencies = [
          sources."execa-5.1.1"
        ];
      })
      sources."run-parallel-1.2.0"
      sources."s.color-0.0.15"
      sources."sass-formatter-0.7.6"
      sources."shebang-command-2.0.0"
      sources."shebang-regex-3.0.0"
      sources."signal-exit-3.0.7"
      sources."strip-final-newline-2.0.0"
      sources."suf-log-2.5.3"
      sources."synckit-0.8.5"
      sources."titleize-3.0.0"
      sources."to-regex-range-5.0.1"
      sources."tslib-2.5.0"
      sources."untildify-4.0.0"
      sources."vscode-css-languageservice-6.2.5"
      sources."vscode-html-languageservice-5.0.5"
      sources."vscode-jsonrpc-8.1.0"
      sources."vscode-languageserver-8.1.0"
      sources."vscode-languageserver-protocol-3.17.3"
      sources."vscode-languageserver-textdocument-1.0.10"
      sources."vscode-languageserver-types-3.17.3"
      sources."vscode-uri-3.0.7"
      sources."which-2.0.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "The Astro language server, implement the [language server protocol](https://microsoft.github.io/language-server-protocol/)";
      homepage = "https://github.com/withastro/language-tools#readme";
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}
