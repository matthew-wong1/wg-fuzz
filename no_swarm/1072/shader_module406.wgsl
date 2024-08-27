struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(vec4<f32>(-220f, -2218f, 837f, -1276f), 15019i, 15039i, Struct_3(Struct_2(vec3<bool>(true, false, true), Struct_1(-1i, vec4<u32>(95704u, 4294967295u, 55941u, 8617u), vec4<f32>(-184f, -1863f, -646f, 1214f)), vec4<f32>(392f, 1052f, -1000f, -649f), -8815i), 40090u)), Struct_5(vec4<f32>(425f, 1024f, 362f, 1241f), 0i, 0i, Struct_3(Struct_2(vec3<bool>(true, false, false), Struct_1(1i, vec4<u32>(1u, 26697u, 3510u, 52136u), vec4<f32>(1010f, -940f, -772f, 2823f)), vec4<f32>(898f, -385f, -1339f, -636f), -1i), 0u)), Struct_5(vec4<f32>(760f, 663f, 1337f, 496f), i32(-2147483648), -11145i, Struct_3(Struct_2(vec3<bool>(false, true, false), Struct_1(i32(-2147483648), vec4<u32>(1u, 1u, 1u, 15606u), vec4<f32>(1351f, -134f, -780f, 315f)), vec4<f32>(-1235f, -1336f, 1316f, 849f), -6175i), 20907u)), Struct_5(vec4<f32>(-406f, -2383f, -561f, 280f), -15258i, 26198i, Struct_3(Struct_2(vec3<bool>(true, false, true), Struct_1(i32(-2147483648), vec4<u32>(1u, 5750u, 0u, 56169u), vec4<f32>(924f, 1658f, 989f, 1831f)), vec4<f32>(1014f, 1351f, -170f, -902f), 21740i), 9307u)), Struct_5(vec4<f32>(-517f, -250f, 739f, -1000f), i32(-2147483648), 11832i, Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(14208i, vec4<u32>(23568u, 63227u, 64743u, 61734u), vec4<f32>(-100f, 256f, 515f, -772f)), vec4<f32>(-729f, -932f, -1159f, 297f), -9930i), 76133u)));

var<private> global1: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mod_i32((firstLeadingBit(global1.d.a.b.a) & 0i) | global1.b, ~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-42946i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.zww, vec3<f32>(-463f, global1.a.x, 470f), false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.b.c.x, -252f, global1.d.a.c.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(-1000f, global1.a.x)) - -2952f), _wgslsmith_div_f32(global1.d.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d.a.c.x, -230f)) + -1584f)))), global1.a.x, max(-31656i << (~_wgslsmith_mult_u32(0u, global1.d.a.b.b.x) % 32u), reverseBits(_wgslsmith_add_i32(26808i, var_0) ^ (u_input.a | -1337i))));
}

