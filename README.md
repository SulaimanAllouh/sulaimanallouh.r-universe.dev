# Sulaiman M. S. Allouh · R package registry

[العربية](#بالعربية) · [Research project](https://github.com/SulaimanAllouh/gaza-resilient-homes-research) · [Registry file](packages.json)

**gazahomes** makes nine published aggregate indicators from a study of housing and basic services in Gaza available in R. It includes the counts, denominators and a bilingual indicator dictionary. The figures describe the households that participated in the study; the package contains no individual household records.

| Resource | Link |
| --- | --- |
| Download the tested R package and inspect its check log | [gazahomes 0.0.1 on GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1) |
| Cite the published package | [Zenodo software record](https://zenodo.org/records/24526526) · [Current citation guide](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/docs/access-and-citation.md) · [Current BibTeX](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/docs/gazahomes/CITATION-0.0.1.bib) |
| Check which source R-universe tracks | [packages.json](packages.json) |

R-universe builds from `packages/gazahomes` at tag `gazahomes-v0.0.1`. Install [gazahomes from R-universe](https://sulaimanallouh.r-universe.dev/gazahomes) in the R console. An [independent installation check](https://github.com/SulaimanAllouh/sulaimanallouh.r-universe.dev/actions/runs/43229167694/job/131219701903) installed version 0.0.1 in an empty R 4.4.2 library and verified all nine indicators.

```r
install.packages("gazahomes", repos = "https://sulaimanallouh.r-universe.dev")
x <- gazahomes::check_indicators()
stopifnot(as.character(packageVersion("gazahomes")) == "0.0.1",
          nrow(x) == 9L, all(x$ok))
```

## Cite gazahomes 0.0.1

Allouh, S. M. S. (2026). gazahomes: Explore Published Household Indicators from a Gaza Housing Study (Version 0.0.1) [Computer software]. Zenodo. <https://doi.org/10.5281/zenodo.24526526>

Use this DOI when citing the R package. The tables, scripts and reports in the research companion have their own citation for version 0.1.0. [Companion citation](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/CITATION.cff) · [Author’s ORCID](https://orcid.org/0009-0002-1706-7271)

## بالعربية

هذا سجلّ حزم R البحثية لسليمان محمد سليمان اللوح. تُتيح حزمة `gazahomes` قراءة تسعة مؤشرات منشورة عن السكن والخدمات الأساسية لدى الأسر المشاركة في دراسة غزة. ويمكن تتبّع كل مؤشر إلى سؤال الدراسة ومصدره باستخدام `gazahomes::home_dictionary()`.

يتوفر [ملف الحزمة الذي اجتاز الفحص وسجل الاختبار على GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1). لتثبيت الإصدار 0.0.1 من [R-universe](https://sulaimanallouh.r-universe.dev/gazahomes) والتحقق من المؤشرات التسعة، نفّذ الأوامر أعلاه في جلسة R. [سجل اختبار التثبيت](https://github.com/SulaimanAllouh/sulaimanallouh.r-universe.dev/actions/runs/43229167694/job/131219701903) · [دليل المشروع بالعربية](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/README.ar.md)

عند استخدام حزمة `gazahomes`، استشهد بالإصدار 0.0.1 وفق [صيغة الاستشهاد أعلاه](#cite-gazahomes-001) وأدرج [معرّف الحزمة الدائم](https://doi.org/10.5281/zenodo.24526526). أما جداول المشروع البحثي المرافق وبرامجه وتقاريره فلها [مرجع مستقل للإصدار 0.1.0](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/CITATION.cff). [دليل الاستشهاد الحالي](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/docs/access-and-citation.md) · [سجل الباحث في ORCID](https://orcid.org/0009-0002-1706-7271)
