// {"0:0":[14,115,27,216,177,221,0,54]}
// Seed: 10288021633575293107

struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, true));

fn func_3() -> i32 {
    let var_0 = vec3<bool>(!(!true) && (min(-6450i & -53823i, global0.a.x) < abs(i32(-2147483648))), all(vec4<bool>(!any(global1[u_input.b]), !false, !true, !(!true))), min(1056f, 1936f / max(1719f, -1070f)) != -(-sign(-717f)));
    var var_1 = -119f + (-(-trunc(199f)) / abs(-448f));
    global1 = array<vec2<bool>, 1>();
    let var_2 = -203f;
    let var_3 = 2147483647i;
    return 73933i;
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = vec2<i32>(abs(global0.a.x >> countOneBits(dot(vec4<u32>(1u, 4294967295u, 12012u, u_input.b), vec4<u32>(18504u, u_input.b, u_input.b, u_input.b)))), 0i);
    let var_1 = !select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(!vec3<bool>(false, true, true), !vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), !vec3<bool>(arg_0.d.x <= -499f, !false, u_input.a <= 0i), all(vec3<bool>(true, 0u == 19151u, -8540i <= var_0.x)));
    var var_2 = -22002i;
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    return select(~vec4<i32>(-12344i, global0.a.x, i32(-2147483648), ~func_3()), vec4<i32>(-(dot(vec2<i32>(var_0.x, global0.a.x), arg_0.b.a.xx) + -2147483647i), 17828i, firstLeadingBit(2147483647i), 48628i), !var_1.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 1>();
    global0 = Struct_1(arg_3.a >> firstLeadingBit(abs(vec3<u32>(4294967295u, 0u, 0u) * vec3<u32>(36595u, u_input.b, 16598u))));
    global0 = arg_3;
    var var_0 = Struct_2(Struct_1(vec3<i32>(2147483647i, func_3(), u_input.a >> 99838u) * func_2(Struct_3(arg_1.x, Struct_1(vec3<i32>(arg_1.x, 2147483647i, -58152i)), arg_3, vec2<f32>(arg_2, -1370f))).zxy), Struct_1(clamp(arg_3.a, max(vec3<i32>(0i, 70536i, arg_3.a.x), countOneBits(vec3<i32>(5558i, 9494i, i32(-2147483648)))), vec3<i32>(arg_3.a.x, 1i ^ arg_3.a.x, ~global0.a.x))), -arg_2, arg_3);
    var var_1 = Struct_3(-(-var_0.b.a.x) | -(-(1i / 2147483647i)), Struct_1(select(vec3<i32>(-12372i, -(i32(-2147483648)), -(i32(-2147483648))), reverseBits(arg_1.zyy + vec3<i32>(0i, 43769i, -16554i)), vec3<bool>(any(vec2<bool>(false, arg_0)), select(true, true, arg_0), false))), Struct_1(countOneBits(vec3<i32>(-1i, arg_3.a.x, select(arg_1.x, u_input.a, arg_0)))), vec2<f32>(-360f, -select(-var_0.c, arg_2, false)));
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = 42847u;
    global0 = func_4(false, (-select(vec4<i32>(14511i, 1128i, global0.a.x, global0.a.x), vec4<i32>(u_input.a, -34111i, u_input.a, global0.a.x), vec4<bool>(false, true, false, true)) * func_2(Struct_3(global0.a.x, Struct_1(global0.a), Struct_1(global0.a), vec2<f32>(457f, -496f)))) << ~min(max(vec4<u32>(arg_1.x, u_input.b, 65610u, 612u), vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)), vec4<u32>(u_input.b, 25853u, 58670u, 47312u) ^ vec4<u32>(0u, 0u, 4294967295u, 26757u)), -519f, Struct_1(vec3<i32>(global0.a.x, -34886i, -(-45315i))));
    global0 = Struct_1(vec3<i32>(-firstLeadingBit(91334i), global0.a.x, func_2(Struct_3(~u_input.a, func_4(true, vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), -1224f, Struct_1(vec3<i32>(global0.a.x, 54054i, 2147483647i))), func_4(true, vec4<i32>(global0.a.x, -22187i, 64867i, u_input.a), -1172f, Struct_1(vec3<i32>(2147483647i, global0.a.x, global0.a.x))), vec2<f32>(-506f, -300f))).x));
    let var_1 = vec2<f32>(-(-717f), -879f);
    var var_2 = arg_0;
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<i32>(u_input.a, ~1i, (-16353i ^ u_input.a) % -8915i));
    global1 = array<vec2<bool>, 1>();
    global0 = func_1(~select(~(~u_input.b), u_input.b, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), firstTrailingBit(vec3<u32>(143u, ~(u_input.b << 4294967295u), u_input.b)));
    global1 = array<vec2<bool>, 1>();
    global1 = array<vec2<bool>, 1>();
    let var_1 = ~(~(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 0u))) * ~vec3<u32>(u_input.b, 0u, u_input.b)));
    let var_2 = Struct_3(u_input.a, Struct_1(-global0.a), Struct_1(vec3<i32>(var_0.a.x, abs(global0.a.x), var_0.a.x / 0i) ^ clamp(var_0.a / vec3<i32>(22718i, global0.a.x, -1i), vec3<i32>(2147483647i, 0i, u_input.a) % global0.a, global0.a)), -(-(select(vec2<f32>(-1323f, 1000f), vec2<f32>(791f, 701f), true) + vec2<f32>(497f, -178f))));
    let var_3 = -vec4<f32>(-(-1097f + var_2.d.x), 173f / var_2.d.x, var_2.d.x, var_2.d.x) * -abs((vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x) + vec4<f32>(-503f, var_2.d.x, var_2.d.x, var_2.d.x)) / -vec4<f32>(101f, var_2.d.x, var_2.d.x, var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(func_1(41400u, ~var_1).a.x, var_2.c.a.x)), 1000f, ~(func_1(~u_input.b, vec3<u32>(var_1.x, 1u, 0u)).a.x / (i32(-2147483648) ^ u_input.a)));
}

