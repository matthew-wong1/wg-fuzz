// {"0:0":[79,156,42,196,194,116,143,85]}
// Seed: 13030498450998441779

struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: Struct_3 = Struct_3(86175i, Struct_1(vec3<i32>(-61546i, 0i, 38138i), 103279u, false, vec3<u32>(1u, 57815u, 6534u), 0i), -1538f);

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = min((vec3<i32>(global1.a, 37892i, arg_0.b.e) << ~vec3<u32>(global1.b.b, arg_1.a, 46497u)) % vec3<i32>(~global1.b.a.x, -45652i, 62748i), firstTrailingBit((global1.b.a / vec3<i32>(-1i, arg_0.a, global1.b.e)) & vec3<i32>(1i, -67162i, global1.b.a.x))) << global1.b.d;
    global0 = array<Struct_3, 25>();
    global1 = Struct_3(abs(dot((vec3<i32>(41391i, 46558i, -1i) % arg_0.b.a) & global1.b.a, select(vec3<i32>(arg_0.a, -5277i, var_0.x) ^ vec3<i32>(2147483647i, i32(-2147483648), 8799i), -global1.b.a, vec3<bool>(arg_0.b.c, true, true)))), global1.b, -1093f);
    let var_1 = max(firstLeadingBit(firstTrailingBit(~(-17480i))), arg_0.b.a.x);
    var_0 = arg_0.b.a;
    return !(!vec4<bool>(select(true, false | arg_0.b.c, arg_0.b.c), 3445i < var_0.x, global1.b.c, all(!vec2<bool>(true, false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_2(~(~u_input.b | global1.b.b) ^ select(~(~u_input.b), ~reverseBits(19787u), true), global1.b.c);
    global0 = array<Struct_3, 25>();
    var var_1 = false;
    let var_2 = clamp(firstLeadingBit((0u | global1.b.b) ^ ((u_input.b >> 0u) + min(arg_1.b.b, 3441u))), arg_1.b.b, arg_2.x);
    var var_3 = dot(countOneBits(arg_1.b.d.zy), select((arg_2 % arg_2) & vec2<u32>(96016u, 4398u), vec2<u32>(4294967295u, var_2) | arg_2, ~(-5726i) <= 35188i) - ~global1.b.d.zx);
    return abs(~(~vec2<u32>(0u, var_0.a)) | (~arg_1.b.d.zz % (global1.b.d.yz >> arg_1.b.d.yy))) & vec2<u32>(1u, arg_2.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = (ceil(-(-1440f)) + 838f) * -(-1000f);
    global1 = global0[~countOneBits((u_input.b / global1.b.b) & (1u & global1.b.b))];
    let var_1 = !vec2<bool>(any(select(!arg_0.yx, !arg_0.zy, vec2<bool>(arg_0.x, false))), clamp(clamp(-98031i, 36108i, global1.b.a.x), dot(vec4<i32>(2147483647i, global1.b.e, -1i, global1.a), vec4<i32>(i32(-2147483648), -12487i, 0i, global1.b.a.x)), 0i) < dot(-vec3<i32>(927i, global1.b.a.x, i32(-2147483648)), vec3<i32>(-76447i, -60275i, global1.b.a.x)));
    var var_2 = func_4(-(-vec4<f32>(global1.c, -117f - global1.c, -1881f, -1075f)), Struct_3(-2138i / global1.a, global1.b, -401f), vec2<u32>(~global1.b.b, 45003u & (countOneBits(72068u) & 33388u)), !select(select(vec4<bool>(var_1.x, arg_0.x, var_1.x, true), func_3(Struct_3(-19772i, global1.b, global1.c), Struct_2(u_input.a, false)), vec4<bool>(false, true, false, true)), !vec4<bool>(arg_0.x, true, false, var_1.x), func_3(global0[~u_input.a], Struct_2(global1.b.d.x, true))));
    let var_3 = ~vec4<u32>(1u, ~24763u, select(1u, max(1u, var_2.x), false) & (var_2.x + ~16231u), ~(abs(10733u) % 1u));
    return global1.b;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_3, 25>();
    var var_0 = Struct_4(Struct_1(~vec3<i32>(global1.a, arg_0.b.a.x, i32(-2147483648) >> 0u), global1.b.d.x, func_3(global0[arg_0.b.b ^ u_input.a], Struct_2(max(arg_0.b.b, global1.b.d.x), global1.b.c == arg_0.b.c)).x, firstTrailingBit(reverseBits(vec3<u32>(6260u, arg_0.b.b, 31428u))), (1i ^ (arg_0.a & global1.b.e)) >> global1.b.b), Struct_3(global1.b.e & (global1.b.e + global1.a), arg_0.b, min(sign(-113f * 555f), -(arg_0.c / 165f))), vec3<f32>((global1.c / arg_0.c) * (global1.c - step(arg_0.c, global1.c)), abs(max(trunc(global1.c), arg_0.c / arg_0.c)), -1000f), Struct_1(vec3<i32>(firstLeadingBit(select(-18602i, 24409i, arg_0.b.c)), max(firstTrailingBit(global1.a), 32102i), -global1.b.e), 4294967295u, !((global1.c - 1103f) == -global1.c), global1.b.d, -1i), ~(-(-vec4<i32>(i32(-2147483648), -1i, arg_0.a, -16850i)) << max(countOneBits(vec4<u32>(1u, 27993u, global1.b.d.x, u_input.b)), vec4<u32>(18744u, 1u, 8789u, 4294967295u))));
    var var_1 = var_0.e;
    var_0 = Struct_4(Struct_1(vec3<i32>(var_0.a.e, arg_0.b.e, 4820i), dot(vec4<u32>(48413u, u_input.a, 4294967295u, arg_0.b.b) << vec4<u32>(var_0.d.b, var_0.b.b.d.x, global1.b.d.x, 15474u), vec4<u32>(1u, 35098u, u_input.b, 1u)) * dot(max(vec3<u32>(7649u, u_input.b, 47872u), var_0.d.d), arg_0.b.d), !all(!vec2<bool>(var_0.a.c, var_0.a.c)), (vec3<u32>(1u, 24035u, 1u) | (vec3<u32>(u_input.a, global1.b.d.x, 0u) / vec3<u32>(23690u, 4294967295u, u_input.a))) >> vec3<u32>(arg_0.b.b, ~0u, ~global1.b.b), global1.b.e - -(-global1.a)), global0[1u], sign(var_0.c) * (vec3<f32>(-734f - var_0.b.c, -(-406f), select(-947f, global1.c, true)) - -var_0.c), func_2(select(select(func_3(Struct_3(var_1.x, var_0.b.b, global1.c), Struct_2(0u, true)).wxw, !vec3<bool>(false, arg_0.b.c, global1.b.c), select(vec3<bool>(arg_0.b.c, false, var_0.a.c), vec3<bool>(true, true, arg_0.b.c), arg_0.b.c)), !select(vec3<bool>(false, var_0.a.c, true), vec3<bool>(false, var_0.b.b.c, false), vec3<bool>(true, var_0.d.c, false)), vec3<bool>(!false, arg_0.b.c, select(false, true, false)))), vec4<i32>(-1761i, firstLeadingBit(max(var_1.x, -60295i % arg_0.b.e)), func_2(func_3(global0[~4294967295u], Struct_2(arg_0.b.b, arg_0.b.c)).wzz).a.x, abs(-24030i / ~var_0.e.x)));
    var var_2 = var_0.d;
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 25>();
    let var_0 = -global1.c;
    global1 = func_5(Struct_3(global1.b.a.x, func_2(select(!vec3<bool>(global1.b.c, false, global1.b.c), !vec3<bool>(global1.b.c, false, true), !global1.b.c)), (-1364f + (global1.c * var_0)) + floor(-277f)));
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    return func_5(Struct_3(-5927i, Struct_1(vec3<i32>(global1.b.a.x, i32(-2147483648), abs(global1.a)), global1.b.d.x, false && !false, global1.b.d, global1.a), -var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = select(vec4<bool>(func_1().b.c, !all(vec3<bool>(true, global1.b.c, global1.b.c)), global1.b.c, ~38261u <= min(firstTrailingBit(1u), global1.b.d.x)), vec4<bool>(max(36369u, u_input.b) < (~global1.b.d.x / 35467u), global1.b.c, any(func_3(func_5(Struct_3(-50757i, Struct_1(global1.b.a, 0u, false, global1.b.d, global1.b.a.x), global1.c)), Struct_2(75790u, false)).wx), !true), !vec4<bool>(false, global1.b.c, global1.b.c, any(vec2<bool>(true, global1.b.c))));
    var var_1 = vec3<i32>(-(-9029i), select(50035i, 0i, all(func_3(Struct_3(global1.b.e, global1.b, 449f), Struct_2(global1.b.d.x, var_0.x)).ywx)), func_2(var_0.yzx).a.x);
    var var_2 = func_5(Struct_3(0i, global1.b, -ceil(global1.c))).c;
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.d.x, -(-min(vec2<f32>(global1.c, 223f), vec2<f32>(global1.c, 1107f))) / max(-vec2<f32>(global1.c, 1363f) * -vec2<f32>(global1.c, global1.c), (vec2<f32>(global1.c, global1.c) + vec2<f32>(-330f, 387f)) / (vec2<f32>(global1.c, -1259f) / vec2<f32>(global1.c, 783f))), vec4<i32>(var_1.x, i32(-2147483648), ~dot(global1.b.a + vec3<i32>(-1i, -1i, global1.a), -vec3<i32>(global1.a, global1.b.a.x, 0i)), ~(-1i)), -(-(-vec3<f32>(-1330f, 389f, 323f))), -1028f);
}

