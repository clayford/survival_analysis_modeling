# create data for survival analysis workshop

# leukemia data
leuk <- haven::read_dta(file = "data/anderson.dta") |> as.data.frame()
leuk$rx <- factor(leuk$rx, levels = c(0,1), labels = c("trt", "placebo"))
leuk$lwbc3 <- NULL
saveRDS(leuk, file = "data/leuk.rds")


# WHAS data
d <- haven::read_sav("data/whas500.sav") |> as.data.frame()
d$time <- d$lenfol/365.25
d$admitdate <- NULL
d$miord <- NULL
d$mitype <- NULL
d$admitdate <- NULL
d$disdate <- NULL
d$year <- factor(d$year, labels = c("1997", "1999", "2001"))
saveRDS(d, file = "data/WHAS.rds")
