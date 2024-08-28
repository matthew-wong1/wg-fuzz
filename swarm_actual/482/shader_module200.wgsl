// {"0:0":[81,224,166,101,55,70,103,169,107,228,79,49,132,48,80,33,16,101,151,235,194,25,232,9,170,77,67,247,4,223,254,87,16,28,132,180,226,160,35,80,175,176,232,15,36,233,187,11,37,33,212,180,70,240,21,183,8,171,154,147,105,171,170,202]}
// Seed: 1136413891845277333

struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: Struct_4;

var<private> global2: bool;

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: f32) -> i32 {
    var var_0 = Struct_2(abs(abs(global1.b.a)), global1.b, global1.b, vec3<i32>(~(-15101i), abs(i32(-2147483648)), u_input.e ^ u_input.d.x), (-u_input.d ^ vec4<i32>(global1.b.d, global1.b.d, reverseBits(53386i), min(u_input.c, 1i))) + u_input.d);
    global2 = arg_1.x == arg_1.x;
    global2 = (global1.a || ((0u >= 20302u) == (u_input.c == ~(-29580i)))) | false;
    var var_1 = arg_2 / abs(-((var_0.c.a.x + global1.b.a.x) / -1102f));
    global1 = Struct_4(false, global1.b);
    return dot(vec2<i32>(-(-global1.b.d / var_0.b.b), global1.b.d), vec2<i32>(select(clamp(0i * -17996i, -u_input.d.x, -12273i), min(var_0.b.d, firstLeadingBit(2147483647i)), false), -30318i));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = false;
    var var_0 = vec3<i32>(-min(func_3(vec2<u32>(0u, 0u), vec2<f32>(-311f, -997f), 928f), abs(-3695i)), ~global1.b.b, u_input.b.x) ^ global1.b.c.zzz;
    global0 = array<vec3<bool>, 28>();
    var var_1 = 19561i;
    let var_2 = Struct_4(any(select(vec3<bool>(false, global1.b.a.x > arg_1.a.x, arg_0), !global0[~u_input.a.x], vec3<bool>(false, true, global1.a))), global1.b);
    return abs((-arg_1.a.x - -1672f) / -global1.b.a.x);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = vec3<f32>(-(1244f / arg_2), exp2(global1.b.a.x * 393f), global1.b.a.x);
    global0 = array<vec3<bool>, 28>();
    var var_1 = global1.a;
    var var_2 = -(min((var_0.x - -378f) * func_2(global1.a, global1.b), arg_2) * -433f);
    let var_3 = Struct_2(global1.b.a, global1.b, Struct_1(-(var_0 + -global1.b.a), u_input.e, abs(clamp(u_input.d, vec4<i32>(u_input.e, u_input.e, global1.b.d, u_input.d.x), global1.b.c)), ~u_input.b.x & firstTrailingBit(18904i)), select((~vec3<i32>(-13728i, i32(-2147483648), 0i) >> ~vec3<u32>(4294967295u, u_input.a.x, 41213u)) & vec3<i32>(u_input.d.x, global1.b.b - 8915i, 2147483647i), vec3<i32>(global1.b.b, 1i, 1i), false), -(-firstTrailingBit(abs(u_input.d))));
    return -(~(i32(-2147483648)) << u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = reverseBits(min(max(vec2<i32>(global1.b.d, u_input.e) ^ vec2<i32>(2147483647i, 1i), firstTrailingBit(arg_0.a.c.wz)) ^ (arg_0.a.c.xz | countOneBits(arg_0.a.c.xz)), vec2<i32>(-u_input.b.x, arg_0.a.c.x)));
    let var_1 = abs(~(vec2<u32>(dot(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), 1u | 0u) - (countOneBits(vec2<u32>(u_input.a.x, 46832u)) * (u_input.a.xx | u_input.a.zy))));
    var var_2 = ~(~(~u_input.a.zw)) / ((~(~vec2<u32>(var_1.x, 4294967295u)) * reverseBits(abs(vec2<u32>(149056u, u_input.a.x)))) | ((vec2<u32>(39736u, 33934u) - select(vec2<u32>(17399u, 4294967295u), vec2<u32>(var_1.x, u_input.a.x), vec2<bool>(arg_0.b, true))) | vec2<u32>(min(var_1.x, var_1.x), max(u_input.a.x, 121345u))));
    var var_3 = !any(select(vec3<bool>(!global1.a, arg_0.b, global1.a), select(global0[firstTrailingBit(var_1.x)], global0[1u], !global1.a), global1.a));
    var var_4 = -(~abs(0i & 32718i));
    return Struct_4(any(!(!select(vec2<bool>(true, false), vec2<bool>(arg_0.b, global1.a), false))), Struct_1(vec3<f32>(global1.b.a.x / arg_0.a.a.x, -470f, global1.b.a.x) / vec3<f32>(1204f, arg_1.x, 419f), ~(~countOneBits(i32(-2147483648))), u_input.d, global1.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.b.a, -u_input.d.x, ~global1.b.c, global1.b.d);
    let var_1 = !select(!vec4<bool>(!false, false, !global1.a, any(global0[u_input.a.x])), !(!vec4<bool>(global1.a, false, true, global1.a)), var_0.b <= ((69401i * var_0.b) ^ min(global1.b.c.x, global1.b.d)));
    global1 = func_4(Struct_3(Struct_1(-vec3<f32>(var_0.a.x, 1482f, 1944f), func_1(select(408f, -1239f, false), true, global1.b.a.x), vec4<i32>(69637i - global1.b.c.x, 10941i, min(-25942i, 41664i), 2147483647i), ~u_input.b.x), global1.a), sign(-(-vec4<f32>(global1.b.a.x, -1000f, var_0.a.x, global1.b.a.x))));
    let var_2 = func_4(Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_1(var_0.a, 1i, global1.b.c, var_0.b), global1.a), vec4<f32>(1282f, 325f, global1.b.a.x, var_0.a.x)).b, global1.a), vec4<f32>(var_0.a.x, -1086f, var_0.a.x, global1.b.a.x) * (vec4<f32>(global1.b.a.x, -141f, 976f, global1.b.a.x) * vec4<f32>(global1.b.a.x, global1.b.a.x, -235f, -2065f))).b, !(!var_1.x) || !global1.a), round(select((vec4<f32>(global1.b.a.x, -1000f, -1008f, -277f) - vec4<f32>(global1.b.a.x, global1.b.a.x, -1000f, var_0.a.x)) + -vec4<f32>(global1.b.a.x, global1.b.a.x, var_0.a.x, global1.b.a.x), select(ceil(vec4<f32>(var_0.a.x, -212f, var_0.a.x, global1.b.a.x)), min(vec4<f32>(var_0.a.x, -701f, 461f, 445f), vec4<f32>(1290f, 331f, 1027f, var_0.a.x)), !vec4<bool>(global1.a, global1.a, global1.a, false)), global1.a))).b;
    global1 = Struct_4(var_1.x, var_0);
    global0 = array<vec3<bool>, 28>();
    var var_3 = ~(var_0.c.x << 18750u) << firstLeadingBit((u_input.a.x - firstLeadingBit(u_input.a.x)) ^ ~(u_input.a.x << 21689u));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a / round(global1.b.a), var_2.c.yy, max(1314f, -489f));
}

