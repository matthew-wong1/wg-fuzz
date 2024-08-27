struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(39167i, 2147483647i, 40278i, -9291i), vec4<i32>(-1i, -1i, -15958i, -36451i), vec4<i32>(-25895i, -8294i, i32(-2147483648), 0i), vec4<i32>(-65947i, -1i, -1i, -1i), vec4<i32>(i32(-2147483648), 1i, -1i, -1i), vec4<i32>(-24636i, -1i, 0i, 24509i), vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(6008i, -24247i, 1i, 1i), vec4<i32>(6942i, 13076i, 450i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 435i, -13364i), vec4<i32>(39526i, 2147483647i, -20161i, 55515i), vec4<i32>(-26348i, 5263i, 0i, -6757i), vec4<i32>(i32(-2147483648), -39397i, -1i, 1i), vec4<i32>(1i, -12721i, -1i, -60217i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<i32>(1i, -35647i, -35653i, -34536i), vec4<i32>(i32(-2147483648), -38249i, 1i, 1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5) -> u32 {
    let var_0 = arg_0.b.d.x;
    global0 = array<vec4<i32>, 17>();
    let var_1 = arg_0.e.d.x;
    var var_2 = Struct_5(Struct_2(arg_1.a.a, -1i << (((arg_0.d | 4294967295u) << (_wgslsmith_sub_u32(arg_0.b.b, arg_0.b.b) % 32u)) % 32u)));
    var var_3 = vec4<bool>(arg_0.b.d.x, !arg_0.b.d.x, var_0, var_0);
    return u_input.a.x;
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_2(u_input.b, -u_input.c.x));
    let var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(abs(56505u), ~u_input.a.x, ~u_input.a.x, 4294967295u), ~(~vec4<u32>(~715u, 0u, 1u >> (u_input.a.x % 32u), 1u)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~var_1, _wgslsmith_mod_vec4_u32(var_1, var_1), vec4<u32>(65296u, 0u, 4294967295u, 1u)), var_1) << (((~(u_input.a.x << (u_input.a.x % 32u)) ^ 86817u) ^ 0u) % 32u), 17u)];
    global0 = array<vec4<i32>, 17>();
    let var_3 = _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x & (u_input.a.x << ((var_1.x << ((123870u ^ var_1.x) % 32u)) % 32u)));
    return var_3;
}

fn func_1() -> vec4<u32> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1399f, 485f, 725f, 1776f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-783f, -3663f, -461f, 395f), vec4<f32>(1019f, -2149f, -1000f, -837f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2722f, -296f, 1493f, 1500f), vec4<f32>(-1436f, 311f, 1000f, -905f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1122f, -964f, 1337f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-345f, -1100f, -824f, -573f))))))));
    global0 = array<vec4<i32>, 17>();
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, var_0.x, 4294967295u), ~var_0.x, 0u);
    var_0 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x) & ~74273u, 13726u), vec3<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(22589u, u_input.a.x), ~vec2<u32>(var_0.x, 0u)))));
    return ~vec4<u32>(~(~u_input.a.x), ~0u, _wgslsmith_sub_u32(func_2(Struct_4(var_0.x, Struct_1(vec4<u32>(13109u, 1u, 3190u, 72888u), u_input.a.x, vec2<u32>(0u, u_input.a.x), vec2<bool>(true, true)), vec3<f32>(564f, 298f, var_1.x), 0u, Struct_3(Struct_2(44114i, -1458i), -794f, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_0.x), var_1.xyz, -74776i)), Struct_5(Struct_2(-2147483647i, u_input.c.x))), func_3()), 94828u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xy;
    var var_1 = Struct_1(func_1(), u_input.a.x, ~vec2<u32>(~18264u, ~(~var_0.x)), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    var_1 = Struct_1(~(~min(var_1.a | var_1.a, vec4<u32>(u_input.a.x, 1u, var_0.x, 36865u))), 46349u, var_1.c, select(!select(select(var_1.d, var_1.d, false), vec2<bool>(true, false), var_1.a.x >= var_0.x), !var_1.d, select(vec2<bool>(true, true), !vec2<bool>(var_1.d.x, false), vec2<bool>(all(vec4<bool>(var_1.d.x, false, true, var_1.d.x)), var_1.d.x))));
    var var_2 = Struct_3(Struct_2(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, -2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 34700i)), 0i), u_input.b), _wgslsmith_f_op_f32(346f + -931f), var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -553f)), ~_wgslsmith_add_i32(0i, countOneBits(-u_input.c.x)));
    var_1 = Struct_1(~var_1.a, 36102u, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x | 0u, ~u_input.a.x), vec2<u32>(28219u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(84772u, 1u, var_0.x))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_1.b, 25025u), var_2.c.yz, true), countOneBits(vec2<u32>(var_0.x, 41449u)))), u_input.a.zx), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1901f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-961f)) * -122f), _wgslsmith_f_op_f32(round(var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b, var_2.b))))), _wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.d.x)), _wgslsmith_f_op_f32(1186f + -296f)), ~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 36273u), vec2<u32>(var_2.c.x, 2202u)), ~u_input.a.xy) | var_1.a.x), max(~vec3<u32>(~var_1.b, _wgslsmith_mod_u32(var_1.a.x, var_0.x), u_input.a.x), _wgslsmith_mult_vec3_u32(var_1.a.xww, select(var_1.a.xwx << (vec3<u32>(u_input.a.x, 94677u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(1u, 61039u, var_0.x), select(vec3<bool>(false, false, var_1.d.x), vec3<bool>(false, true, var_1.d.x), var_1.d.x)))));
}

