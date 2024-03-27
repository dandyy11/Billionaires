# Correlation between Age and Net Worth
correlation_age_networth <- cor(billionaires$Age, billionaires$NetWorth, use="complete.obs")

# Plot Net Worth distribution by Gender
ggplot(billionaires, aes(x = Gender, y = NetWorth)) +
  geom_boxplot() +
  scale_y_log10() +
  ggtitle("Net Worth Distribution by Gender")

# Correlation between Net Worth and Country's GDP
correlation_gdp_networth <- cor(billionaires$gdp_country, billionaires$NetWorth, use="complete.obs")
