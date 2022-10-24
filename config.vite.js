import { defineConfig } from "vite";

module.exports = defineConfig({
	css: {
		preprocessorOptions: {
			scss: {
				additionalData: `
					@import "./src/styles/style.scss";
				`
			}
		}
	}
});

