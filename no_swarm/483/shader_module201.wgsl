// {"0:0":[115,4,63,65,155,90,178,233,242,99,5,197,225,225,79,252,240,202,93,8,66,244,172,157,143,80,12,220,141,7,52,51,96,106,188,250,213,230,190,158,224,64,163,238,237,81,111,205,9,72,23,159,8,136,197,40,107,160,55,132,196,250,62,134]}
// Seed: 13464880223456288873

struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 258f;

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> bool {
    var var_0 = arg_2.b.a.a;
    var_0 = ~(~(arg_2.b.b.a ^ (u_input.c % vec3<u32>(arg_2.b.a.a.x, arg_1, 0u))));
    var var_1 = var_0.x;
    global0 = ceil(arg_2.b.a.c.x);
    let var_2 = Struct_3(any(!(!vec2<bool>(true, true))));
    return var_2.a;
}

fn func_2() -> vec4<f32> {
    global0 = trunc(470f);
    global0 = min(-ceil(350f), select(177f + -249f, -(-round(-165f)), (37993u <= u_input.d) || func_3(-(-358f), 1u / 81070u, Struct_4(vec4<f32>(1000f, -565f, 524f, -1132f), Struct_2(Struct_1(vec3<u32>(u_input.c.x, u_input.d, u_input.d), true, vec3<f32>(-693f, 1708f, 1342f)), Struct_1(u_input.c, false, vec3<f32>(-1051f, -521f, 616f)), u_input.d)))));
    global0 = -(-747f * 2104f);
    var var_0 = vec4<u32>(4294967295u, u_input.c.x, firstLeadingBit(4294967295u), select(u_input.c.x, u_input.c.x & 39979u, all(vec2<bool>(true, true))) ^ dot(countOneBits(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d) >> vec4<u32>(0u, u_input.c.x, 31716u, u_input.c.x)), (vec4<u32>(u_input.c.x, 59068u, 1u, u_input.d) % vec4<u32>(0u, 19734u, 10633u, 56039u)) * ~vec4<u32>(u_input.d, 42929u, 1u, 0u)));
    global0 = 989f;
    return -(-exp2(-(vec4<f32>(-1810f, 421f, 1252f, 394f) / vec4<f32>(372f, -327f, -1514f, 1472f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec4<bool>(-ceil(-141f) < ((arg_2.b.b.c.x / -(-436f)) + arg_3.c.x), arg_3.b, any(select(select(select(vec4<bool>(arg_3.b, arg_2.b.b.b, arg_2.b.a.b, arg_3.b), vec4<bool>(arg_2.b.a.b, arg_2.b.b.b, arg_3.b, arg_2.b.a.b), arg_2.b.b.b), select(vec4<bool>(arg_2.b.b.b, true, false, true), vec4<bool>(arg_2.b.b.b, arg_2.b.a.b, arg_3.b, arg_3.b), vec4<bool>(arg_2.b.a.b, arg_2.b.b.b, true, arg_3.b)), select(vec4<bool>(arg_3.b, true, false, false), vec4<bool>(false, true, arg_3.b, arg_3.b), arg_2.b.b.b)), select(select(vec4<bool>(arg_2.b.a.b, true, arg_2.b.b.b, false), vec4<bool>(arg_2.b.b.b, true, false, false), false), !vec4<bool>(arg_2.b.a.b, arg_2.b.a.b, arg_2.b.b.b, arg_2.b.b.b), func_3(-1278f, 39033u, arg_2)), all(!vec2<bool>(arg_2.b.b.b, false)))), -523f <= -(-arg_2.a.x));
    return vec4<bool>(all(vec2<bool>(arg_2.b.b.b, arg_2.b.b.b)) && any(!select(vec4<bool>(var_0.x, arg_3.b, arg_2.b.a.b, true), vec4<bool>(var_0.x, true, false, true), arg_2.b.a.b)), func_3(-((arg_0.x - 2028f) + (476f * -1685f)), arg_1, Struct_4(arg_0, arg_2.b)), all(select(select(!var_0, vec4<bool>(false, false, false, false), var_0), vec4<bool>(arg_0.x < arg_2.b.b.c.x, u_input.a != u_input.e, !false, true), vec4<bool>(all(var_0.yyx), arg_2.b.a.b & var_0.x, false, arg_3.b && true))), func_3(arg_3.c.x, 4294967295u, Struct_4(vec4<f32>(-1159f, arg_2.a.x / arg_2.a.x, -arg_2.a.x, arg_3.c.x * arg_2.b.b.c.x), arg_2.b)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec3<u32> {
    global0 = -357f;
    global0 = arg_0;
    let var_0 = ~vec2<i32>(-21135i, dot(firstLeadingBit(abs(vec4<i32>(u_input.a, u_input.a, -12766i, 0i))), ~reverseBits(vec4<i32>(u_input.e, -22557i, u_input.e, 21565i))));
    let var_1 = -212f;
    var var_2 = any(!select(func_4(func_2(), 1u & 1u, Struct_4(vec4<f32>(1119f, 677f, arg_0, -616f), Struct_2(Struct_1(u_input.c, false, vec3<f32>(arg_0, -279f, 1230f)), Struct_1(vec3<u32>(0u, arg_1.x, arg_1.x), false, vec3<f32>(-1290f, 772f, 985f)), u_input.c.x)), Struct_1(u_input.c, true, vec3<f32>(var_1, -299f, -323f))), vec4<bool>(true, u_input.e >= -12095i, !true, func_4(vec4<f32>(440f, -895f, arg_0, -425f), u_input.c.x, Struct_4(vec4<f32>(arg_0, arg_0, arg_0, arg_0), Struct_2(Struct_1(vec3<u32>(1u, u_input.d, u_input.c.x), false, vec3<f32>(arg_0, -1790f, 786f)), Struct_1(vec3<u32>(u_input.c.x, arg_2.x, 0u), false, vec3<f32>(arg_0, -1828f, 195f)), arg_2.x)), Struct_1(vec3<u32>(arg_2.x, 0u, 55073u), false, vec3<f32>(arg_0, -1029f, -1357f))).x), false));
    return vec3<u32>(max(~10878u, 4294967295u), arg_2.x, 7461u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<f32>(-(-338f + -1865f), -834f, -max(362f, 193f), (1000f - -155f) / 354f) * vec4<f32>(-1000f, 280f, -(-1000f), floor(317f * -1076f)), Struct_2(Struct_1((vec3<u32>(u_input.d, u_input.c.x, 6799u) | u_input.c) | (vec3<u32>(78373u, 4294967295u, u_input.d) - vec3<u32>(43845u, 10632u, 27228u)), all(vec4<bool>(false, true, false, true)), trunc(vec3<f32>(525f, -961f, 528f))), Struct_1(func_1(abs(-1000f), u_input.c, vec2<u32>(1u, 1u)), (true & false) && (true & false), (vec3<f32>(1058f, -103f, 332f) * vec3<f32>(646f, 1865f, -660f)) / -vec3<f32>(564f, -1000f, 244f)), ~u_input.d));
    var var_1 = var_0.b.a.b;
    global0 = ((floor(ceil(1567f)) + abs(-var_0.b.a.c.x)) + ((max(322f, var_0.a.x) - 120f) + abs(var_0.a.x))) - -2004f;
    var_1 = var_0.a.x < -1755f;
    let var_2 = vec4<i32>((max(~u_input.b.x, ~u_input.e) ^ ~(~u_input.b.x)) | 2147483647i, -28177i, -7535i, abs(u_input.e & firstTrailingBit(abs(u_input.b.x))));
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-545f, var_3.a.c.x, var_0.a.x);
}

