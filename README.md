# Sulaiman M. S. Allouh · R package registry

[العربية](#بالعربية) · [Research project](https://github.com/SulaimanAllouh/gaza-resilient-homes-research) · [Registry file](packages.json)

**gazahomes** makes nine published aggregate indicators from a study of housing and basic services in Gaza available in R. It includes the counts, denominators and a bilingual indicator dictionary. The figures describe the households that participated in the study; the package contains no individual household records.

| Resource | Link |
| --- | --- |
| Download the tested R package and inspect its check log | [gazahomes 0.0.1 on GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1) |
| Cite this version of the software | [BibTeX](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/gazahomes-v0.0.1/docs/gazahomes/CITATION-0.0.1.bib) |
| Check which source R-universe tracks | [packages.json](packages.json) |

R-universe builds from `packages/gazahomes` at tag `gazahomes-v0.0.1`. Once the package [appears in the universe](https://sulaimanallouh.r-universe.dev/gazahomes), install it from the R console:

```r
install.packages("gazahomes", repos = "https://sulaimanallouh.r-universe.dev")
x <- gazahomes::check_indicators()
stopifnot(as.character(packageVersion("gazahomes")) == "0.0.1",
          nrow(x) == 9L, all(x$ok))
```

## بالعربية

هذا سجلّ حزم R البحثية لسليمان محمد سليمان اللوح. تُتيح حزمة `gazahomes` قراءة تسعة مؤشرات منشورة عن السكن والخدمات الأساسية لدى الأسر المشاركة في دراسة غزة. ويمكن تتبّع كل مؤشر إلى سؤال الدراسة ومصدره باستخدام `gazahomes::home_dictionary()`.

يتوفر [ملف الحزمة الذي اجتاز الفحص وسجل الاختبار على GitHub](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/releases/tag/gazahomes-v0.0.1). وبعد ظهور الإصدار في R-universe، يمكنك استخدام أوامر R أعلاه لتثبيته والتحقق من المؤشرات التسعة. [دليل المشروع بالعربية](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/main/README.ar.md) · [مرجع الاستشهاد بالحزمة](https://github.com/SulaimanAllouh/gaza-resilient-homes-research/blob/gazahomes-v0.0.1/docs/gazahomes/CITATION-0.0.1.bib).
