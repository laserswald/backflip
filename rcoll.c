// rcoll
// a tool that tells if two rectangles are colliding.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>
#include <unistd.h>

typedef struct rect {
    int x, y, w, h;
} rect_t;

// returns true if A is within B
bool within(rect_t a, rect_t b){
    if (a.x >= b.x && a.y >= b.y &&
        a.x + a.w <= b.x + b.w &&
        a.y + a.h <= b.y + b.h)
        return true;
    else return false;
}

// returns true if A and B touch
bool touching(rect_t a, rect_t b){
    if (within(a, b)) return true;
    if (a.x > b.x + b.w) return false;
    if (a.y > b.y + b.h) return false;
    if (b.x > a.x + a.w) return false;
    if (b.y > a.y + a.h) return false;
    return true;
}

bool center_within(rect_t a, rect_t b) {
    a.x += a.w / 2;
    a.y += a.h / 2;
    a.w = a.h = 0;
    return within(a, b);
}

rect_t* rect_new(int x, int y, int w, int h){
    // Create the rectangle
    rect_t* ret = malloc(sizeof(rect_t));
    ret = memset(ret, 0, sizeof(rect_t));
    ret->x = x;
    ret->y = y;
    ret->w = w;
    ret->h = h;
    return ret;
}

rect_t* rect_fromstr(char *string){

    // Parse the string
    char* token;
    int params[4];
    int index = 0;
    token = strtok(string, " ");
    while (token && index < 4){
        params[index] = atoi(token);
        ++index;
        token = strtok(NULL, " ");
    }
    return rect_new(params[0],params[1],params[2],params[3]);
}

void run_tests(){
    rect_t ref = {5, 5, 3, 3};
    rect_t test = {0, 0, 1, 1};
    assert(!within(test, ref));

    test.x = 5;
    test.y = 5;
    assert(within(test, ref));

    test.x = 9;
    test.y = 9;
    assert(!within(test, ref));

    test.x = 8;
    test.y = 5;
    assert(!within(test, ref));

}

int main(int argc, char *argv[]) {

    // program switches
    bool return_within = false;
    bool center = false;
    bool test_mode = false;

    // parse options
    char opt = 0;
    while ((opt = getopt(argc, argv, "wtc")) != -1) {
        switch (opt){
            case 'w':
                return_within = true;
                break;
            case 'c':
                center = true;
                break;
            case 't':
                run_tests();
                exit(0);
                break;
            default:
                fprintf(stderr, "Unrecognized argument\n");
                exit(-255);
        }
    }

    if (argc - optind != 2){
        fprintf(stderr, "This only takes two arguments.\n");
        exit(-255);
    }

    rect_t *a = rect_fromstr(argv[optind]);
    rect_t *b = rect_fromstr(argv[optind+1]);

    if (return_within) {
        return !within(*a, *b);
    }

    if (center) {
        return !center_within(*a, *b);
    }


    printf("%i\n",(touching(*a, *b)));

    return 0;
}
