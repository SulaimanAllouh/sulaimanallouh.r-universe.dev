# Sulaiman M. S. Allouh · R package registry

[العربية](#بالعربية) · [Research project](https://github.com/SulaimanAllouh/gaza-resilient-homes-research) · [Registry file](packages.json)

**gazahomes** makes nine published aggregate indicators from a study of housing and basic services in Gaza available in R. It includes the counts, denominators and a bilingual indicator dictionary. The figures describe the households that participated in the study; the package contains no individual household records.

| Resource | Link |
| --- | --- |
| Download the tested R package and inspect its check log | [gazahomes 0.0.1 on GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1) |
| Cite this version of the software | [BibTeX](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/gazahomes-v0.0.1/docs/gazahomes/CITATION-0.0.1.bib) |
| Check which source R-universe tracks | [packages.json](packages.json) |

R-universe builds from `packages/gazahomes` at tag `gazahomes-v0.0.1`. Install [gazahomes from R-universe](https://sulaimanallouh.r-universe.dev/gazahomes) in the R console. An [independent installation check](https://github.com/SulaimanAllouh/sulaimanallouh.r-universe.dev/actions/runs/43229167694/job/131219701903) installed version 0.0.1 in an empty R 4.4.2 library and verified all nine indicators.

```r
install.packages("gazahomes", repos = "https://sulaimanallouh.r-universe.dev")
x <- gazahomes::check_indicators()
stopifnot(as.character(packageVersion("gazahomes")) == "0.0.1",
          nrow(x) == 9L, all(x$ok))
```

## بالعربية

هذا سجلّ حزم R البحثية لسليمان محمد سليمان اللوح. تُتيح حزمة `gazahomes` قراءة تسعة مؤشرات منشورة عن السكن والخدمات الأساسية لدى الأسر المشاركة في دراسة غزة. ويمكن تتبّع كل مؤشر إلى سؤال الدراسة ومصدره باستخدام `gazahomes::home_dictionary()`.

يتوفر [ملف الحزمة الذي اجتاز الفحص وسجل الاختبار على GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1). وتُثبّت الحزمة مباشرة من [R-universe](https://sulaimanallouh.r-universe.dev/gazahomes) بالأمر أعلاه. يُظهر [سجل الاختبار](https://github.com/SulaimanAllouh/sulaimanallouh.r-universe.dev/actions/runs/43229167694/job/131219701903) أن التثبيت في مكتبة R فارغة نجح وأن المؤشرات التسعة اجتازت الفحص. [دليل المشروع بالعربية](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/README.ar.md) · [مرجع الاستشهاد بالحزمة](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/gazahomes-v0.0.1/docs/gazahomes/CITATION-0.0.1.bib).
