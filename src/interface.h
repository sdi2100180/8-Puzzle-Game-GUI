#ifndef INTERFACE_H
#define INTERFACE_H

// window size
#define SCREEN_WIDTH 800
#define SCREEN_HEIGHT 450

// puzzle tile image size
#define IMAGE_SIZE 133

// window mode enum
typedef enum{
    WELCOME, AI, MANUAL, EXIT
}Mode;

// starts the game loop
void start_gameplay(state *, state *);

#endif