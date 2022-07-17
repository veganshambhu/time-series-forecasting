mel_data <- read.csv('C:\\Users\\91773\\Downloads\\Emissions_Agriculture_Enteric_Fermentation_E_All_Data_(Normalized)\\Emissions_Agriculture_Enteric_Fermentation_E_All_Data_(Normalized).csv', na.strings = c("","NA"))
head(mel_data)

mel_data_sel <- mel_data[c("Area","Item","Element","Year","Source","Unit","Value")]
head(mel_data_sel)

mel_data_faoch4 <- mel_data_sel[which(mel_data_sel$Element == 'Emissions (CH4)' & mel_data_sel$Source == 'FAO TIER 1'),]
head(mel_data_faoch4)

mel_data_ani <- mel_data_faoch4[which(mel_data_faoch4$Item == 'All Animals'),]
head(mel_data_ani)

mel_data_final <- mel_data_ani[c("Area","Item","Year","Value")]
head(mel_data_final)

mel_data_last <- mel_data_final[which(mel_data_final$Area == 'World'),]
head(mel_data_last)

mel_data_last_final <- mel_data_last[c("Year","Value")]
head(mel_data_last_final)

write.csv(mel_data_last_final,"mel_data_world.csv", row.names = FALSE)
