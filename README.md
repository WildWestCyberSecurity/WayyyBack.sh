# WayyyBack.sh 🕰️

**WayyyBack.sh** is a simple and powerful Bash script designed to fetch historical URLs for a list of domains using the Wayback Machine. Whether you're conducting web scraping, OSINT, or just curious about the past state of a website, this script has you covered. 🌐

## Features
- 🗂️ **Batch Processing:** Process multiple domains at once by reading from a file.
- 📂 **Custom Output:** Specify an output file to store the retrieved URLs.
- 🖥️ **Automation:** Automate your workflow with this lightweight and efficient script.

## Requirements

Before you can use **WayyyBack.sh**, make sure you have the following tools installed:

1. **Bash:** The script is written in Bash, so it requires a Unix-like environment. Most Linux distributions and macOS include Bash by default.

2. **waybackurls:** This tool is necessary for fetching URLs from the Wayback Machine. You can install it using Go:

    ```bash
    go install github.com/tomnomnom/waybackurls@latest
    ```

3. **Go Language:** Since `waybackurls` is written in Go, you'll need to have Go installed. You can download and install Go from [the official website](https://golang.org/dl/).

## Usage

```bash
Usage: ./WaayyBack.sh -d domains.txt -o wayback_urls.txt
```

### Arguments:
- `-d`: Input file containing the list of domains (one per line).
- `-o`: Output file to store the retrieved URLs.

## Example

1. **Create a file** named `domains.txt` and add your target domains:

    ```text
    example.com
    anotherdomain.org
    sometarget.net
    ```

2. **Run the script** to fetch URLs:

    ```bash
    ./WaayyBack.sh -d domains.txt -o wayback_urls.txt
    ```

3. **Check the output** in `wayback_urls.txt`:

    ```text
    Fetching URLs for: example.com
    Fetching URLs for: anotherdomain.org
    Fetching URLs for: sometarget.net
    ```

    The file will contain the Wayback Machine URLs for each domain, neatly organized and ready for analysis.

## Contributing

Feel free to fork this project, submit issues, or make pull requests. Contributions are welcome! 💻

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

🚀 **Happy digging into the web's past and happy bug hunting!**
