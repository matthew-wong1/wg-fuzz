// {"0:0":[139,19,108,38,52,186,143,99,210,104,117,219,31,250,175,237,204,24,25,171,204,237,145,149,116,58,20,223,127,241,39,249]}
// Seed: 4050056139760079523

struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(3590u, 24149u, 4203u), vec3<u32>(50616u, 0u, 26548u), vec3<u32>(3469u, 0u, 34312u));

fn func_3() -> vec2<i32> {
    var var_0 = -5657i;
    var var_1 = Struct_3(-17777i, Struct_2(select(select(!vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, all(vec3<bool>(true, true, true))), vec4<bool>(false & false, 221u >= 4294967295u, all(vec2<bool>(true, true)), 26930u > u_input.b.x)), vec4<i32>(~firstTrailingBit(1i), 3087i, countOneBits(-26709i), global0.x), Struct_1(~u_input.b.x * ~31848u, clamp(u_input.b.x ^ 28406u, u_input.b.x, ~u_input.b.x), floor(-775f) - (371f - 501f), min(u_input.b.x, u_input.b.x - u_input.b.x), trunc(round(vec4<f32>(-1317f, -1754f, 980f, 287f)))), vec2<u32>(max(0u, 40018u), ~u_input.b.x) - ~countOneBits(u_input.b.yw), Struct_1(min(90027u, select(1u, u_input.b.x, false)), ~(u_input.b.x & u_input.b.x), trunc(-612f) / -212f, dot(vec2<u32>(6875u, 4294967295u), ~u_input.b.wy), abs(-vec4<f32>(1473f, -372f, -439f, -230f)))), select(select(vec2<bool>(select(true, true, true), !false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), !vec2<bool>(true, false)), vec2<bool>(!true, any(vec4<bool>(true, true, true, false)))), select(!vec2<bool>(false, false), select(!vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), 1i == -(i32(-2147483648))), (4294967295u >= (48051u | 4294967295u)) & any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), Struct_2(select(vec4<bool>(!false, false && false, true | true, !false), vec4<bool>(!true, false, true, -1787f >= -502f), !(!vec4<bool>(true, false, true, true))), reverseBits(vec4<i32>(0i, 2147483647i, u_input.a, -64650i) + ~vec4<i32>(54144i, 1i, 18604i, i32(-2147483648))), Struct_1(16056u, countOneBits(u_input.b.x), -1540f, abs(62096u), step(vec4<f32>(1051f, -256f, 239f, 558f), ceil(vec4<f32>(-541f, -400f, 857f, -296f)))), u_input.b.xx, Struct_1(~0u, dot(~vec3<u32>(1159u, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, 0u)), (128f * -229f) + floor(3064f), 0u, -(vec4<f32>(-472f, 605f, 367f, 225f) + vec4<f32>(-446f, -100f, -349f, 1147f)))));
    let var_2 = Struct_3(global0.x >> 93035u, var_1.b, select(vec2<bool>(all(!var_1.b.a), var_1.a != u_input.a), var_1.c, !true), var_1.b);
    var var_3 = var_1.b.c.a;
    global1 = var_1.c.x;
    return ~(~vec2<i32>(-1i, 2699i));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    let var_0 = vec2<bool>(!all(!vec3<bool>(true, true, true)) || true, all(vec2<bool>(!true, !false)));
    var var_1 = Struct_5(vec4<bool>(any(select(!vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true), !vec3<bool>(true, false, var_0.x))), 705f != -(-2067f), var_0.x, !true), -(dot(func_3(), vec2<i32>(global0.x, 19900i)) % select(u_input.a, 3226i, true)));
    var_1 = Struct_5(var_1.a, -32016i);
    var_1 = Struct_5(var_1.a, 0i);
    global2 = array<vec3<u32>, 3>();
    return ceil(((trunc(199f) * max(685f, -322f)) + ((979f / 1238f) * 1000f)) * ((floor(636f) / 584f) + (round(243f) + 984f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    global0 = vec4<i32>(0i, firstLeadingBit(-69087i) >> 0u, dot(~abs(vec2<i32>(arg_2.b.a, -1i)), vec2<i32>(countOneBits(dot(vec3<i32>(u_input.a, 0i, arg_2.c.x), vec3<i32>(0i, global0.x, u_input.a))), ~1i)), global0.x);
    global0 = vec4<i32>(reverseBits(-1i), global0.x, reverseBits(abs(arg_2.b.d.b.x)), -global0.x);
    global2 = array<vec3<u32>, 3>();
    var var_0 = vec2<u32>(min(dot(~u_input.b, max(u_input.b, arg_0)), arg_2.a) / dot(firstLeadingBit(reverseBits(vec4<u32>(arg_0.x, u_input.b.x, arg_2.b.b.d.x, 1u))), u_input.b), arg_0.x);
    global1 = arg_2.b.c.x;
    return arg_2.b.d;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    global2 = array<vec3<u32>, 3>();
    let var_0 = 30325u;
    let var_1 = (trunc(select(arg_3.b.d.e.e.yx - arg_3.b.d.c.e.xz, arg_3.b.b.c.e.wy, !arg_3.b.b.a.zw)) + vec2<f32>(339f, -select(arg_3.b.b.e.c, arg_3.e, false))) * ((-(-arg_3.b.d.c.e.wx) + -sign(arg_3.b.b.c.e.zw)) * arg_3.b.d.c.e.zw);
    let var_2 = func_4(~min(u_input.b, vec4<u32>(firstLeadingBit(4294967295u), ~1u, countOneBits(0u), arg_3.b.b.e.d)), -(((623f + var_1.x) / -(-454f)) * func_2(vec2<u32>(u_input.b.x, 33708u) - vec2<u32>(arg_3.a, u_input.b.x), ~1u)), arg_3);
    var var_3 = var_2.c;
    return 471f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~0u, ~(~0u), func_1(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), firstLeadingBit(global0.x) >> 34472u, !(!vec4<bool>(true, true, true, true)), Struct_4(~1u, Struct_3(2147483647i, Struct_2(vec4<bool>(false, false, false, true), vec4<i32>(global0.x, 0i, i32(-2147483648), 1i), Struct_1(1u, u_input.b.x, -319f, u_input.b.x, vec4<f32>(-1574f, -119f, -150f, -824f)), vec2<u32>(4294967295u, 10299u), Struct_1(93327u, 4294967295u, 1423f, u_input.b.x, vec4<f32>(339f, -127f, -361f, -182f))), vec2<bool>(false, true), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(-32614i, global0.x, global0.x, -1i), Struct_1(20280u, 4294967295u, 1121f, 5315u, vec4<f32>(-1698f, -211f, 416f, 649f)), u_input.b.ww, Struct_1(70381u, u_input.b.x, 122f, 4294967295u, vec4<f32>(336f, 1000f, 133f, 845f)))), firstLeadingBit(global0.zw), 1122f, 1859f - 1154f)) - floor(trunc(856f) / (273f - -1300f)), u_input.b.x, -round(vec4<f32>(-1827f + -300f, -641f - 598f, -172f, step(1302f, -116f))));
    let var_1 = (round(vec4<f32>(-730f, var_0.c - var_0.e.x, 247f, -(-1000f))) + (sign(var_0.e + var_0.e) * floor(vec4<f32>(var_0.e.x, -764f, -1000f, var_0.e.x)))) - var_0.e;
    global1 = min(reverseBits(u_input.b.x), reverseBits(dot(u_input.b.zx | u_input.b.zw, u_input.b.ww))) > ~abs((14153u / 59735u) - (u_input.b.x % var_0.a));
    var var_2 = func_4(~(u_input.b >> vec4<u32>(var_0.a & u_input.b.x, 4294967295u, 4294967295u * var_0.d, ~0u)), var_0.c, Struct_4(u_input.b.x, Struct_3(global0.x, Struct_2(vec4<bool>(false, false, false, false), -vec4<i32>(u_input.a, global0.x, 7276i, u_input.a), Struct_1(1u, 85207u, var_1.x, var_0.a, vec4<f32>(-1136f, 2103f, 636f, var_0.c)), vec2<u32>(1u, 0u) >> vec2<u32>(4294967295u, var_0.a), func_4(vec4<u32>(1u, 1u, u_input.b.x, 4294967295u), 218f, Struct_4(0u, Struct_3(1i, Struct_2(vec4<bool>(false, false, true, true), vec4<i32>(global0.x, -12693i, 24555i, 62058i), Struct_1(var_0.a, var_0.b, -316f, var_0.b, vec4<f32>(1000f, -111f, 296f, var_0.e.x)), vec2<u32>(0u, var_0.b), Struct_1(var_0.b, var_0.d, var_0.c, u_input.b.x, vec4<f32>(var_0.c, var_0.e.x, 121f, var_0.e.x))), vec2<bool>(true, false), Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(global0.x, u_input.a, u_input.a, 2147483647i), Struct_1(33594u, var_0.b, var_1.x, var_0.d, vec4<f32>(var_0.c, -185f, var_0.c, var_0.e.x)), u_input.b.yx, Struct_1(u_input.b.x, 4294967295u, -934f, 30919u, vec4<f32>(var_1.x, 1125f, var_1.x, var_1.x)))), global0.wz, var_1.x, var_0.e.x)).e), select(!vec2<bool>(true, true), !vec2<bool>(false, true), true), Struct_2(vec4<bool>(true, false, true, true), vec4<i32>(global0.x, i32(-2147483648), -1i, 11966i), func_4(u_input.b, var_1.x, Struct_4(u_input.b.x, Struct_3(0i, Struct_2(vec4<bool>(false, true, true, false), vec4<i32>(u_input.a, global0.x, u_input.a, i32(-2147483648)), Struct_1(var_0.a, 54688u, var_0.c, 4294967295u, vec4<f32>(-1155f, -247f, -883f, -480f)), vec2<u32>(77699u, u_input.b.x), Struct_1(1u, 1u, 1000f, 0u, var_1)), vec2<bool>(false, false), Struct_2(vec4<bool>(true, false, false, true), vec4<i32>(1i, global0.x, u_input.a, 0i), Struct_1(var_0.a, 0u, 772f, 48410u, var_0.e), vec2<u32>(1u, u_input.b.x), Struct_1(var_0.a, var_0.d, -612f, 4294967295u, var_0.e))), global0.wz, 445f, var_1.x)).c, ~vec2<u32>(var_0.b, 4294967295u), func_4(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), var_1.x, Struct_4(0u, Struct_3(global0.x, Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(global0.x, u_input.a, global0.x, -20345i), Struct_1(var_0.b, 31257u, var_0.c, 0u, vec4<f32>(var_1.x, -1214f, -1376f, var_0.e.x)), u_input.b.wy, Struct_1(var_0.d, 35726u, -895f, 39291u, vec4<f32>(var_1.x, -573f, -123f, 212f))), vec2<bool>(true, true), Struct_2(vec4<bool>(false, true, false, true), vec4<i32>(55046i, 26622i, -1i, global0.x), Struct_1(4294967295u, u_input.b.x, var_1.x, var_0.b, var_0.e), vec2<u32>(6965u, var_0.b), Struct_1(var_0.a, 0u, var_0.e.x, u_input.b.x, var_1))), global0.yw, -1000f, var_0.c)).e)), global0.zz, -1000f, -trunc(-(-982f))));
    let var_3 = var_0.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_2.b, vec3<f32>(var_2.c.c, var_0.e.x, func_4(~abs(vec4<u32>(0u, 1u, var_0.a, 0u)), -(1596f + var_2.e.e.x), Struct_4(var_2.c.a | 2135u, Struct_3(46880i, Struct_2(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<i32>(i32(-2147483648), u_input.a, 0i, global0.x), Struct_1(0u, 4294967295u, var_1.x, u_input.b.x, var_0.e), vec2<u32>(49519u, var_2.d.x), var_2.e), var_2.a.zx, Struct_2(vec4<bool>(false, false, var_2.a.x, false), var_2.b, Struct_1(0u, 4294967295u, var_2.c.c, var_0.d, var_1), vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(var_0.a, 0u, var_2.e.c, 0u, var_0.e))), var_2.b.wy, var_1.x, -var_2.c.e.x)).c.c), global0.x);
}

