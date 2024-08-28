// {"0:0":[38,164,103,62]}
// Seed: 6672759238624869220

struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    return ~dot(~(~select(vec3<u32>(35275u, 1u, 0u), vec3<u32>(53193u, arg_0, arg_0), true)), vec3<u32>(max(arg_0 / 1u, arg_2.c >> arg_0), dot(~vec3<u32>(60867u, 30208u, arg_2.c), vec3<u32>(5384u, arg_0, arg_0) / vec3<u32>(4294967295u, arg_0, arg_0)), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = 0i;
    global0 = ~arg_0.b.x - dot(arg_0.b.wzy, arg_1.b.yxy);
    var_0 = -(-(-(-5294i | arg_0.b.x) % -(i32(-2147483648))));
    global0 = -4480i;
    var var_1 = min((vec3<u32>(arg_1.c + arg_0.c, 4294967295u, 0u - arg_0.c) << vec3<u32>(arg_0.c + 1u, func_3(arg_1.c, u_input.a, Struct_1(false, vec4<i32>(arg_1.b.x, 0i, u_input.a, 2147483647i), arg_0.c), vec4<f32>(-1447f, -1529f, 315f, 1375f)), 0u)) & ~vec3<u32>(abs(0u), 13688u, arg_0.c), select(max(~(~vec3<u32>(arg_1.c, 4294967295u, arg_1.c)), ~(~vec3<u32>(arg_0.c, arg_1.c, 11962u))), ((vec3<u32>(arg_1.c, 81592u, arg_1.c) >> vec3<u32>(36559u, 67990u, 4294967295u)) ^ vec3<u32>(arg_0.c, 1u, 4294967295u)) + clamp(~vec3<u32>(44592u, arg_0.c, arg_0.c), vec3<u32>(0u, arg_0.c, arg_0.c) % vec3<u32>(1u, 1u, arg_1.c), vec3<u32>(0u, 4294967295u, arg_0.c) >> vec3<u32>(arg_1.c, arg_0.c, 58339u)), arg_0.a));
    return 1351f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = -min(vec2<f32>(func_2(Struct_1(arg_0.a, vec4<i32>(arg_0.b.x, 1i, 40317i, u_input.a), arg_0.c), arg_0), 745f), min(vec2<f32>(194f, -1087f), arg_1.wz / vec2<f32>(arg_1.x, 422f))) + min(arg_1.ww, vec2<f32>(arg_1.x, arg_1.x));
    var var_1 = Struct_1(true, select(abs(-arg_0.b), vec4<i32>(dot(arg_0.b, vec4<i32>(arg_0.b.x, u_input.a, -1i, arg_0.b.x)), countOneBits(arg_0.b.x), clamp(-48952i, arg_0.b.x, 2147483647i), 0i % arg_0.b.x) + ~(~vec4<i32>(arg_0.b.x, i32(-2147483648), arg_0.b.x, arg_0.b.x)), true), ~(~reverseBits(1u ^ arg_0.c)));
    var_0 = -vec2<f32>(1000f, arg_1.x);
    return Struct_1(all(!select(select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(true, false, var_1.a, arg_0.a)), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), !true)), -arg_0.b, abs(7456u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = func_1(arg_2, ((vec4<f32>(-496f, -583f, -207f, 340f) - exp2(vec4<f32>(-1162f, -2278f, -1624f, 1434f))) / vec4<f32>(-490f, -102f, ceil(1112f), ceil(-1111f))) + -(-select(vec4<f32>(1000f, -399f, -1116f, -1802f), vec4<f32>(309f, 1595f, 1697f, -1581f), arg_1.a)));
    let var_1 = Struct_1(!false, (min(-arg_2.b, arg_1.b - var_0.b) % vec4<i32>(min(u_input.a, -45734i), 51613i, arg_2.b.x - arg_0, max(arg_1.b.x, 42486i))) * vec4<i32>(55029i, 4100i, -(0i), firstTrailingBit(u_input.a) | countOneBits(var_0.b.x)), (clamp(~arg_1.c, abs(68777u), arg_2.c) << 164927u) / ~4294967295u);
    var var_2 = var_1;
    let var_3 = min(vec4<f32>(-992f, min(1000f, -565f), (1447f / -576f) * exp2(2147f), -1000f * floor(388f)), -(-vec4<f32>(-493f, 986f, 1017f, -226f))) + vec4<f32>(-731f, sign(-285f - -987f), 1000f / -1724f, exp2(round(-707f)));
    var var_4 = Struct_1(!arg_2.a, var_0.b, select(~func_3(23436u >> 1u, 33186i, arg_1, sign(vec4<f32>(2871f, var_3.x, var_3.x, var_3.x))), 1u, var_1.a || !(var_3.x >= 270f)));
    return !(!(!func_1(arg_2, var_3 * var_3).a));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(!(!arg_3.a | ((14701u ^ arg_0.x) == (4294967295u + arg_2))), ~((arg_3.b + ~arg_3.b) % (select(arg_3.b, vec4<i32>(25571i, -1i, u_input.a, -12905i), false) | -vec4<i32>(arg_3.b.x, u_input.a, arg_3.b.x, -5436i))), ~select(dot(vec3<u32>(67634u, arg_3.c, arg_3.c), vec3<u32>(arg_2, 4294967295u, 0u)), 16370u ^ arg_0.x, true) << countOneBits(abs(1u >> arg_2)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_5(vec2<u32>(~arg_1.c, ~abs(~59495u)), vec4<bool>(arg_1.a, arg_1.a, true, !arg_1.a), 1563u, Struct_1((countOneBits(arg_1.c) >> ~arg_1.c) > (select(arg_1.c, 1u, false) << ~13626u), vec4<i32>(select(arg_1.b.x, i32(-2147483648) / arg_1.b.x, arg_1.a), clamp(0i >> 70868u, -8460i, ~19509i), countOneBits(-28693i), 1i), dot(vec2<u32>(arg_1.c, arg_1.c) ^ vec2<u32>(arg_1.c, 0u), ~vec2<u32>(4294967295u, arg_1.c)) + arg_1.c));
    global0 = arg_1.b.x;
    let var_1 = arg_1.b.yxw;
    global0 = 0i;
    global0 = 0i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~32549u;
    let var_1 = !(!vec3<bool>(false, false, 559f <= -(-1735f)));
    let var_2 = func_6(vec4<i32>(2746i, -(-26768i), u_input.a, u_input.a ^ ~(~2147483647i)), func_5(vec2<u32>(min(var_0, var_0) - ~0u, var_0), vec4<bool>(func_4(-18362i, func_1(Struct_1(var_1.x, vec4<i32>(4667i, -25158i, 1i, u_input.a), 22482u), vec4<f32>(-259f, -1232f, -190f, -571f)), Struct_1(var_1.x, vec4<i32>(u_input.a, u_input.a, -1i, -1i), 77415u)), var_1.x, 7975i <= (-12462i + -1i), !true), ~((68141u ^ 2632u) | (0u & var_0)), Struct_1(!(true || var_1.x), vec4<i32>(-38768i, ~75598i, u_input.a, u_input.a), var_0)));
    var var_3 = func_5((reverseBits(~vec2<u32>(1u, 4294967295u)) << (~vec2<u32>(var_0, 38826u) & (vec2<u32>(var_0, var_0) >> vec2<u32>(var_2.c, var_0)))) - (max(~vec2<u32>(var_2.c, var_2.c), min(vec2<u32>(24193u, var_0), vec2<u32>(510u, var_0))) + select(vec2<u32>(41370u, var_2.c) ^ vec2<u32>(13098u, 4294967295u), min(vec2<u32>(var_0, var_2.c), vec2<u32>(var_2.c, var_0)), !false)), vec4<bool>(!false, -trunc(-696f) != -658f, !(!var_2.a != any(vec3<bool>(var_2.a, true, true))), var_1.x), var_0, var_2);
    var var_4 = abs(var_2.b.x / dot(~firstLeadingBit(vec4<i32>(i32(-2147483648), var_2.b.x, 12856i, 24477i)), var_2.b / vec4<i32>(74361i, var_2.b.x, var_3.b.x, 0i)));
    let var_5 = min(u_input.a, 1i) ^ dot(vec2<i32>(var_3.b.x, 1555i) / vec2<i32>(var_2.b.x, 1i), vec2<i32>(~(21585i >> var_3.c), 16528i));
    global0 = 37476i;
    let var_6 = ~vec4<u32>(var_0, var_0, ~reverseBits(var_0 % 34321u), ~(~dot(vec3<u32>(149470u, 65611u, 1u), vec3<u32>(var_3.c, var_0, 1u))));
    let var_7 = -select(max(vec3<f32>(-576f, 381f, -254f), vec3<f32>(-1470f, 532f, -721f)) + (vec3<f32>(291f, -692f, -220f) / vec3<f32>(605f, 204f, 2440f)), -(vec3<f32>(-2338f, -246f, -360f) / vec3<f32>(-1411f, 509f, 1000f)), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, var_3.a, var_3.a), !var_1)) - trunc(vec3<f32>(1111f, -min(1206f, -516f), func_2(Struct_1(false, var_3.b, var_6.x), func_6(vec4<i32>(u_input.a, -5911i, var_3.b.x, 1i), Struct_1(var_1.x, vec4<i32>(var_3.b.x, 11877i, var_5, var_3.b.x), var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<f32>(step(var_7.x, 2586f) * -(-556f), var_7.x, -var_7.x - (-195f * -332f), trunc(var_7.x)), var_5, var_6);
}

