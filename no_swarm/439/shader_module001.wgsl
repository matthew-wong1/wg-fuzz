// {"0:0":[9,159,20,77,3,212,249,27,198,45,65,33,254,4,34,155,203,118,164,149,230,233,218,105,227,100,107,9,127,81,68,36,92,48,243,81,117,150,139,126,107,51,244,238,197,69,97,230,176,4,17,159,5,51,235,167,104,144,86,30,230,59,14,61]}
// Seed: 8533377690120341611

struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn func_3(arg_0: Struct_4, arg_1: bool) -> bool {
    let var_0 = select(select(!select(!vec4<bool>(true, false, true, false), !vec4<bool>(arg_0.a.d, arg_0.a.d, true, arg_0.a.d), true), select(select(select(vec4<bool>(false, arg_1, arg_0.a.d, arg_1), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, false, true, arg_1)), vec4<bool>(arg_0.a.d, true, false, false), vec4<bool>(true, arg_1, false, arg_1)), select(!vec4<bool>(arg_1, arg_1, arg_1, arg_0.a.d), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, arg_0.a.d, arg_1, arg_1)), vec4<bool>(arg_0.b == 72756u, all(vec2<bool>(true, arg_1)), arg_1, !false)), !(false | !arg_1)), !(!vec4<bool>(all(vec2<bool>(true, arg_1)), arg_1, arg_1, arg_1 & false)), true);
    global0 = arg_0.c;
    global0 = arg_0.c;
    let var_1 = Struct_2(arg_0.a);
    let var_2 = Struct_1(select(max(vec4<i32>(1i, arg_0.e, var_1.a.b.x, 1i), vec4<i32>(-51316i, -1i, arg_0.c, 0i)) ^ (u_input.c & vec4<i32>(-56563i, arg_0.a.a.x, 0i, arg_0.e)), vec4<i32>(~reverseBits(arg_0.a.b.x), -(i32(-2147483648) % arg_0.e), 0i, ~var_1.a.a.x), select(var_0, var_0, !select(var_0, vec4<bool>(var_1.a.d, arg_0.a.d, arg_0.a.d, arg_1), var_0))), ~arg_0.a.a.zyx, floor(-(vec3<f32>(-1001f, -718f, 518f) * vec3<f32>(var_1.a.c.x, 906f, 962f))) * -(-(-arg_0.a.c)), var_1.a.a.x > var_1.a.a.x);
    return arg_0.a.d;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    return Struct_5(-(vec2<f32>(-506f + -1202f, -1461f) + exp2(vec2<f32>(1039f, -1372f))), vec4<bool>(!func_3(Struct_4(Struct_1(u_input.a, vec3<i32>(u_input.d.x, 2147483647i, -90193i), vec3<f32>(1401f, -439f, 693f), false), u_input.b, u_input.a.x, 1832f, -34384i), true & false), func_3(Struct_4(Struct_1(vec4<i32>(-1i, 1i, u_input.d.x, u_input.a.x), vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<f32>(-876f, 1000f, -427f), true), ~arg_0.x, -(-1i), 1026f, u_input.d.x), true), all(vec3<bool>(all(vec4<bool>(false, false, false, false)), !false, !true)), (firstTrailingBit(u_input.a.x) % ~(-104385i)) == (~13798i + dot(vec2<i32>(u_input.c.x, 1i), u_input.c.xx))), -select(i32(-2147483648), (u_input.d.x - u_input.d.x) * dot(u_input.a.zx, vec2<i32>(0i, u_input.d.x)), -347f != -(-648f)), min(abs(u_input.d.yy), u_input.d.xx));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = vec2<bool>(false, any(!vec2<bool>(false, false)) & !arg_0);
    let var_1 = func_2((vec3<u32>(~14487u, ~u_input.b, 4294967295u << 0u) >> (~vec3<u32>(67146u, 65234u, 12210u) % ~vec3<u32>(1u, u_input.b, u_input.b))) << vec3<u32>(4294967295u, u_input.b, countOneBits(u_input.b % u_input.b)));
    var var_2 = Struct_1(firstTrailingBit(u_input.c), -(-firstLeadingBit(u_input.c.yxx | u_input.a.zww)), vec3<f32>(var_1.a.x, var_1.a.x / var_1.a.x, var_1.a.x), any(func_2(~max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 35657u, u_input.b))).b.zxz));
    global0 = ~((reverseBits(1i) + var_1.c) / 84903i) << abs(0u);
    var var_3 = Struct_3(~abs(max(vec2<u32>(4294967295u, 23450u), vec2<u32>(u_input.b, 0u))) | abs(~abs(vec2<u32>(u_input.b, 4294967295u))), abs(var_2.b.x), reverseBits(reverseBits(39175u)));
    return Struct_1(-(-vec4<i32>(-22486i | u_input.a.x, ~58782i, u_input.c.x + 28971i, var_3.b)), (var_2.b & ~(~vec3<i32>(-1i, 19610i, i32(-2147483648)))) - vec3<i32>(func_2(~vec3<u32>(u_input.b, var_3.c, 95555u)).c, 1i, -28686i), -(-sign(var_2.c)), arg_0);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = arg_1;
    global0 = 2969i;
    let var_1 = vec3<bool>(all(select(func_2(vec3<u32>(u_input.b, u_input.b, 4294967295u)).b.zzx, vec3<bool>(all(vec3<bool>(false, false, true)), var_0.a.d, var_0.a.d), any(select(vec2<bool>(false, var_0.a.d), vec2<bool>(var_0.a.d, true), true)))), func_3(Struct_4(func_1(8458u < u_input.b), 4294967295u ^ reverseBits(34516u), firstLeadingBit(-var_0.a.a.x), select(306f, 1000f, false) + 131f, u_input.d.x), arg_1.a.d), all(select(select(vec3<bool>(false, false, false), func_2(vec3<u32>(14471u, 75037u, u_input.b)).b.xwz, !vec3<bool>(arg_1.a.d, var_0.a.d, var_0.a.d)), vec3<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(var_0.a.d, false, arg_1.a.d, arg_1.a.d)), arg_1.a.d), !(var_0.a.d || var_0.a.d))));
    var var_2 = vec3<f32>(-max(var_0.a.c.x * -arg_1.a.c.x, max(1000f, arg_0) * -1000f), -554f, arg_0);
    global0 = ~(~2147483647i) << reverseBits(reverseBits(dot(vec3<u32>(4294967295u, 50487u, 0u), ~vec3<u32>(54673u, 6338u, 4294967295u))));
    return Struct_3(~(((vec2<u32>(u_input.b, 48752u) ^ vec2<u32>(u_input.b, 1u)) | vec2<u32>(u_input.b, u_input.b)) - ((vec2<u32>(6936u, 30032u) - vec2<u32>(1u, u_input.b)) << vec2<u32>(u_input.b, 1u))), i32(-2147483648), dot(vec2<u32>(1u, u_input.b), ~(~vec2<u32>(11400u, 16060u))) - 34769u);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = select(vec4<bool>(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), (abs(arg_0.x) ^ ~(-1i)) >= i32(-2147483648), -34332i <= abs(select(u_input.c.x, u_input.c.x, false)), any(select(!vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))), vec4<bool>(((20582u + u_input.b) - u_input.b) <= ~1u, !func_3(Struct_4(Struct_1(u_input.a, vec3<i32>(-5141i, u_input.d.x, 2147483647i), vec3<f32>(319f, 895f, -279f), false), 43517u, -9809i, -513f, arg_1.b), true), any(vec2<bool>(!false, func_2(vec3<u32>(0u, 21555u, arg_1.c)).b.x)), u_input.b >= ((arg_1.a.x | 4294967295u) * ~arg_2)), func_2(~(vec3<u32>(4294967295u, 58642u, arg_2) & vec3<u32>(6027u, 3474u, arg_2))).b);
    let var_1 = arg_1;
    let var_2 = Struct_1(select(firstLeadingBit(-(-u_input.a)), -vec4<i32>(2147483647i, arg_0.x, -18000i, i32(-2147483648)) * u_input.c, !vec4<bool>(!var_0.x, var_1.b > u_input.a.x, 1u > 14292u, !true)), -select(vec3<i32>(arg_0.x, -1i, arg_1.b) - firstLeadingBit(vec3<i32>(u_input.a.x, var_1.b, -1i)), vec3<i32>(-41028i, max(arg_0.x, arg_1.b), 61506i), false), -((-vec3<f32>(-658f, -2079f, 684f) + -vec3<f32>(-329f, -575f, -665f)) * trunc(-vec3<f32>(-681f, -2135f, 660f))), arg_0.x == arg_0.x);
    var var_3 = var_0.xww;
    var var_4 = arg_2;
    return ~reverseBits(((arg_0.x + 0i) & -var_2.b.x) % 3854i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    let var_0 = false;
    global0 = select(0i, func_5(reverseBits(~max(vec3<i32>(7852i, u_input.d.x, -1i), u_input.c.xww)), func_4(trunc(-(-1482f)), Struct_2(func_1(var_0)), countOneBits(vec3<i32>(-13950i, -19498i, u_input.a.x))), 1u), all(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), true))));
    global0 = reverseBits(u_input.a.x);
    var var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(-(-820f)), reverseBits(0u / firstTrailingBit(4294967295u)) << abs(u_input.b), u_input.c.wz, -1000f);
}

