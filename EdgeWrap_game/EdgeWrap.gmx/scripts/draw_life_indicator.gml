///draw_life_indicator(position, blank)

position = argument0;
blank = argument1;

if !blank {
    // shadow
    draw_sprite_ext(sChar, oChar.image_index,
                    LIFE_COUNTER_START + (LIFE_COUNTER_STEP * position) + LIFE_COUNTER_SHADOW_OFFSET,
                    LIFE_COUNTER_Y + HUD_Y + LIFE_COUNTER_SHADOW_OFFSET,
                    1, 1, 0, c_black, 0.25);
    // character
    draw_sprite_ext(sChar, oChar.image_index,
                    LIFE_COUNTER_START + (LIFE_COUNTER_STEP * position),
                    LIFE_COUNTER_Y + HUD_Y,
                    1, 1, 0, oChar.image_blend, image_alpha);
} else {
    // empty
    draw_sprite_ext(sChar, oChar.image_index,
                    LIFE_COUNTER_START + (LIFE_COUNTER_STEP * position),
                    LIFE_COUNTER_Y + HUD_Y,
                    1, 1, 0, oChar.image_blend, 0.125);
}

