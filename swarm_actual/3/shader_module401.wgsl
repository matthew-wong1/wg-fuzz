// {"0:0":[115,190,112,179,40,20,3,17,188,191,117,94,15,179,147,211,229,243,169,156,99,160,246,96,41,225,132,72,222,114,27,117,89,27,136,46,201,175,193,243,197,136,225,94,13,28,69,169]}
// Seed: 1238201498942513279

struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: i32 = 2147483647i;

var<private> global2: u32 = 24370u;

var<private> global3: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(false, false));

var<private> global4: f32 = -2233f;

fn func_3() -> vec3<i32> {
    let var_0 = u_input.b & (~u_input.b % -u_input.b);
    global4 = -round(-(-480f) / (-1176f / 2686f)) - (trunc(-105f) * floor(-abs(358f)));
    global4 = 1196f;
    global2 = u_input.a.x;
    global4 = 858f;
    return vec3<i32>(-42893i, ~clamp(~var_0, min(2147483647i, -1i + -41654i), 0i), var_0);
}

fn func_2(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_2(abs(~39087u - (~0u % 0u)), ~(~(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.d.x) ^ vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.d.x))) & vec4<u32>((u_input.e + 0u) & (0u << 33113u), 45237u, u_input.d.x, u_input.e));
    let var_1 = Struct_3(vec2<i32>((u_input.b & -3767i) | u_input.b, -58458i), Struct_1(select(!global3[~u_input.c.x], !vec2<bool>(false, true), !(23938i < u_input.b)), ~func_3() << ~(~vec3<u32>(u_input.a.x, u_input.d.x, u_input.c.x))), vec2<u32>(firstLeadingBit(u_input.a.x), 66097u), vec4<i32>(clamp(-countOneBits(u_input.b), firstTrailingBit(firstTrailingBit(u_input.b)), -18207i), u_input.b, (u_input.b + 1i) >> countOneBits(4294967295u << 1u), 47827i));
    global3 = array<vec2<bool>, 1>();
    global2 = 4294967295u;
    var var_2 = vec4<bool>(!((-40191i << clamp(var_1.c.x, 1u, 4294967295u)) != (52809i - dot(vec4<i32>(-1i, var_1.d.x, var_1.a.x, -44508i), var_1.d))), !true, !true, !(!false));
    return ~(((~vec4<u32>(4294967295u, 4294967295u, 63861u, var_1.c.x) + abs(var_0.b)) / var_0.b) << vec4<u32>(5957u, reverseBits(var_0.b.x) + (62789u + var_0.a), var_0.b.x ^ 4294967295u, ~var_0.b.x));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(reverseBits(dot(~u_input.a, vec2<u32>(u_input.c.x, 4294967295u))) / abs(u_input.a.x), countOneBits(select(vec4<u32>(4294967295u, 4847u, u_input.d.x, u_input.a.x), vec4<u32>(82027u, 42228u, 14822u, 15246u), any(vec4<bool>(global0.x, true, arg_0.a.x, global0.x)))) ^ func_2(-2091f));
    let var_1 = !global0.x && all(vec2<bool>(clamp(1u, 0u, 27657u) <= (var_0.a / 51581u), false));
    var var_2 = select(select(!(!(!vec3<bool>(true, arg_0.a.x, var_1))), select(select(vec3<bool>(false, false, global0.x), vec3<bool>(arg_0.a.x, arg_0.a.x, var_1), all(vec4<bool>(false, global0.x, global0.x, var_1))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, var_1, false)), vec3<bool>(true, true, var_1), vec3<bool>(true, arg_0.a.x, true)), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, arg_0.a.x), vec3<bool>(false, false, false)), vec3<bool>(global0.x, true, true), var_1)), false), !(!(!vec3<bool>(true, false, false))), any(!(!(!vec3<bool>(false, true, false)))));
    var var_3 = countOneBits(~abs(var_0.b.xww));
    let var_4 = var_3.xz;
    return Struct_2(countOneBits(var_3.x), vec4<u32>((1u / var_4.x) % max(0u, 4294967295u), max(max(var_3.x, 19962u), 5034u), var_3.x >> (0u / u_input.e), select(var_4.x, ~42885u, global0.x)) | select(var_0.b, var_0.b, var_1));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = vec2<bool>(firstTrailingBit((u_input.b & u_input.b) << arg_0.b.x) != -max(min(2188i, 6324i), u_input.b), !(any(global3[~arg_1.b.x]) || any(select(global3[u_input.a.x], global3[1u], vec2<bool>(global0.x, global0.x)))));
    var var_1 = Struct_1(select(!(!global3[arg_1.b.x]), !select(select(global3[29135u], vec2<bool>(global0.x, false), true), global3[4294967295u], all(vec4<bool>(global0.x, true, var_0.x, true))), vec2<bool>(all(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(var_0.x, true, global0.x, true), true)), var_0.x)), func_3());
    let var_2 = Struct_1(vec2<bool>(var_1.a.x, u_input.b > ~u_input.b), vec3<i32>(0i, min(u_input.b, var_1.b.x % clamp(-1i, 1i, 2147483647i)), 2147483647i));
    var var_3 = min(ceil(exp2(round(-1014f))), sign(-2035f));
    var_1 = var_2;
    return func_1(Struct_1(!var_2.a, vec3<i32>(-29545i, -26310i, func_3().x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = all(select(vec4<bool>(all(!vec4<bool>(global0.x, false, false, global0.x)), all(!vec4<bool>(global0.x, true, global0.x, true)), global0.x, any(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x), global0.x))), vec4<bool>(any(!vec3<bool>(global0.x, true, global0.x)), global0.x, !(!true), global0.x), any(!(!vec3<bool>(global0.x, global0.x, global0.x)))));
    var var_1 = Struct_1(!vec2<bool>(round(-1249f) <= (-1000f - 1354f), var_0), vec3<i32>(u_input.b, max(~u_input.b, dot(vec3<i32>(u_input.b, 3879i, -1i), vec3<i32>(8708i, u_input.b, u_input.b))), clamp(36983i % u_input.b, u_input.b - 1i, func_3().x)) & countOneBits(select(-vec3<i32>(u_input.b, i32(-2147483648), u_input.b), ~vec3<i32>(-1i, u_input.b, u_input.b), vec3<bool>(var_0, true, false))));
    var var_2 = step(max(-vec2<f32>(-121f, 1000f / -1544f), vec2<f32>(-872f, -(-264f))), vec2<f32>(select(-581f, 826f, (6798i * 37323i) != ~var_1.b.x), -(-(-724f) * (-894f * 397f))));
    let var_3 = select(!select(vec3<bool>(any(vec4<bool>(global0.x, var_0, false, true)), all(vec4<bool>(var_1.a.x, global0.x, false, true)), var_0), vec3<bool>(var_1.a.x, true, select(true, true, var_0)), true), !vec3<bool>((0i * var_1.b.x) <= 2147483647i, false | any(vec4<bool>(false, false, true, global0.x)), var_0), vec3<bool>(var_0, var_0, global0.x));
    var var_4 = Struct_3(select(abs(vec2<i32>(var_1.b.x ^ -1i, -u_input.b)), ~(~var_1.b.yy - ~vec2<i32>(6146i, 36632i)), any(!select(vec4<bool>(global0.x, var_3.x, false, var_1.a.x), vec4<bool>(false, false, false, false), vec4<bool>(var_1.a.x, true, false, global0.x)))), Struct_1(select(global3[(0u << 59568u) >> abs(u_input.e)], select(vec2<bool>(var_0, true), select(vec2<bool>(true, var_3.x), vec2<bool>(var_1.a.x, true), vec2<bool>(false, true)), !vec2<bool>(var_3.x, var_3.x)), true), var_1.b), (((arg_1.b.xw >> vec2<u32>(9221u, arg_0.b.x)) % func_4(arg_0, arg_0, Struct_2(4294967295u, arg_1.b), 4294967295u).b.yw) >> firstTrailingBit(vec2<u32>(4294967295u, 100286u))) / vec2<u32>(28814u, dot(vec4<u32>(32023u, 0u, 23566u, 0u) % arg_0.b, ~vec4<u32>(arg_1.b.x, 4294967295u, u_input.e, 12518u))), clamp(vec4<i32>(reverseBits(u_input.b), 45195i, firstTrailingBit(-29887i), -(-1926i)), -vec4<i32>(11673i, -1i, i32(-2147483648), var_1.b.x) | vec4<i32>(-70090i, 0i, 1i, u_input.b), vec4<i32>(dot(vec2<i32>(-10130i, var_1.b.x), vec2<i32>(2147483647i, 0i)), 0i, var_1.b.x + 25579i, 22244i * -38856i)) << ~(~vec4<u32>(0u, 23702u, 55556u, 0u)));
    return Struct_2(firstTrailingBit(~4294967295u), ~(~func_4(func_4(Struct_2(41833u, vec4<u32>(arg_0.b.x, 4294967295u, 77678u, var_4.c.x)), Struct_2(var_4.c.x, arg_1.b), Struct_2(77867u, vec4<u32>(var_4.c.x, 1u, arg_0.b.x, var_4.c.x)), 64304u), arg_1, func_4(arg_1, Struct_2(u_input.a.x, arg_0.b), Struct_2(23630u, arg_1.b), 4294967295u), ~12398u).b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~countOneBits(~(~(~u_input.b)));
    global3 = array<vec2<bool>, 1>();
    var var_0 = func_5(func_4(func_1(Struct_1(global3[abs(u_input.a.x)], -vec3<i32>(u_input.b, -49657i, 12221i))), func_1(Struct_1(!global3[u_input.e], ~vec3<i32>(u_input.b, 361i, 2147483647i))), func_1(Struct_1(select(vec2<bool>(true, global0.x), global3[39658u], vec2<bool>(global0.x, global0.x)), reverseBits(vec3<i32>(i32(-2147483648), 17824i, u_input.b)))), dot(~(~vec4<u32>(u_input.e, 1u, u_input.d.x, 0u)), ~(vec4<u32>(2963u, 61586u, u_input.e, 1u) << vec4<u32>(0u, 4294967295u, u_input.c.x, 1u)))), func_4(Struct_2(43503u, reverseBits(firstLeadingBit(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))), Struct_2(u_input.d.x, vec4<u32>(43586u, ~u_input.a.x, ~4294967295u, 0u)), func_1(Struct_1(global3[30067u], clamp(vec3<i32>(u_input.b, u_input.b, 325i), vec3<i32>(74335i, u_input.b, 1i), vec3<i32>(u_input.b, 11941i, 2147483647i)))), 1u % func_2(exp2(-1065f)).x));
    let var_1 = Struct_1(vec2<bool>(true, global0.x), ~clamp(~(vec3<i32>(u_input.b, u_input.b, 0i) / vec3<i32>(u_input.b, -63341i, 0i)), -vec3<i32>(u_input.b, i32(-2147483648), -1i) ^ abs(vec3<i32>(35071i, u_input.b, u_input.b)), -abs(vec3<i32>(u_input.b, u_input.b, -2428i))));
    global3 = array<vec2<bool>, 1>();
    let var_2 = vec3<bool>(var_1.a.x, (1u - ~(~u_input.e)) < 29031u, false);
    var_0 = func_1(var_1);
    var var_3 = var_0.b.wyw;
    global2 = u_input.c.x - ~reverseBits((var_0.b.x + var_0.a) >> ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(vec2<u32>(u_input.e, var_0.b.x), vec2<u32>(select(~var_0.a, ~4294967295u, any(vec3<bool>(true, var_2.x, var_1.a.x))), (var_0.b.x ^ u_input.e) >> dot(vec4<u32>(u_input.a.x, var_3.x, u_input.c.x, var_0.a), var_0.b)), true), vec2<u32>(35584u, ~var_3.x), (-min(var_1.b.xz, vec2<i32>(var_1.b.x, 0i)) & vec2<i32>(i32(-2147483648) + var_1.b.x, i32(-2147483648))) ^ (var_1.b.xx | clamp(-vec2<i32>(u_input.b, var_1.b.x), max(vec2<i32>(u_input.b, -38092i), vec2<i32>(u_input.b, -77279i)), ~vec2<i32>(1i, 0i))), max(-max(489f, 1203f) * -233f, exp2(ceil(-212f) / ceil(707f))));
}

