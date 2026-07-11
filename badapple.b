pxbuf[65000];
outbuf[200000];
path[30];
dims[2];
charset[] ' ', '.', '-', '+', '**', 'w', 'G', 'H', 'M', '#', '&', '%';

build_path(n) {
    extrn path;
    auto i, j, tmp[6], digits;

    lchar(path, 0, 'g');
    lchar(path, 1, 'e');
    lchar(path, 2, 'n');
    lchar(path, 3, '/');
    i = 4;

    digits = 0;
    if (n == 0) {
        tmp[0] = 0;
        digits = 1;
    } else {
        while (n > 0) {
            tmp[digits] = n % 10;
            n = n / 10;
            digits =+ 1;
        }
    }

    j = digits;
    while (j > 0) {
        j =- 1;
        lchar(path, i, tmp[j] + '0');
        i =+ 1;
    }

    lchar(path, i, '.');
    i =+ 1;
    lchar(path, i, 'b');
    i =+ 1;
    lchar(path, i, 'm');
    i =+ 1;
    lchar(path, i, 'p');
    i =+ 1;
    lchar(path, i, 0);
}

read_dims() {
    extrn dims;
    auto fd;

    fd = open("gen/_info", 0);
    if (fd < 0) return 0;
    nread(fd, dims, 16);
    close(fd);
    return 1;
}

convert_frame(fd) {
    extrn pxbuf, outbuf, charset, dims;
    auto y, x, r, g, b, lum, idx, offset, outpos;
    auto w, h, row_bytes, pad;

    w = dims[0];
    h = dims[1];
    row_bytes = w * 3;
    pad = row_bytes % 4;
    if (pad > 0) row_bytes = row_bytes + 4 - pad;

    outpos = 0;
    lchar(outbuf, 0, 27);
    lchar(outbuf, 1, '[');
    lchar(outbuf, 2, '0');
    lchar(outbuf, 3, ';');
    lchar(outbuf, 4, '0');
    lchar(outbuf, 5, 'H');
    outpos = 6;

    seek(fd, 54, 0);
    nread(fd, pxbuf, row_bytes * h);

    y = h;
    while (y > 0) {
        y =- 1;
        offset = y * row_bytes;
        x = 0;
        while (x < w) {
            b = char(pxbuf, offset);
            g = char(pxbuf, offset + 1);
            r = char(pxbuf, offset + 2);
            lum = 2126 * r + 7152 * g + 722 * b;
            idx = lum * 11 / 2550000;
            if (idx > 11) idx = 11;
            lchar(outbuf, outpos, charset[idx]);
            outpos =+ 1;
            offset =+ 3;
            x =+ 1;
        }
        lchar(outbuf, outpos, '*n');
        outpos =+ 1;
    }

    return outpos;
}

flush(n) {
    extrn outbuf;
    nwrite(1, outbuf, n);
}

build_scale(buf, w, h) {
    auto i, j, digits, n, tmp[6];

    i = 0;
    lchar(buf, 0, 's'); i =+ 1;
    lchar(buf, 1, 'c'); i =+ 1;
    lchar(buf, 2, 'a'); i =+ 1;
    lchar(buf, 3, 'l'); i =+ 1;
    lchar(buf, 4, 'e'); i =+ 1;
    lchar(buf, 5, '='); i =+ 1;

    n = w;
    digits = 0;
    if (n == 0) { tmp[0] = 0; digits = 1; }
    else {
        while (n > 0) {
            tmp[digits] = n % 10;
            n = n / 10;
            digits =+ 1;
        }
    }
    j = digits;
    while (j > 0) {
        j =- 1;
        lchar(buf, i, tmp[j] + '0');
        i =+ 1;
    }

    lchar(buf, i, ':'); i =+ 1;

    n = h;
    digits = 0;
    if (n == 0) { tmp[0] = 0; digits = 1; }
    else {
        while (n > 0) {
            tmp[digits] = n % 10;
            n = n / 10;
            digits =+ 1;
        }
    }
    j = digits;
    while (j > 0) {
        j =- 1;
        lchar(buf, i, tmp[j] + '0');
        i =+ 1;
    }

    lchar(buf, i, 0);
}

ensure_frames() {
    extrn term_cols, term_rows, sys_wait;
    auto w, h, fd, pid;
    auto info[2], old_w, old_h, scale[30];
    auto argv[9];

    w = term_cols();
    h = term_rows();
    h =- 1;
    if (w > 480) w = 480;
    if (h > 360) h = 360;
    if (w <= 0) return;
    if (h <= 0) return;

    fd = open("gen/_info", 0);
    if (fd >= 0) {
        nread(fd, info, 16);
        close(fd);
        old_w = info[0];
        old_h = info[1];
        fd = open("gen/1.bmp", 0);
        if (fd >= 0) {
            close(fd);
            if (old_w == w && old_h == h) return;
        }
    }

    printf("terminal: %dx%d, extracting frames...*n", w, h);

    pid = fork();
    if (pid == 0) {
        execl("/bin/rm", "rm", "-rf", "gen", 0);
        exit();
    }
    while (sys_wait() < 0) {}

    pid = fork();
    if (pid == 0) {
        execl("/bin/mkdir", "mkdir", "-p", "gen", 0);
        exit();
    }
    while (sys_wait() < 0) {}

    info[0] = w;
    info[1] = h;
    fd = creat("gen/_info", 420);
    nwrite(fd, info, 16);
    close(fd);

    build_scale(scale, w, h);
    argv[0] = "ffmpeg";
    argv[1] = "-i";
    argv[2] = "movie.mp4";
    argv[3] = "-r";
    argv[4] = "30";
    argv[5] = "-vf";
    argv[6] = scale;
    argv[7] = "gen/%d.bmp";
    argv[8] = 0;

    pid = fork();
    if (pid == 0) {
        execv("/usr/bin/ffmpeg", argv, 8);
        execv("/bin/ffmpeg", argv, 8);
        exit();
    }
    while (sys_wait() < 0) {}
}

main(argc, argv) {
    extrn path, dims;
    auto fd, frame, pid, n, ln_argv[5];
    auto start, target;

    if (argc < 2) {
        printf("usage: badapple <video>*n");
        exit();
    }

    ln_argv[0] = "ln";
    ln_argv[1] = "-sf";
    ln_argv[2] = argv[1];
    ln_argv[3] = "movie.mp4";
    ln_argv[4] = 0;
    pid = fork();
    if (pid == 0) {
        execv("/bin/ln", ln_argv, 4);
        exit();
    }
    while (sys_wait() < 0) {}

    ensure_frames();

    if (!read_dims()) {
        printf("no frames, audio only*n");
    }
    printf("%c[?25l", 27);

    pid = fork();
    if (pid == 0) {
        execl("/bin/sh", "sh", "-c",
        "ffplay -nodisp -autoexit -volume 20 movie.mp4", 0);
        exit();
    }

    start = time_ms();
    frame = 1;
    while (1) {
        target = start + frame * 33;
        build_path(frame);
        fd = open(path, 0);
        if (fd < 0) goto done;
        n = convert_frame(fd);
        close(fd);
        flush(n);
        n = time_ms();
        if (target > n) sleep_ms(target - n);
        frame =+ 1;
    }

done:
    printf("%c[?25h*n", 27);
}
