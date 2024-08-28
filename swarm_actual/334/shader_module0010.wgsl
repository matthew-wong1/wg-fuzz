// {"0:0":[153,84,98,97,95,141,199,68,32,75,125,54,222,96,39,178,20,68,145,24,203,2,245,209,217,88,251,148,142,195,175,50]}
// Seed: 7845342870236343070

struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(i32(-2147483648), 33538i, 1i), vec3<i32>(19270i, 0i, -1i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(0i, 37055i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), -19086i), vec3<i32>(-1i, -38799i, 26412i), vec3<i32>(2147483647i, -18390i, 2206i), vec3<i32>(130i, -1719i, -75203i), vec3<i32>(0i, -1i, 19446i), vec3<i32>(-12885i, -12851i, 1i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -25100i, 44414i), vec3<i32>(2147483647i, 26201i, 0i), vec3<i32>(2147483647i, 0i, 39094i), vec3<i32>(-48187i, 1i, 1i), vec3<i32>(-33115i, 1i, 2147483647i));

fn func_3(arg_0: f32) -> vec3<i32> {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_0 = select(vec3<bool>(false, (-725f + arg_0) != (arg_0 / arg_0), select(select(!false, true && false, true), abs(arg_0) < arg_0, select(any(vec2<bool>(true, false)), -500f <= -580f, false))), select(vec3<bool>(!(!false), false, all(!vec4<bool>(false, false, true, true))), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), !vec3<bool>(true, true, false), false), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), false || true), any(vec4<bool>(false, false, false, true)))), vec3<bool>(~(0i) <= select(dot(global0[4294967295u], global0[68987u]), 1i & u_input.c, !true), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, false), !true)), 2269f == exp2(arg_0 + arg_0)));
    global0 = array<vec3<i32>, 16>();
    let var_1 = Struct_2(arg_0, -(vec3<i32>(-16817i, clamp(57722i, i32(-2147483648), u_input.a.x), -23391i) >> ((vec3<u32>(28281u, u_input.d, u_input.d) * vec3<u32>(u_input.d, u_input.d, u_input.d)) + ~vec3<u32>(u_input.d, 4837u, 0u))), Struct_1(-394f, u_input.e));
    return var_1.b;
}

fn func_2() -> vec4<f32> {
    var var_0 = !(!true) && any(select(vec3<bool>(!false, !true, false), select(!vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), !(!vec3<bool>(false, false, false))));
    var var_1 = Struct_2(1880f, -func_3(344f + 1395f) - -select(vec3<i32>(1i, u_input.e, -27949i), global0[firstTrailingBit(4294967295u)], u_input.d > u_input.d), Struct_1(max(-311f - -1097f, -1000f) + round(-536f), reverseBits(dot(~u_input.a.yx, -u_input.a.xx))));
    let var_2 = func_3((max(-1174f, 1078f + 979f) + -(-878f)) - -(floor(var_1.c.a) / var_1.a)).yx;
    let var_3 = var_1.c;
    let var_4 = ~(vec4<i32>(min(var_3.b, var_2.x), ~var_3.b, u_input.a.x, ~20157i) * (u_input.a / (vec4<i32>(u_input.c, 2147483647i, u_input.c, var_1.c.b) << vec4<u32>(1u, u_input.d, 4294967295u, u_input.d)))) * u_input.a;
    return -(vec4<f32>(var_1.c.a, var_1.c.a - (2111f + 1132f), var_1.a, 2296f) - min(max(max(vec4<f32>(var_1.c.a, var_3.a, var_1.a, -462f), vec4<f32>(979f, -1000f, var_1.c.a, var_1.a)), select(vec4<f32>(-415f, -1091f, var_3.a, var_1.a), vec4<f32>(228f, -311f, -423f, 141f), vec4<bool>(false, true, true, false))), select(vec4<f32>(var_3.a, 222f, var_1.c.a, var_3.a) - vec4<f32>(var_3.a, var_1.c.a, var_3.a, var_1.a), vec4<f32>(var_3.a, var_1.a, -204f, -458f) / vec4<f32>(-126f, -1063f, -2305f, var_3.a), !false)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = any(!vec3<bool>(false, !arg_0.c == !arg_0.c, false));
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_1 = arg_1.b << vec3<u32>(17711u, reverseBits(19532u), 61350u);
    return min(func_2(), ((-vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 979f) / -vec4<f32>(435f, -1000f, 714f, -1806f)) + func_2()) + (vec4<f32>(select(arg_1.a, 1000f, true), 1770f, arg_0.a.x / arg_2.a, arg_2.a - arg_0.a.x) / (vec4<f32>(arg_2.a, arg_0.b.a, arg_1.a, -846f) / vec4<f32>(1419f, arg_1.a, -1501f, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let var_0 = -select(round(trunc(vec4<f32>(-1143f, -1000f, 1204f, 587f))) * func_1(Struct_3(vec2<f32>(-1000f, -312f), Struct_2(1107f, global0[4733u], Struct_1(1000f, 7160i)), false), Struct_2(-1162f, global0[u_input.d], Struct_1(371f, i32(-2147483648))), Struct_1(-861f, u_input.e)), (max(vec4<f32>(-2236f, -390f, 1061f, 478f), vec4<f32>(-1926f, -1000f, -1001f, 1579f)) + select(vec4<f32>(-291f, -1103f, -521f, -1000f), vec4<f32>(731f, -777f, -875f, 546f), false)) - vec4<f32>(271f * -591f, -284f + 1825f, -1649f, -2567f), !(false | false) | (!false == true));
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    global0 = array<vec3<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(37290i, dot(global0[0u / 40738u], vec3<i32>(u_input.b, -28091i, -57747i))));
}

