# **Cella’s Manhwa**
---
Cella, si ratu scroll Facebook, tiba-tiba terinspirasi untuk mengumpulkan informasi dan foto dari berbagai **manhwa favoritnya**. Namun, kemampuan ngoding Cella masih cetek, jadi dia butuh bantuanmu untuk membuatkan skrip otomatis agar semua berjalan mulus. Tugasmu adalah membantu Cella mengolah data manhwa dan heroine-nya.

Berikut adalah daftar manhwa bergenre shoujo/josei yang paling disukai Cella:

|    No     |      Manhwa      |
| :--------: | :------------: |
| 1 | Mistaken as the Monster Duke's Wife |
| 2 | The Villainess Lives Again |
| 3 | No, I Only Charmed the Princess! |
| 4 | Darling, Why Can't We Divorce? |

### **a. Summoning the Manhwa Stats**

Cella ingin mengambil data detail dari **manhwa** menggunakan [API Jikan](https://docs.api.jikan.moe/). Informasi yang diambil:

- Judul
- Status
- Tanggal rilis
- Genre
- Tema
- Author

Setelah data berhasil diambil, hasilnya harus disimpan ke dalam file teks, dengan nama file disesuaikan dengan **judul versi bahasa Inggris** (tanpa karakter khusus dan spasi diganti dengan underscore). Semua file teks disimpan dalam folder `Manhwa`.

**Contoh format isi file:**

```
Title: The Villain's Daughter-in-Law
Status: Publishing
Release: 2024-10-16
Genre: Fantasy, Romance
Theme: Time Travel
Author: Na, Reuyan, Kim, Dael
```

**&#128161; Hint**

Contoh Penggunaan Simple API:
1. Kunjungi situs **MyAnimeList**.

2. Cari **manhwa** yang diinginkan.

3. Sebagai contoh:

    `https://myanimelist.net/manga/154063/The_Perks_of_Being_a_Villainess`

3. Gunakan **154063** sebagai **ID** untuk melakukan pengambilan data (scraping).

4. Sehingga **endpoint API** akan menjadi seperti berikut:

    `https://api.jikan.moe/v4/manga/154063`

### **b. Seal the Scrolls**

Cella ingin agar setiap file `.txt` tadi di-**zip** satu per satu dan disimpan ke dalam folder baru bernama `Archive`. Yang dimana nama masing masing dari zip diambil dari **huruf kapital nama file**.

### **c. Making the Waifu Gallery**

Setiap manhwa memiliki heroine alias **Female Main Character (FMC)**. Cella ingin mengunduh gambar heroine dari internet, dengan jumlah unduhan sesuai dengan **bulan rilis manhwa**.

**Contoh:**

- Jika rilis bulan Februari → unduh **2 foto**
- Jika rilis bulan Desember → unduh **12 foto**
- Format nama file: `Heroine_1.jpg`, `Heroine_2.jpg`, dst.

Selain itu, Cella ingin melakukan pengunduhan **sesuai urutan** daftar manhwa yang tertera pada deskripsi di atas, dan proses pengunduhan harus menggunakan **thread**, karena Cella malas menunggu. Sebagai contohnya, gambar heroine dari manhwa Mistaken as the Monster Duke's Wife harus diunduh terlebih dahulu dan tidak boleh didahului oleh gambar heroine dari manhwa lainnya.

Seluruh gambar akan disimpan dalam folder Heroines. Di dalam folder Heroines, akan terdapat subfolder dengan nama depan atau nama panggilan heroine dari masing-masing manhwa.

Struktur folder yang diinginkan:

```
Heroines/
├── Alisha/
│   ├── Alisha_1.jpg
│   └── Alisha_2.jpg
└── Dorothea/
    ├── Dorothea_1.jpg
    └── Dorothea_2.jpg
```

### **d. Zip. Save. Goodbye**

Setelah semua gambar heroine berhasil diunduh, Cella ingin mengarsipkannya:

- Setiap folder heroine di-zip dengan format:
  ```
  [HURUFKAPITALNAMAMANHWA]_[namaheroine].zip
  ```
- Disimpan di folder `Archive/Images`
- Setelah zip selesai, gambar pada masing masing folder Heroine akan dihapus secara **urut dengan abjad**.

### Notes &#9888;

- Gunakan `fork()` dan `exec()` untuk soal a, b, dan, d.

- `system()` **HANYA BOLEH DIGUNAKAN (bila ingin)** untuk soal c.

- **Dilarang keras menggunakan external script!**.

- Dilarang menggunakan `mkdir()`.

- Hanya `solver.c` yang dikumpulkan pada GitHub.

---

# **Cella’s Manhwa**

Cella, the queen of Facebook scrolling, suddenly got inspired to collect information and photos from her favorite **manhwa**. However, her coding skills are still basic, so she needs your help to create an automated script to make everything run smoothly. Your task is to assist Cella in processing manhwa data and its heroines.

The following is a list of shoujo/josei genre manhwa most favored by Cella:

|    No     |      Manhwa      |
| :--------: | :------------: |
| 1 | Mistaken as the Monster Duke's Wife |
| 2 | The Villainess Lives Again |
| 3 | No, I Only Charmed the Princess! |
| 4 | Darling, Why Can't We Divorce? |

### **a. Summoning the Manhwa Stats**

Cella wants to retrieve detailed data about **manhwa** using the [Jikan API](https://docs.api.jikan.moe/). The information to be retrieved includes:

- Title
- Status
- Release date
- Genre
- Theme
- Author

Once the data is successfully retrieved, the results must be saved into a text file, with the file name based on the **English title** (special characters removed and spaces replaced with underscores). All text files are stored in the `Manhwa` folder.

**Example file content format:**

```
Title: The Villain's Daughter-in-Law
Status: Publishing
Release: 2024-10-16
Genre: Fantasy, Romance
Theme: Time Travel
Author: Na, Reuyan, Kim, Dael
```

**&#128161; Hint**

Example of Simple API Usage:
1. Visit the **MyAnimeList** website.

2. Search for the desired **manhwa**.

3. For example:

    `https://myanimelist.net/manga/154063/The_Perks_of_Being_a_Villainess`

4. Use **154063** as the **ID** for scraping the data.

5. Therefore, the **API endpoint** will look like this:

    `https://api.jikan.moe/v4/manga/154063`

### **b. Seal the Scrolls**

Cella wants each `.txt` file to be **zipped** individually and stored in a new folder named `Archive`. The name of each zip file should be derived from the **uppercase letters of the file name**.

### **c. Making the Waifu Gallery**

Each manhwa has a heroine, also known as the **Female Main Character (FMC)**. Cella wants to download heroine images from the internet, with the number of downloads corresponding to the **release month of the manhwa**.

**Example:**

- If released in February → download **2 photos**
- If released in December → download **12 photos**
- File name format: `Heroine_1.jpg`, `Heroine_2.jpg`, and so on.

Additionally, Cella wants the downloads to be performed **in order** based on the manhwa list described above, and the download process must use **threads**, as Cella doesn’t want to wait. For example, the heroine images from the manhwa Mistaken as the Monster Duke's Wife must be downloaded first and cannot be preceded by images from other manhwa.

All images will be stored in the Heroines folder. Inside the Heroines folder, there will be subfolders named after the first name or nickname of the heroine from each manhwa.

Desired folder structure:

```
Heroines/
├── Alisha/
│   ├── Alisha_1.jpg
│   └── Alisha_2.jpg
└── Dorothea/
    ├── Dorothea_1.jpg
    └── Dorothea_2.jpg
```

### **d. Zip. Save. Goodbye**

After all heroine images are successfully downloaded, Cella wants them archived:

- Each heroine folder is zipped with the format:
  ```
  [UPPERCASEMANHWANAME]_[heroineName].zip
  ```
- Stored in the `Archive/Images` folder
- Once the zipping is complete, the images in each Heroine folder will be deleted **in alphabetical order**.

### Notes &#9888;

- Use `fork()` and `exec()` for questions a, b, and d.

- `system()` **MAY ONLY BE USED (if desired)** for question c.

- **Strictly prohibited from using external scripts!**

- Using `mkdir()` is not allowed.

- Only `solver.c` should be submitted on GitHub.
___

## **Penyelesaian**
---
#### **Full Code**
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/wait.h>
#include <pthread.h>
#include <curl/curl.h>

typedef struct Manhwas {
    char title[1100];
    char id[9898];
    char urls[1100];
    char heroine[1100];
    char img_urls[12][1100];
    char capital_title[2200];
    int total;
} Manhwas;

void make_directory(char* folder) {
    pid_t pid = fork();
    if (pid == 0) {
        execlp("mkdir", "mkdir", "-p", folder, NULL);
        perror("ERROR mkdir");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}


void fetch(char* judul, char* id) {
    pid_t pid = fork();
    if (pid == 0) {
        char path[9900];
        snprintf(path, sizeof(path), "Manhwa/%s_temp.txt", judul);

        char url[9900];
        snprintf(url, sizeof(url), "https://api.jikan.moe/v4/manga/%s", id);

        execlp("curl", "curl", "-s", "-o", path, url, NULL);

        perror("ERROR curl");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}

void extract_ts(char* text, char* token, char* output, int size) {
    char* start = strstr(text, token);
    if (start) {
        start = strchr(start, ':');
        if (start) {
            start += 1;
            while (*start == ' ' || *start == '\"') start++;
            char* end = strstr(start, "\",");
            int len = end - start;
            if (len >= size) len = size - 1;
            strncpy(output, start, len);
            output[len] = '\0';
        }
    }
}

void extract_published(char* text, char* output, int size) {
    char* start = strstr(text, "\"published\":{\"from\"");
    if (start) {
        char* day_start = strstr(start, "\"day\":");
        char* month_start = strstr(start, "\"month\":");
        char* year_start = strstr(start, "\"year\":");

        if (day_start && month_start && year_start) {
            day_start = strchr(day_start, ':') + 1;
            int day = atoi(day_start);

            month_start = strchr(month_start, ':') + 1;
            int month = atoi(month_start);

            year_start = strchr(year_start, ':') + 1;
            int year = atoi(year_start);

            int len = snprintf(output, size, "%04d-%02d-%02d", year, month, day);
            if (len >= size) {
                output[size - 1] = '\0';
            }
        }
    }
}

void extract_gta(char* text, char* token, char* output, int size) {
    char pattern[9999];
    snprintf(pattern, sizeof(pattern), "\"%s\":[", token);

    char* start = strstr(text, pattern);
    if (!start) {
        return;
    }

    char* end = strstr(start, "]");
    if (!end) {
        return;
    }

    char temp[9900];
    int idx = 0;

    char* ptr = start;
    while ((ptr = strstr(ptr, "\"name\":\"")) && ptr < end) {
        ptr += strlen("\"name\":\"");
        char* genre_end = strchr(ptr, '\"');
        if (!genre_end) break;

        int len = genre_end - ptr;
        if (idx + len + 2 >= size) break;

        if (idx > 0) {
            temp[idx++] = ',';
            temp[idx++] = ' ';
        }

        strncpy(&temp[idx], ptr, len);
        idx += len;
    }
    temp[idx] = '\0';

    strncpy(output, temp, size);
}

void format_filename(char* new_judul, char* judul, int size) {
    int idx = 0;
    for (int i = 0; judul[i] != '\0' && idx < size - 1; i++) {
        if (isspace((char)judul[i])) {
            new_judul[idx++] = '_';
        }
        else if (isalnum((char)judul[i])) {
            new_judul[idx++] = judul[i];
        }
    }
    new_judul[idx] = '\0';
}

void zip_name_format(char* txt, char* zip) {
    int j = 0;
    for (int i = 0; txt[i]; i++) {
        if (isupper(txt[i])) {
            zip[j++] = txt[i];
        }
    }
    zip[j] = '\0';
}

void remove_path(char* path) {
    pid_t pid = fork();
    if (pid == 0) {
        execlp("rm", "rm", "-rf", path, NULL);
        perror("rm failed");
        exit(1);
    }
    else {
        int status;
        wait(&status);
        if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
            printf("Status\t: %s telah dihapus\n", path);
        }
    }
}

void zip_file(char* zip_name, char* f_src) {
    char zip_path[9999];
    snprintf(zip_path, sizeof(zip_path), "Archive/%s.zip", zip_name);

    pid_t pid = fork();
    if (pid == 0) {
        printf("Status\t: ");
        fflush(stdout);
        execlp("zip", "zip", "-rjq", zip_path, f_src, NULL);
        exit(EXIT_FAILURE);
    }
    else {
        int status;
        wait(&status);
        if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
            printf("%s telah di-zip ke %s\n", f_src, zip_path);
        }
    }
}

void get_urls(Manhwas* m, int month) {
    char cmd[9999];
    FILE* fp;
    snprintf(cmd, sizeof(cmd), "curl -s -A \"Mozilla/5.0\" \"%s\" | grep -o 'src=\"[^\"]*\"' | grep -Eo 'https?://[^\"]+'", m->urls);

    fp = popen(cmd, "r");
    if (fp == NULL) {
        perror("ERROR popen");
        return;
    }
    //printf("Command: %s\n", cmd);
    printf("----------------------------------------------------------------------------------------\n");
    printf("Scrapping links, please wait!\n");
    int i = 0;
    while (i < month && fgets(m->img_urls[i], sizeof(m->img_urls[i]), fp) != NULL) {
        m->img_urls[i][strcspn(m->img_urls[i], "\n")] = '\0';
        printf("Link %d stored!\n", i + 1);
        i++;
    }
    printf("All links are stored :D\n");

    pclose(fp);
}

void parse_zip_download_get_url(Manhwas* m) {
    char src_path[9999], txt_path[9999], f_name[1100];
    snprintf(src_path, sizeof(src_path), "Manhwa/%s_temp.txt", m->title);

    FILE* f_src = fopen(src_path, "r");
    if (!f_src) {
        perror("ERROR fopen");
        return;
    }

    fseek(f_src, 0, SEEK_END);
    long len = ftell(f_src);
    fseek(f_src, 0, SEEK_SET);

    char* text = malloc(len + 1);
    fread(text, 1, len, f_src);
    text[len] = '\0';
    fclose(f_src);

    char title[1100] = "N/A", status[1100] = "N/A", date[1100] = "N/A", genre[1100] = "N/A", theme[1100] = "N/A", author[1100] = "N/A";
    extract_ts(text, "\"title_english\"", title, sizeof(title));
    extract_ts(text, "\"status\"", status, sizeof(status));
    extract_published(text, date, sizeof(date));
    extract_gta(text, "genres", genre, sizeof(genre));
    extract_gta(text, "themes", theme, sizeof(theme));
    extract_gta(text, "authors", author, sizeof(author));

    char month[3];
    strncpy(month, date + 5, 2);
    month[2] = '\0';
    m->total = atoi(month);
    printf("Links\t: %d\n", m->total);

    format_filename(f_name, title, sizeof(f_name));
    snprintf(txt_path, sizeof(txt_path), "Manhwa/%s.txt", f_name);

    FILE* f_des = fopen(txt_path, "w");
    if (!f_des) {
        perror("ERROR Fopen txt");
        return;
    }
    fprintf(f_des, "Title: %s\n", title);
    fprintf(f_des, "Status: %s\n", status);
    fprintf(f_des, "Release: %s\n", date);
    fprintf(f_des, "Genre: %s\n", genre);
    fprintf(f_des, "Theme: %s\n", theme);
    fprintf(f_des, "Author: %s\n", author);

    fclose(f_des);
    free(text);

    remove_path(src_path);

    char zip_name[2200];
    zip_name_format(f_name, zip_name);
    strncpy(m->capital_title, zip_name, sizeof(m->capital_title) - 1);
    m->capital_title[sizeof(m->capital_title) - 1] = '\0';
    zip_file(zip_name, txt_path);

    // Kalo disuruh delete file setelah zip 
    // remove_path(des_path); (Optional :d)


    get_urls(m, m->total);
}

pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

typedef struct data {
    char url[9898];
    char dest[9999];
} data;

void* download_image(void* arg) {
    data* args = (data*)arg;

    pthread_mutex_lock(&mutex);

    char cmd[100000];
    snprintf(cmd, sizeof(cmd), "curl -s -A \"Mozilla/5.0\" -o \"%s\" \"%s\"", args->dest, args->url);
    int status = system(cmd);

    if (status == 0) {
        printf("Gambar berhasil diunduh ke: %s\n", args->dest);
    }
    else {
        printf("Gagal mengunduh gambar: %s\n", args->url);
    }

    pthread_mutex_unlock(&mutex);

    return NULL;
}

void download_images(Manhwas* m, int month) {
    pthread_t threads[month];
    data args[month];
    char folder_heorine[1200];
    snprintf(folder_heorine, sizeof(folder_heorine), "Heroines/%s", m->heroine);
    make_directory(folder_heorine);
    for (int i = 0; i < month; i++) {
        snprintf(args[i].dest, sizeof(args[i].dest), "Heroines/%s/%s_%d.jpg", m->heroine, m->heroine, i + 1);
        strncpy(args[i].url, m->img_urls[i], sizeof(args[i].url) - 1);
        args[i].url[sizeof(args[i].url) - 1] = '\0';

        if (pthread_create(&threads[i], NULL, download_image, (void*)&args[i]) != 0) {
            perror("ERROR pthread_create");
            return;
        }
    }
    for (int i = 0; i < month && i < 12; i++) {
        pthread_join(threads[i], NULL);
    }
}

void zip_and_remove(Manhwas* m, int n) {
    make_directory("Archive/Images");
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (strcmp(m[i].heroine, m[j].heroine) > 0) {
                Manhwas temp = m[i];
                m[i] = m[j];
                m[j] = temp;
            }
        }
    }
    for (int i = 0; i < n; i++) {
        char zip_name[4000];
        snprintf(zip_name, sizeof(zip_name), "Images/%s_%s", m[i].capital_title, m[i].heroine);
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        zip_file(zip_name, folder_path);
    }
    for (int i = 0; i < n; i++) {
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        remove_path(folder_path);
    }
}

int main() {
    Manhwas manhwa[] = {
        {"Mistaken as the Monster Duke's Wife", "168827", "https://www.google.com/search?tbm=isch&q=Mistaken+as+the+Monster+Duke%27s+Wife+character+Lia+Dellis","Lia"},
        {"The Villainess Lives Again", "147205","https://www.google.com/search?tbm=isch&q=The+Villainess+Lives+Again+character+Artizea+Rosan", "Artizea"},
        {"No, I Only Charmed the Princess!", "169731", "https://www.google.com/search?tbm=isch&q=No,+I+Only+Charmed+the+Princess!+Adelia+Vita", "Adelia"},
        {"Darling, Why Can't We Divorce?", "175521", "https://www.google.com/search?tbm=isch&q=manhwa+Why+Can%27t+We+Divorce%3F+female", "Ophelia"},
    };
    make_directory("Manhwa");
    make_directory("Archive");

    for (int i = 0; i < 4; i++) {
        printf("\n========================================================================================\n");
        printf("                                  Manhwa Number: %d\n", i + 1);
        printf("----------------------------------------------------------------------------------------\n");
        printf("Title\t: %s\n", manhwa[i].title);
        printf("ID\t: %s\n", manhwa[i].id);
        fetch(manhwa[i].title, manhwa[i].id);
        parse_zip_download_get_url(&manhwa[i]);
        printf("========================================================================================\n\n");
    }

    make_directory("Heroines");
    for (int i = 0; i < 4; i++) {
        printf("\n========================================================================================\n");
        printf("                                  Mengunduh Heroine\n");

        (i == 1) ? printf("                              %s\n", manhwa[i].title) : printf("                          %s\n", manhwa[i].title);
        printf("----------------------------------------------------------------------------------------\n");
        download_images(&manhwa[i], manhwa[i].total);
        printf("========================================================================================\n\n");
    }

    printf("\n========================================================================================\n");
    printf("                                  Zip & Delete Heroine\n");
    printf("----------------------------------------------------------------------------------------\n");
    zip_and_remove(manhwa, 4);
    printf("========================================================================================\n\n");

    return 0;
}
```

### **Personal Notes**
___
Untuk menyelesaikan problem ini, saya membuat struct Manhwas yang menyimpan:
- Judul
- Id API
- Url mentah dari google search untuk setiap heroine
- Nama heroine
- Hasil url scrapping dari url mentah
- Judul bahasa Inggris (versi kapital)
- Total image yang didownload (berdasarkan bulan terbit).

```c
typedef struct Manhwas {
    char title[1100];
    char id[9898];
    char urls[1100];
    char heroine[1100];
    char img_urls[12][1100];
    char capital_title[2200];
    int total;
} Manhwas;
```

```c
int main(){
    Manhwas manhwa[] = {
        {"Mistaken as the Monster Duke's Wife", "168827", "https://www.google.com/search?tbm=isch&q=Mistaken+as+the+Monster+Duke%27s+Wife+character+Lia+Dellis","Lia"},
        {"The Villainess Lives Again", "147205","https://www.google.com/search?tbm=isch&q=The+Villainess+Lives+Again+character+Artizea+Rosan", "Artizea"},
        {"No, I Only Charmed the Princess!", "169731", "https://www.google.com/search?tbm=isch&q=No,+I+Only+Charmed+the+Princess!+Adelia+Vita", "Adelia"},
        {"Darling, Why Can't We Divorce?", "175521", "https://www.google.com/search?tbm=isch&q=manhwa+Why+Can%27t+We+Divorce%3F+female", "Ophelia"},
    };
    ...
}
```

Data-data inilah yang nanti akan diproses sekaligus untuk mempermudah penamaan file secara otomatis. Pada fungsi utama, data Manhwa yang akan diinisialisasi adalah title, id, urls, dan heroine. Sisanya akan terbentuk sendiri dari fungsi-fungsi lainnya.

### **a. Summoning the Manhwa Stats**
---
Untuk mengerjakan soal ini, ada langkah-langkah yang harus kita lakukan, yaitu:

**1. Membuat folder direktori.**

Untuk membuat folder direktori, saya membuat funcion make_directory dengan mengambil argumen path dari folder yang akan dibuat.

```c
void make_directory(char* folder) {
    pid_t pid = fork();
    if (pid == 0) {
        execlp("mkdir", "mkdir", "-p", folder, NULL);
        perror("ERROR mkdir");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}
```

```c
int main(){
    ...
    make_directory("Manhwa");
    ...
}
```

**2. Mengambil data dari API Jikan**

```c
void fetch(char* judul, char* id) {
    pid_t pid = fork();
    if (pid == 0) {
        char path[9900];
        snprintf(path, sizeof(path), "Manhwa/%s_temp.txt", judul);

        char url[9900];
        snprintf(url, sizeof(url), "https://api.jikan.moe/v4/manga/%s", id);

        execlp("curl", "curl", "-s", "-o", path, url, NULL);

        perror("ERROR curl");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}
```
Fungsi di atas bertugas mengambil data dari API menggunakan ID dari web myanimelist dan memasukkan data tersebut ke dalam `*_temp.txt`.

```c
void extract_ts(char* text, char* token, char* output, int size) {
    char* start = strstr(text, token);
    if (start) {
        start = strchr(start, ':');
        if (start) {
            start += 1;
            while (*start == ' ' || *start == '\"') start++;
            char* end = strstr(start, "\",");
            int len = end - start;
            if (len >= size) len = size - 1;
            strncpy(output, start, len);
            output[len] = '\0';
        }
    }
}
```
Fungsi di atas bertugas untuk mengambil title dan status manhwa dari `*_temp.txt`.

```c
void extract_published(char* text, char* output, int size) {
    char* start = strstr(text, "\"published\":{\"from\"");
    if (start) {
        char* day_start = strstr(start, "\"day\":");
        char* month_start = strstr(start, "\"month\":");
        char* year_start = strstr(start, "\"year\":");

        if (day_start && month_start && year_start) {
            day_start = strchr(day_start, ':') + 1;
            int day = atoi(day_start);

            month_start = strchr(month_start, ':') + 1;
            int month = atoi(month_start);

            year_start = strchr(year_start, ':') + 1;
            int year = atoi(year_start);

            int len = snprintf(output, size, "%04d-%02d-%02d", year, month, day);
            if (len >= size) {
                output[size - 1] = '\0';
            }
        }
    }
}
```
Fungsi di atas bertugas untuk mengambil date published manhwa dari `*_temp.txt`.
```c
void extract_gta(char* text, char* token, char* output, int size) {
    char pattern[9999];
    snprintf(pattern, sizeof(pattern), "\"%s\":[", token);

    char* start = strstr(text, pattern);
    if (!start) {
        return;
    }

    char* end = strstr(start, "]");
    if (!end) {
        return;
    }

    char temp[9900];
    int idx = 0;

    char* ptr = start;
    while ((ptr = strstr(ptr, "\"name\":\"")) && ptr < end) {
        ptr += strlen("\"name\":\"");
        char* genre_end = strchr(ptr, '\"');
        if (!genre_end) break;

        int len = genre_end - ptr;
        if (idx + len + 2 >= size) break;

        if (idx > 0) {
            temp[idx++] = ',';
            temp[idx++] = ' ';
        }

        strncpy(&temp[idx], ptr, len);
        idx += len;
    }
    temp[idx] = '\0';

    strncpy(output, temp, size);
}
```
Fungsi di atas bertugas untuk mengambil genre, theme, dan author manhwa dari `*_temp.txt`.
```c
void format_filename(char* new_judul, char* judul, int size) {
    int idx = 0;
    for (int i = 0; judul[i] != '\0' && idx < size - 1; i++) {
        if (isspace((char)judul[i])) {
            new_judul[idx++] = '_';
        }
        else if (isalnum((char)judul[i])) {
            new_judul[idx++] = judul[i];
        }
    }
    new_judul[idx] = '\0';
}
```
Fungsi di atas bertugas untuk membuat nama file disesuaikan dengan judul versi bahasa Inggris (tanpa karakter khusus dan spasi diganti dengan underscore).
```c
void parse_zip_download_get_url(Manhwas* m) {
    char src_path[9999], txt_path[9999], f_name[1100];
    snprintf(src_path, sizeof(src_path), "Manhwa/%s_temp.txt", m->title);

    FILE* f_src = fopen(src_path, "r");
    if (!f_src) {
        perror("ERROR fopen");
        return;
    }

    fseek(f_src, 0, SEEK_END);
    long len = ftell(f_src);
    fseek(f_src, 0, SEEK_SET);

    char* text = malloc(len + 1);
    fread(text, 1, len, f_src);
    text[len] = '\0';
    fclose(f_src);

    char title[1100] = "N/A", status[1100] = "N/A", date[1100] = "N/A", genre[1100] = "N/A", theme[1100] = "N/A", author[1100] = "N/A";
    extract_ts(text, "\"title_english\"", title, sizeof(title));
    extract_ts(text, "\"status\"", status, sizeof(status));
    extract_published(text, date, sizeof(date));
    extract_gta(text, "genres", genre, sizeof(genre));
    extract_gta(text, "themes", theme, sizeof(theme));
    extract_gta(text, "authors", author, sizeof(author));

    format_filename(f_name, title, sizeof(f_name));
    snprintf(txt_path, sizeof(txt_path), "Manhwa/%s.txt", f_name);

    FILE* f_des = fopen(txt_path, "w");
    if (!f_des) {
        perror("ERROR Fopen txt");
        return;
    }
    fprintf(f_des, "Title: %s\n", title);
    fprintf(f_des, "Status: %s\n", status);
    fprintf(f_des, "Release: %s\n", date);
    fprintf(f_des, "Genre: %s\n", genre);
    fprintf(f_des, "Theme: %s\n", theme);
    fprintf(f_des, "Author: %s\n", author);

    fclose(f_des);
    free(text);

    remove_path(src_path);
    ...
}
```
Fungsi di atas bertugas untuk mengambil data-data manhwa yang diperlukan ke dalam `Manhwa/{Judul Inggris}.txt` menggunakan fungsi-fungsi yang sudah dibuat sebelumnya. Setelah data-data telah disimpan ke`Manhwa/{Judul Inggris}.txt`. File `*_temp.txt` akan dihapus menggunakan function `remove_path()` dengan memberikan argumen path `*_temp.txt`.

```c
void remove_path(char *path){
    pid_t pid = fork();
    if (pid == 0){
        execlp("rm", "rm", "-rf", path, NULL);
        perror("rm failed");
        exit(1);
    }
    else{
        int status;
        wait(&status);
    }
}
```
Fungsi di atas akan meremove path yang diberikan sebagai parameternya.

```c
int main(){
    ...
    for (int i = 0; i < 4; i++) {
        ...
        fetch(manhwa[i].title, manhwa[i].id);
        parse_zip_download_get_url(&manhwa[i]);
        ...
    }
    ...
}
```
Fungsi-fungsi tersebut akan dipanggil di fungsi utama dengan melempar argumen judul dan id untuk melakukan fetch, sementara untuk parsing kita akan melempar argumen struct manhwa ke-i.

### **b. Seal the Scrolls**
---
Untuk mengerjakan soal ini, ada langkah-langkah yang harus kita lakukan, yaitu:

**1. Membuat folder direktori.**

Untuk membuat folder direktori archive, saya membuat menggunakan fungsi yang sudah dibuat pada part a.
```c
void make_directory(char* folder) {
    pid_t pid = fork();
    if (pid == 0) {
        execlp("mkdir", "mkdir", "-p", folder, NULL);
        perror("ERROR mkdir");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}

int main(){
    ...
    make_directory("Archive")
    ...
}
```

**2. Membuat nama zip.**
```c
void zip_name_format(char* txt, char* zip) {
    int j = 0;
    for (int i = 0; txt[i]; i++) {
        if (isupper(txt[i])) {
            zip[j++] = txt[i];
        }
    }
    zip[j] = '\0';
}
```
Fungsi di atas bertugas untuk membuat format nama zip dengan mengambil nama kapital dari nama file `*.txt`.

**3. Mengubah file txt ke zip.**
```c
void zip_file(char* zip_name, char* f_src) {
    char zip_path[9999];
    snprintf(zip_path, sizeof(zip_path), "Archive/%s.zip", zip_name);

    pid_t pid = fork();
    if (pid == 0) {
        printf("Status\t: ");
        fflush(stdout);
        execlp("zip", "zip", "-rjq", zip_path, f_src, NULL);
        exit(EXIT_FAILURE);
    }
    else {
        int status;
        wait(&status);
        if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
            printf("%s telah di-zip ke %s\n", f_src, zip_path);
        }
    }
}
```
Fungsi di atas bertugas untuk mengubah file `*.txt` menjadi zip ke dalam folder Archive.

```c
void parse_zip_download_get_url(Manhwas* m) {
    char src_path[9999], txt_path[9999], f_name[1100];
    ...
    char zip_name[2200];
    zip_name_format(f_name, zip_name);
    strncpy(m->capital_title, zip_name, sizeof(m->capital_title) - 1);
    m->capital_title[sizeof(m->capital_title) - 1] = '\0';
    zip_file(zip_name, txt_path);
    ...
}
```
Fungsi di atas bertugas untuk memanggil function `zip_nama_format()` untuk membuat nama zip sesuai format dan zip_file untuk mengubah file `*.txt` menjadi zip ke dalam folder Archive.

```c
int main(){
    ...
    for (int i = 0; i < 4; i++) {
        ...
        parse_zip_download_get_url(&manhwa[i]);
        ...
    }
    ...
}
```
Pada fungsi utama, terdapat for loop untuk mengubah file `*.txt` setiap manhwa menjadi zip dengan melemparkan argumen struct Manhwa ke dalam function `parse_zip_download_get_url()`.

### **c. Seal the Scrolls**
---
Untuk mengerjakan soal ini, ada langkah-langkah yang harus kita lakukan, yaitu:

**1. Membuat folder direktori.**

Untuk membuat folder direktori Heroines, saya membuat menggunakan fungsi yang sudah dibuat pada part a.

```c
void make_directory(char* folder) {
    pid_t pid = fork();
    if (pid == 0) {
        execlp("mkdir", "mkdir", "-p", folder, NULL);
        perror("ERROR mkdir");
        exit(EXIT_FAILURE);
    }
    else {
        wait(NULL);
    }
}

int main(){
    ...
    make_directory("Heroines");
    ...
}
```

**2. Scrape image url dari google search**

Pada tahap ini, kita akan mengambil image url dari google search.

```c
int main(){
Manhwas manhwa[] = {
        {"Mistaken as the Monster Duke's Wife", "168827", "https://www.google.com/search?tbm=isch&q=Mistaken+as+the+Monster+Duke%27s+Wife+character+Lia+Dellis","Lia"},
        {"The Villainess Lives Again", "147205","https://www.google.com/search?tbm=isch&q=The+Villainess+Lives+Again+character+Artizea+Rosan", "Artizea"},
        {"No, I Only Charmed the Princess!", "169731", "https://www.google.com/search?tbm=isch&q=No,+I+Only+Charmed+the+Princess!+Adelia+Vita", "Adelia"},
        {"Darling, Why Can't We Divorce?", "175521", "https://www.google.com/search?tbm=isch&q=manhwa+Why+Can%27t+We+Divorce%3F+female", "Ophelia"},
    };
    ...
    for (int i = 0; i < 4; i++) {
        ...
        parse_zip_download_get_url(&manhwa[i]);
        ...
    }
}
```
Pada fungsi utama, kita sudah menginisialisasi link google search yang akan kita lakukan scraping di dalam struct Manhwas. Lalu kita akan memanggil funcion `parse_zip_download_get_url()` dengan argumen masing-masing address struct manhwas.
```c
https://www.google.com/search?tbm=isch&q=Mistaken+as+the+Monster+Duke%27s+Wife+character+Lia+Dellis
```
Untuk mengakses google search, template nya adalah `https://www.google.com/search?tbm=isch&q={yang mau kita search}` sesuai dengan html encode reference. Untuk lebih detail terkait format encode HTML dapat dilihat pada link ini [encode reference](https://www.w3schools.com/tags/ref_urlencode.ASP).
```c
void parse_zip_download_get_url(Manhwas* m) {
    char src_path[9999], txt_path[9999], f_name[1100];
    FILE* f_src = fopen(src_path, "r");
    if (!f_src) {
        perror("ERROR fopen");
        return;
    }

    fseek(f_src, 0, SEEK_END);
    long len = ftell(f_src);
    fseek(f_src, 0, SEEK_SET);

    char* text = malloc(len + 1);
    fread(text, 1, len, f_src);
    text[len] = '\0';
    fclose(f_src);

    char date[1100] = "N/A";
    extract_published(text, date, sizeof(date));

    char month[3];
    strncpy(month, date + 5, 2);
    month[2] = '\0';
    m->total = atoi(month);
    get_urls(m, m->total);
}
```
Pada bagian a, kita sudah berhasil mengekstraksi data date dari setiap manwha. Sebagai contoh, output dari date
`2024-04-18`. Untuk mengambil bulan sebagai patokan jumlah gambar yang akan didownload, kita hanya perlu mengambil substring date dari index ke 5-6 dan memasukkan data bulan ke dalam struct. Setelah mendapatkan data total yang akan kita download, kita akan memanggil function `get_urls()` dengan melempar argumen address dari struct manhwas.

```c
void get_urls(Manhwas* m) {
    char cmd[9999];
    FILE* fp;
    snprintf(cmd, sizeof(cmd), "curl -s -A \"Mozilla/5.0\" \"%s\" | grep -o 'src=\"[^\"]*\"' | grep -Eo 'https?://[^\"]+'", m->urls);

    fp = popen(cmd, "r");
    if (fp == NULL) {
        perror("ERROR popen");
        return;
    }
   
    int i = 0;
    while (i < m->total && fgets(m->img_urls[i], sizeof(m->img_urls[i]), fp) != NULL) {
        m->img_urls[i][strcspn(m->img_urls[i], "\n")] = '\0';
        i++;
    }

    pclose(fp);
}
```
Fungsi di atas akan mengambil struct manhwa sebagai parameter dan mengambil url images sebanyak total bulan. Untuk lebih detailnya bisa dilihat pada penjelasan di bawah ini.
```c
snprintf(cmd, sizeof(cmd), "curl -s -A \"Mozilla/5.0\" \"%s\" | grep -o 'src=\"[^\"]*\"' | grep -Eo 'https?://[^\"]+'", m->urls);
```
Syntax di atas berfungsi untuk membuat command untuk mengambil link url.

`curl -s -A  \"Mozilla/5.0\" \"%s\"|"..."|"...", m->urls` Akan mengambil menggunakan Mozzila 5.0 sebagai user agent dan membuka link yang ada di dalam struct `m->urls`.

`| grep -o 'src=\"[^\"]*\"'` Setelah itu, data yang terdapat di link tersebut akan difilter dengan piping dan syntaxt `grep` dengan pattern `'src=\"[^\"]*\"`.

`| grep -Eo 'https?://[^\"]+'"` Setelah itu, kita akan melakukan piping lagi dan memfilter data sebelumnya dengan pattern `'https?://[^\"]+'`.

Setelah itu setiap link yang didapatkan akan di simpan ke dalam struct `m->img_urls` sebanyak `m->total`.

**3. Membuat folder heroine dan mendownload link image urls**

Pada tahap ini, kita akan mendownload seluruh image urls yang telah kita scrap dari google search.
```c
int main(){
     for (int i = 0; i < 4; i++){
        ...
        download_images(&manhwa[i]);
        ...
    }
}
```
Untuk mendonload manhwa sesuai urutan daftar manhwa. Pada fungsi utama, kita akan menggunakan loop dan memanggil funcion `download_images()` dengan argumen masing-masing address dari struct manhwas. Hal ini akan mencegah terjadinya manhwa kedua didonload terlebih dahulu sebelum manhwa pertama selesai.
```c
typedef struct data {
    char url[9898];
    char dest[9999];
} data;

void download_images(Manhwas* m) {
    pthread_t threads[m->total];
    data args[m->total];
    char folder_heorine[1200];
    snprintf(folder_heorine, sizeof(folder_heorine), "Heroines/%s", m->heroine);
    make_directory(folder_heorine);
    for (int i = 0; i < m->total; i++) {
        snprintf(args[i].dest, sizeof(args[i].dest), "Heroines/%s/%s_%d.jpg", m->heroine, m->heroine, i + 1);
        strncpy(args[i].url, m->img_urls[i], sizeof(args[i].url) - 1);
        args[i].url[sizeof(args[i].url) - 1] = '\0';

        if (pthread_create(&threads[i], NULL, download_image, (void*)&args[i]) != 0) {
            perror("ERROR pthread_create");
            return;
        }
    }
    for (int i = 0; i < m->total && i < 12; i++) {
        pthread_join(threads[i], NULL);
    }
}
```
Sebelum mendownload, di sini saya membuat struct data yang berisi masing-masing url yang akan didownload beserta nama filenya (pathnya) untuk dijadikan argumen pada function `download_image`. Setelah itu, kita buat folder `Heroines` dengan function yang sudah kita buat, yaitu `make_directory()` dan memberikan nama folder heroines yang akan kita buat sebagai argumen. 

Untuk mendownload gambar menggunakan thread, kita dapat menggunakan `pthread_t threads[m->total]` untuk membuat thread sebanyak total gambar yang mau kita download. Pertama-tama kita akan membuat loop untuk membuat thread `download_image` dengan `pthread_create()`. Setelah semua thread berhasil dibuat, kita akan menjalankan semua threadnya dengan membuat loop berisi `pthread_join()`.

```c
void *download_image(void *arg){
    data *args = (data *)arg;

    char cmd[100000];
    snprintf(cmd, sizeof(cmd), "curl -s -A \"Mozilla/5.0\" -o \"%s\" \"%s\"", args->dest, args->url);
    int status = system(cmd);

    ...
    return NULL;
}
```

Fungsi `download_image()` berisi command untuk mendonload link url image yang telah disimpan dalam `args->url` dan menyimpannya ke dalam path `args->dest`.

### **d. Zip. Save. Goodbye**
---
**1. Memanggil fungsi untuk melakukan zip dan remove**
```c
int main(){
    zip_and_remove(manhwa, 4);
}
```
Pada int main(), kita akan memanggil fungsi zip_and_remove() dengan melempar argumen address struct manhwa dan sebuah integer yang merupakan total dari manhwa.

**Full Code `zip_and_remove()`**
```c
void zip_and_remove(Manhwas *m, int n){
    make_directory("Archive/Images");
    for (int i = 0; i < n - 1; i++){
        for (int j = i + 1; j < n; j++){
            if (strcmp(m[i].heroine, m[j].heroine) > 0){
                Manhwas temp = m[i];
                m[i] = m[j];
                m[j] = temp;
            }
        }
    }
    for (int i = 0; i < n; i++){
        char zip_name[4000];
        snprintf(zip_name, sizeof(zip_name), "Images/%s_%s", m[i].capital_title, m[i].heroine);
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        zip_file(zip_name, folder_path);
    }
    for (int i = 0; i < n; i++){
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        remove_path(folder_path);
    }
}
```
**2. Membuat folder direktori untuk Archive/Images**
```c
void zip_and_remove(Manhwas *m, int n){
    make_directory("Archive/Images");
    ...
}
```
Untuk membuat folder direktori `Archive/Images`, kita gunakan function yang sudah kita buat `make_directory()` dengan `Archive/Images` sebagai argumen.

**3. Mensort manhwa yang akan kita zip dan delete berdasarkan urutan abjad**
```c
void zip_and_remove(Manhwas *m, int n){
    ...
    for (int i = 0; i < n - 1; i++){
        for (int j = i + 1; j < n; j++){
            if (strcmp(m[i].heroine, m[j].heroine) > 0){
                Manhwas temp = m[i];
                m[i] = m[j];
                m[j] = temp;
            }
        }
    }
    ...
}
```
Loop di atas akan meswap struct manhwa yang memiliki nama heroine lebih kecil ke depan (dengan parameter ASCII).

**4. Membuat zip**
```c
void zip_and_remove(Manhwas *m, int n){
    ...
    for (int i = 0; i < n; i++){
        char zip_name[4000];
        snprintf(zip_name, sizeof(zip_name), "Images/%s_%s", m[i].capital_title, m[i].heroine);
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        zip_file(zip_name, folder_path);
    }
    ...
}
```
Loop di atas akan membuat path ke file/folder yang akan kita zip sekaligus membuat path ke folder tujuan. Setelah path dibuat, loop tersebut akan memanggil function `zip_file()` yang sudah kita buat sebelumnya dengan memberikan path tujuan dan path asal sebagai argumen.

**5. Mendelete folder Heroine sesuai urutan abjad**
```c
void zip_and_remove(Manhwas *m, int n){
    ...
    for (int i = 0; i < n; i++){
        char folder_path[9999];
        snprintf(folder_path, sizeof(folder_path), "Heroines/%s", m[i].heroine);
        remove_path(folder_path);
    }
}
```
Loop di atas akan membuat path ke folder yang akan kita delete, lalu memanggil function remove_path() dengan memberikan argumen path `Heroines/{nama heroine}` untuk mendelete folder tersebut.

## **Hasil**
### **a. Zip. Save. Goodbye**
1) Isi folder

![A_Tree](https://drive.google.com/file/d/1wR7_49eF0ZxcMxuvNw6uCF_EZrYfl4dF/view?usp=sharing)

2) Isi file `*.txt`

![A_Isi_txt](https://drive.google.com/file/d/1xzfhpQTL-BYwsWPllm1_56c0BbJqllJp/view?usp=sharing)


### **b. Seal the Scrolls**
1) Hasil Zip

![B](https://drive.google.com/file/d/1bdpZoGb1KmxM96fUnRkf5SgUANHteMgH/view?usp=sharing)

### **c. Making the Waifu Gallery**
1) Isi folder

![C_Tree](https://drive.google.com/file/d/1xLk4OOT_CVRJcejwSm2V0LdKch2rzhdV/view?usp=sharing)

2) Bukti kalau didownload secara urut dan multithreading

![C_Bukti_Download_Urut](https://drive.google.com/file/d/1fSOGWUY2dbVU2dsCapTKtVa1xYaovQXY/view?usp=sharing)

3) Bukti hasil download foto

![C_Bukti_foto](https://drive.google.com/file/d/19LFiSZxt0UAsP-DhIAyTh-qgpFOErW5T/view?usp=sharing)

### **d. Zip. Save. Goodbye**
1) Bukti zip dan delete urut secara abjad

![D_Zip_Delete_Urut](https://drive.google.com/file/d/1Zu3ZMMQjRC4c5jEHICF9VkwbY9psuIxM/view?usp=sharing)

2) Isi folder

![D_Tree](https://drive.google.com/file/d/1nPPcGIkDr_WyNLAmzugzvy7LBziLtFFO/view?usp=sharing)
