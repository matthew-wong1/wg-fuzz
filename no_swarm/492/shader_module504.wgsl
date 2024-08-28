// {"0:0":[240,183,38,222,127,14,238,193,225,117,178,17,220,102,141,157,70,18,70,167,255,125,254,183,138,1,133,216,56,84,68,178]}
// Seed: 3064638162213582983

struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = floor(floor(-(-1270f)));
    let var_1 = Struct_2(!arg_0.d.a || any(!(!vec3<bool>(arg_0.d.a, arg_0.d.a, true))), ~vec4<i32>(firstLeadingBit(-1i), firstLeadingBit(i32(-2147483648)), arg_0.d.d.x % arg_0.c.x, arg_0.c.x) + firstTrailingBit(arg_0.d.b << vec4<u32>(72517u, 106793u, u_input.a.x, arg_0.b)), -52639i | ~firstLeadingBit(~u_input.b.x), reverseBits(~min(u_input.b, vec3<i32>(u_input.b.x, -1i, 2147483647i))) | -(max(u_input.b, vec3<i32>(u_input.b.x, -31258i, u_input.b.x)) ^ vec3<i32>(-42601i, -21215i, arg_0.d.c)));
    global0 = array<vec4<f32>, 29>();
    let var_2 = firstLeadingBit(vec2<u32>(u_input.a.x, 1u));
    let var_3 = arg_0.a;
    return -reverseBits(min(var_1.b, var_1.b)) << (~u_input.a << (~select(vec4<u32>(1u, 4294967295u, 0u, 7170u), u_input.a, false) | (abs(vec4<u32>(arg_0.a.a.x, var_3.a.x, 1u, 15622u)) - vec4<u32>(arg_0.b, 22772u, var_3.a.x, 0u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(all(!vec3<bool>(true, 2147483647i >= 12742i, !true)), ~abs(firstLeadingBit(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))) + clamp(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.b.x) + ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -28543i), func_3(Struct_3(Struct_1(u_input.a, true), 39810u, u_input.b, Struct_2(true, vec4<i32>(u_input.b.x, u_input.b.x, 53867i, u_input.b.x), u_input.b.x, u_input.b))), abs(abs(vec4<i32>(i32(-2147483648), -8011i, i32(-2147483648), -18644i)))), 1i, max(firstLeadingBit(clamp(u_input.b, u_input.b, vec3<i32>(u_input.b.x, -66469i, 0i))), -u_input.b) - u_input.b);
    var var_1 = Struct_1(~(~clamp(u_input.a, u_input.a, vec4<u32>(0u, u_input.a.x, 6685u, 4294967295u))) | u_input.a, var_0.a);
    let var_2 = var_0.b.zyx;
    var_1 = Struct_1(vec4<u32>(abs((1u + var_1.a.x) << ~var_1.a.x), var_1.a.x, ((u_input.a.x >> 12488u) ^ u_input.a.x) % min(1798u, ~0u), firstTrailingBit(~15430u) | ~u_input.a.x), var_1.b == all(!select(vec4<bool>(var_1.b, false, var_1.b, var_0.a), vec4<bool>(true, false, true, var_1.b), vec4<bool>(var_0.a, var_0.a, var_1.b, var_0.a))));
    var_1 = Struct_1(var_1.a, any(vec4<bool>(!var_0.a, floor(-606f) == -275f, !var_0.a, -191f < -(-1006f))));
    return Struct_1(~(~(~(vec4<u32>(55297u, u_input.a.x, var_1.a.x, 16570u) | u_input.a))), !var_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    global0 = array<vec4<f32>, 29>();
    var var_0 = arg_1;
    let var_1 = vec2<i32>(arg_0.c.x, var_0.c);
    let var_2 = arg_1.b;
    var var_3 = vec2<i32>(arg_1.b.x, ~arg_1.c);
    return Struct_3(arg_0.a, ~(firstLeadingBit(arg_0.a.a.x) + ~(~1u)), var_2.zzz, arg_1);
}

fn func_5(arg_0: Struct_3) -> f32 {
    global0 = array<vec4<f32>, 29>();
    let var_0 = arg_0.b;
    var var_1 = select(vec3<i32>(0i, 1i, ~(-(-u_input.b.x))), ~clamp(abs(u_input.b / u_input.b), u_input.b, -arg_0.c), !(any(select(vec2<bool>(true, arg_0.a.b), vec2<bool>(arg_0.d.a, true), false)) && false));
    var var_2 = vec2<bool>(!(false && !(!arg_0.a.b)), false);
    let var_3 = (~arg_0.c.x % (abs(-1i) & select(i32(-2147483648), 2147483647i + 0i, false))) << 0u;
    return round(-152f);
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    var var_0 = -(-834f / sign(-(305f - -1114f)));
    var_0 = min(func_5(func_4(Struct_3(func_2(), 0u, u_input.b & vec3<i32>(-1i, u_input.b.x, u_input.b.x), Struct_2(true, vec4<i32>(17604i, u_input.b.x, -1i, u_input.b.x), u_input.b.x, vec3<i32>(-67411i, 2147483647i, 0i))), Struct_2(true, -vec4<i32>(u_input.b.x, u_input.b.x, -62910i, u_input.b.x), max(u_input.b.x, -23539i), -u_input.b))), func_5(func_4(Struct_3(Struct_1(vec4<u32>(arg_0.x, 4294967295u, u_input.a.x, u_input.a.x), true), min(4294967295u, 4294967295u), clamp(vec3<i32>(u_input.b.x, 2147483647i, i32(-2147483648)), vec3<i32>(u_input.b.x, 23552i, u_input.b.x), vec3<i32>(12869i, i32(-2147483648), 5263i)), func_4(Struct_3(Struct_1(arg_0, false), u_input.a.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(false, vec4<i32>(-21381i, i32(-2147483648), u_input.b.x, u_input.b.x), -10293i, vec3<i32>(-2244i, 41229i, u_input.b.x))), Struct_2(false, vec4<i32>(u_input.b.x, u_input.b.x, i32(-2147483648), u_input.b.x), u_input.b.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))).d), Struct_2(all(vec2<bool>(false, true)), vec4<i32>(-65666i, u_input.b.x, 34233i, -69951i), 2927i, firstTrailingBit(vec3<i32>(0i, -3067i, u_input.b.x))))));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec3<i32>(u_input.b.x, func_1(u_input.a) / countOneBits(u_input.b.x), ~(-9131i) / 23719i) % (abs(u_input.b) * u_input.b));
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    var var_1 = func_5(Struct_3(Struct_1(~max(vec4<u32>(u_input.a.x, u_input.a.x, 25003u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 0u, 1u)), select(false && true, !true, -927f > 853f)), ~2369u, firstTrailingBit(u_input.b) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) << countOneBits(vec3<u32>(4294967295u, u_input.a.x, 1u))), func_4(func_4(Struct_3(Struct_1(u_input.a, false), 32084u, u_input.b, Struct_2(true, vec4<i32>(var_0.x, -1i, var_0.x, 0i), i32(-2147483648), vec3<i32>(-1i, 0i, u_input.b.x))), func_4(Struct_3(Struct_1(u_input.a, false), u_input.a.x, var_0, Struct_2(true, vec4<i32>(-22999i, var_0.x, var_0.x, 15957i), var_0.x, u_input.b)), Struct_2(true, vec4<i32>(u_input.b.x, u_input.b.x, 2340i, 0i), var_0.x, var_0)).d), Struct_2(func_4(Struct_3(Struct_1(vec4<u32>(13595u, u_input.a.x, u_input.a.x, u_input.a.x), false), u_input.a.x, var_0, Struct_2(false, vec4<i32>(4863i, var_0.x, 3969i, u_input.b.x), var_0.x, var_0)), Struct_2(false, vec4<i32>(u_input.b.x, i32(-2147483648), i32(-2147483648), var_0.x), -1i, u_input.b)).d.a, vec4<i32>(-1i, -1i, u_input.b.x, 30150i) >> u_input.a, abs(u_input.b.x), reverseBits(var_0))).d));
    var var_2 = !false;
    var_2 = false | all(!select(vec4<bool>(true, false, true, false), !vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b.x / countOneBits(dot(var_0, var_0))), -countOneBits(-vec2<i32>(16580i, 1i)) * vec2<i32>(2147483647i, ~(-1i)), func_4(Struct_3(Struct_1(~u_input.a, func_2().b), ~(~51814u), -u_input.b, Struct_2(u_input.a.x >= u_input.a.x, countOneBits(vec4<i32>(2147483647i, 1i, var_0.x, var_0.x)), u_input.b.x, u_input.b)), Struct_2(!false, func_3(func_4(Struct_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 37425u, 1u), false), 5311u, vec3<i32>(u_input.b.x, u_input.b.x, var_0.x), Struct_2(true, vec4<i32>(65832i, 39735i, 21557i, var_0.x), u_input.b.x, var_0)), Struct_2(false, vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, var_0.x), 0i, var_0))), clamp(-11088i, 50408i / var_0.x, -var_0.x), u_input.b)).a.a.wy, -53698i, ~clamp(reverseBits(abs(4248i)), dot(vec4<i32>(7641i, var_0.x, var_0.x, -3443i), vec4<i32>(1i, u_input.b.x, -32819i, var_0.x)), (u_input.b.x * var_0.x) >> abs(19309u)));
}

