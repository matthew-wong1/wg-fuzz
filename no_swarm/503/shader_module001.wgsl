// {"0:0":[121,151,50,167,50,103,30,38,88,30,162,149,89,44,245,219]}
// Seed: 9690795198889925311

struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), 2147483647i, vec4<u32>(21480u, 0u, 32739u, 37809u)), Struct_1(vec2<bool>(false, true), i32(-2147483648), vec4<u32>(0u, 68400u, 31881u, 0u)), Struct_1(vec2<bool>(false, true), 25749i, vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(vec2<bool>(true, false), 2147483647i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), Struct_1(vec2<bool>(true, true), -43187i, vec4<u32>(9801u, 98365u, 4294967295u, 98168u)));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), -30366i, vec4<u32>(4294967295u, 0u, 1u, 4294967295u));

var<private> global3: array<f32, 20>;

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = 1u;
    var_0 = 12366u;
    var var_1 = 1u;
    let var_2 = vec3<f32>(-(-(-abs(1000f))), -arg_2.x, -1796f);
    let var_3 = arg_3.a.a.x;
    return 290f;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = arg_2.c;
    var_0 = global1.d;
    let var_1 = global2.c;
    var var_2 = arg_0.a;
    let var_3 = vec3<f32>(func_3(Struct_2(Struct_1(arg_0.a.a, dot(vec3<i32>(global1.b.b, arg_1, 0i), vec3<i32>(-1i, arg_1, i32(-2147483648))), min(vec4<u32>(4294967295u, 18951u, arg_0.c.c.x, arg_0.c.c.x), global2.c)), Struct_1(vec2<bool>(var_2.a.x, false), u_input.b % global0.b, var_2.c), Struct_1(arg_2.a.a, i32(-2147483648), vec4<u32>(u_input.a.x, arg_0.d.c.x, 4294967295u, arg_0.a.c.x)), Struct_1(select(vec2<bool>(true, global2.a.x), arg_2.e.a, false), var_2.b, ~vec4<u32>(69408u, arg_0.a.c.x, arg_0.e.c.x, 36297u)), global1.c), -(-(global3[1u] + global3[54305u])), -trunc(vec2<f32>(721f, 162f) / vec2<f32>(global3[var_2.c.x], global3[1u])), Struct_2(arg_2.a, arg_2.d, Struct_1(!vec2<bool>(global0.a.x, global2.a.x), global0.b, ~var_0.c), arg_0.c, arg_0.d)), -(global3[global1.c.c.x] + 796f), min(global3[32496u] + ((783f - global3[75017u]) - -global3[var_1.x]), sign(1286f)));
    return 11171u;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = -exp2(-1000f) <= -687f;
    let var_1 = arg_2;
    let var_2 = global2.a;
    global1 = Struct_2(Struct_1(arg_3.a, select(abs(~(-4824i)), global1.e.b, any(global0.a.xz)), arg_3.c), Struct_1(vec2<bool>(~88693u == 0u, arg_3.a.x), ~global2.b >> dot(vec3<u32>(arg_3.c.x, 1u, 63843u) - global2.c.yzz, global1.b.c.wwx / vec3<u32>(1u, 1u, 0u)), vec4<u32>((global1.e.c.x - 4294967295u) ^ arg_3.c.x, u_input.a.x, arg_1, ~(~arg_1))), Struct_1(vec2<bool>((-2350i - global2.b) != -1i, all(select(vec4<bool>(var_1.a.x, true, true, false), vec4<bool>(true, global0.a.x, true, true), true))), abs(-17917i), vec4<u32>(u_input.a.x, max(global1.a.c.x, 24811u), max(global2.c.x, 0u) >> 0u, 4294967295u)), Struct_1(vec2<bool>(var_0, false), ((i32(-2147483648) % 61510i) << 1u) >> min(u_input.a.x, arg_3.c.x), abs(firstLeadingBit(global1.d.c))), arg_3);
    var var_3 = Struct_1(global1.e.a, arg_2.b, ~global2.c);
    return ~(~(~vec3<i32>(28171i, 0i, 2147483647i)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = global3[0u];
    var var_1 = (reverseBits((vec3<i32>(2147483647i, -22203i, global0.b) * vec3<i32>(i32(-2147483648), arg_2.b, arg_0)) - abs(vec3<i32>(global1.a.b, i32(-2147483648), global2.b))) / func_4(-vec4<f32>(global3[u_input.a.x], -1264f, global3[0u], arg_1), func_2(Struct_2(global1.b, global1.b, global1.d, Struct_1(global0.a.zz, 2147483647i, arg_2.c), Struct_1(vec2<bool>(global1.a.a.x, global0.a.x), -1i, vec4<u32>(6039u, 48360u, global1.c.c.x, 0u))), min(u_input.b, global2.b), Struct_2(arg_2, global1.a, Struct_1(vec2<bool>(global2.a.x, true), arg_2.b, global1.b.c), Struct_1(vec2<bool>(true, arg_2.a.x), arg_0, global1.b.c), Struct_1(vec2<bool>(false, false), -36243i, arg_2.c)), -1i), Struct_3(select(global0.a, global0.a, false), ~45279i), Struct_1(!global2.a, -(-62872i), ~global2.c))) << ~(vec3<u32>(reverseBits(global2.c.x), u_input.a.x << global1.e.c.x, 1u * 0u) + ((global1.d.c.yxx << vec3<u32>(arg_2.c.x, 88643u, global2.c.x)) << vec3<u32>(1u, global1.e.c.x, 0u)));
    var var_2 = Struct_2(Struct_1(select(vec2<bool>(!false, any(vec2<bool>(global1.e.a.x, false))), !(!vec2<bool>(false, global0.a.x)), select(global1.d.a, global0.a.zz, arg_2.a)), global1.d.b, global1.b.c), Struct_1(!arg_2.a, arg_0, firstLeadingBit(~vec4<u32>(20301u, u_input.a.x, 13047u, u_input.a.x))), arg_2, global1.b, global1.d);
    var var_3 = arg_2.a;
    var var_4 = ~(-firstTrailingBit(0i) & global1.c.b);
    return (-sign(ceil(vec2<f32>(624f, -420f))) / vec2<f32>(global3[~(~var_2.e.c.x)], global3[var_2.c.c.x])) * (exp2(vec2<f32>(-(-2470f), global3[23062u] * 2180f)) + (ceil(vec2<f32>(566f, -150f) / vec2<f32>(-705f, arg_1)) / vec2<f32>(-(-228f), global3[4294967295u - 0u])));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = (vec4<f32>(-round(518f), arg_0.x, -(arg_1 - -582f), -floor(arg_1)) * step(floor(ceil(vec4<f32>(3532f, -736f, -1309f, arg_0.x))), trunc(vec4<f32>(-2272f, arg_1, global3[global1.b.c.x], 1000f)))) * -(-((vec4<f32>(878f, -491f, 775f, 122f) / vec4<f32>(arg_1, arg_1, global3[4294967295u], arg_0.x)) * vec4<f32>(global3[8637u], 1453f, -1978f, global3[u_input.a.x])));
    global3 = array<f32, 20>();
    return global1.b;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(arg_0, arg_2.a.a.x, arg_2.c.a.x);
    var var_1 = global0.b;
    var_0 = !global0.a;
    let var_2 = u_input.b;
    global0 = Struct_3(!arg_1.a, abs(-global2.b));
    return Struct_2(func_5(vec2<f32>(-(-global3[arg_2.c.c.x]), -(-766f)), 847f / -(-global3[global1.b.c.x]), -20455i), func_5(vec2<f32>(919f, select(global3[u_input.a.x], global3[u_input.a.x], global0.a.x)) + -vec2<f32>(122f, 1000f), step(-(global3[1u] - 342f), round(func_3(arg_2, -415f, vec2<f32>(367f, -366f), arg_2))), ((-49612i >> 0u) / -893i) * func_5(select(vec2<f32>(global3[u_input.a.x], global3[global2.c.x]), vec2<f32>(global3[0u], global3[56438u]), global2.a), global3[11256u], -47420i / 7547i).b), func_5(vec2<f32>((global3[global2.c.x] / -553f) + (global3[global2.c.x] * -411f), -global3[40027u] + -global3[4294967295u]), global3[arg_2.d.c.x], ~max(-44172i, arg_1.b) % arg_1.b), arg_2.d, func_5(-(-vec2<f32>(global3[global2.c.x], global3[4294967295u])), exp2(-global3[dot(u_input.a, vec2<u32>(global1.e.c.x, 33208u))]), firstTrailingBit(arg_2.a.b) % global1.a.b));
}

fn func_7(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = -trunc((-arg_0 - arg_0) / 666f);
    let var_1 = 7862u;
    let var_2 = -(-1235f + sign(trunc(global3[global2.c.x])));
    global0 = Struct_3(select(global0.a, select(global0.a, global0.a, !vec3<bool>(arg_2, arg_2, false)), arg_2), ~(~(-1i)));
    var var_3 = 2147483647i;
    return Struct_3(select(global0.a, !global0.a, !vec3<bool>(any(vec4<bool>(true, arg_3.c.a.x, global2.a.x, global2.a.x)), false, false)), ~(-16754i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -390f;
    let var_1 = global2.a.x & (true != false);
    var var_2 = global1.a;
    global3 = array<f32, 20>();
    let var_3 = func_7(var_0, ~(((vec2<i32>(global0.b, global0.b) - vec2<i32>(0i, global1.a.b)) << ~global1.d.c.wy) / clamp(vec2<i32>(-36267i, u_input.b), firstTrailingBit(vec2<i32>(2147483647i, -14092i)), select(vec2<i32>(-46309i, global1.e.b), vec2<i32>(-1i, -1i), global0.a.zx))), var_1, func_6(!all(vec4<bool>(global0.a.x, global2.a.x, false, true)), Struct_3(select(!global0.a, vec3<bool>(global1.d.a.x, false, global1.c.a.x), false || var_2.a.x), -71459i), Struct_2(Struct_1(select(global0.a.xy, vec2<bool>(true, global0.a.x), vec2<bool>(false, false)), global1.c.b, countOneBits(vec4<u32>(var_2.c.x, global1.c.c.x, 1560u, global2.c.x))), Struct_1(!vec2<bool>(false, true), min(10576i, global1.a.b), ~vec4<u32>(global2.c.x, global2.c.x, global1.d.c.x, global1.a.c.x)), func_5(func_1(u_input.b, global3[50003u], Struct_1(vec2<bool>(var_2.a.x, global1.b.a.x), 7159i, var_2.c)), global3[1u] + global3[global2.c.x], global1.d.b ^ 0i), func_5(-vec2<f32>(-870f, 1473f), global3[40623u % var_2.c.x], global2.b | global2.b), Struct_1(!global1.d.a, global2.b - i32(-2147483648), ~vec4<u32>(global1.e.c.x, 3218u, global2.c.x, global1.d.c.x)))));
    var var_4 = trunc(-934f);
    var var_5 = var_0;
    var var_6 = func_6(!func_7(-var_0 - global3[~15331u], (vec2<i32>(1i, var_2.b) ^ vec2<i32>(global2.b, global2.b)) % vec2<i32>(1i, var_3.b), false, func_6(all(vec3<bool>(var_3.a.x, var_2.a.x, var_2.a.x)), Struct_3(var_3.a, var_2.b), Struct_2(Struct_1(global1.c.a, var_2.b, var_2.c), Struct_1(var_3.a.yy, 845i, vec4<u32>(28635u, 4294967295u, u_input.a.x, 1u)), Struct_1(var_3.a.zz, global1.a.b, vec4<u32>(1u, 49154u, var_2.c.x, u_input.a.x)), global1.e, global1.a))).a.x, var_3, func_6(!((global2.c.x + 11929u) > 56566u), func_7(var_0, (vec2<i32>(-42990i, var_3.b) << vec2<u32>(global1.d.c.x, 1u)) + ~vec2<i32>(-23269i, var_3.b), !true, func_6(func_7(var_0, vec2<i32>(u_input.b, -62686i), true, Struct_2(global1.a, global1.a, global1.a, Struct_1(var_3.a.xy, -6378i, vec4<u32>(33491u, u_input.a.x, 0u, u_input.a.x)), global1.c)).a.x, Struct_3(var_3.a, var_2.b), Struct_2(global1.c, Struct_1(vec2<bool>(true, true), 2147483647i, vec4<u32>(global2.c.x, u_input.a.x, var_2.c.x, global1.c.c.x)), global1.c, Struct_1(vec2<bool>(global1.b.a.x, false), global0.b, vec4<u32>(global1.a.c.x, var_2.c.x, 0u, var_2.c.x)), global1.e))), Struct_2(global1.d, global1.a, global1.e, Struct_1(global2.a, ~u_input.b, reverseBits(vec4<u32>(1742u, global2.c.x, global1.e.c.x, 54652u))), global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(47204u, global3[3684u], ~(~func_5(vec2<f32>(195f, 752f), global3[u_input.a.x], global2.b).b) >> 0u, 0u, -1047f);
}

