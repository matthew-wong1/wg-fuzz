struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(7688i, 0i, -5857i, -38729i), vec4<i32>(-20131i, i32(-2147483648), -1i, 21353i), vec4<i32>(-56096i, 50752i, 1i, 0i), vec4<i32>(-7285i, i32(-2147483648), -6449i, 16151i), vec4<i32>(79741i, i32(-2147483648), 0i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -10501i), vec4<i32>(-39603i, 54833i, 0i, 2147483647i), vec4<i32>(0i, 2475i, 54923i, 2147483647i), vec4<i32>(50976i, 0i, -10543i, -1i), vec4<i32>(i32(-2147483648), 11000i, 2147483647i, 55711i), vec4<i32>(0i, -997i, 13318i, -16699i), vec4<i32>(14784i, 2147483647i, 67046i, -25337i), vec4<i32>(0i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(23842i, 27723i, -16423i, i32(-2147483648)), vec4<i32>(1i, 1i, -43629i, 17941i), vec4<i32>(0i, -33686i, 6485i, -20900i), vec4<i32>(1i, 6676i, i32(-2147483648), 25368i), vec4<i32>(-708i, 12835i, -1i, -15737i), vec4<i32>(-5870i, 2147483647i, -71272i, i32(-2147483648)), vec4<i32>(39741i, 15811i, -8455i, -1i), vec4<i32>(23394i, -21869i, -19050i, i32(-2147483648)), vec4<i32>(0i, 45684i, -643i, 2147483647i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-29837i, -10757i, 2147483647i, -1i), vec4<i32>(-14741i, 19699i, -41487i, -1i), vec4<i32>(-10929i, 2147483647i, 32526i, 1i), vec4<i32>(0i, i32(-2147483648), -16236i, 2147483647i), vec4<i32>(-1i, -14056i, 1i, -23204i), vec4<i32>(-952i, 5707i, 50982i, 0i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    return 1u;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_0, -974f, arg_3.x));
    let var_1 = vec3<u32>(func_2(), ~abs(~(u_input.a ^ u_input.a)), _wgslsmith_clamp_u32(~u_input.a, 26072u, u_input.a) & 4294967295u);
    var var_2 = Struct_3(select(vec2<bool>(!all(vec4<bool>(arg_3.x, arg_2, arg_3.x, arg_2)), arg_2), arg_3, u_input.a <= var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(310f, _wgslsmith_f_op_f32(-arg_0))))), abs(abs(~vec4<u32>(1u, var_1.x, 59386u, 821u) >> (~vec4<u32>(30936u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)))), ~vec3<i32>(1i, 1i, 1i), -vec2<i32>(abs(~1i), -1i));
    global0 = array<vec4<i32>, 29>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2126f)));
    return 410f;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = Struct_3(vec2<bool>(true, !all(vec2<bool>(arg_2.x, true)) & arg_2.x), -323f, firstLeadingBit(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 39343u, 26552u), vec4<u32>(4294967295u, 1u, arg_0.x, 62565u)), ~vec4<u32>(0u, u_input.a, 13500u, 59143u), min(vec4<u32>(43916u, arg_0.x, 0u, u_input.a), vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x)))), ~(-(~vec3<i32>(-2147483647i, 1i, 13147i))) >> (vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(countOneBits(arg_0), vec2<u32>(49859u, arg_0.x)), ~u_input.a >> (u_input.a % 32u)) % vec3<u32>(32u)), select(~vec2<i32>(6610i, -49435i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_clamp_i32(-23980i, 6049i, -2147483647i), -22622i)), arg_2.x & false));
    var_0 = Struct_3(!select(var_0.a, !vec2<bool>(arg_2.x, arg_2.x), !arg_2.x), arg_1.x, ~_wgslsmith_div_vec4_u32(~var_0.c, var_0.c), vec3<i32>(var_0.e.x, i32(-1i) * -2147483647i, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.e, vec2<i32>(3047i, -1i)), var_0.e | vec2<i32>(-1785i, var_0.e.x))), vec2<i32>(_wgslsmith_mult_i32(-385i, abs(var_0.e.x)), -19691i));
    var_0 = Struct_3(arg_2, 1931f, var_0.c, vec3<i32>(-var_0.e.x, var_0.d.x, 2147483647i), vec2<i32>(-abs(abs(var_0.e.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -14443i), vec2<i32>(15047i, 14674i), vec2<i32>(var_0.d.x, -12214i) ^ var_0.d.xx), -vec2<i32>(var_0.e.x, var_0.e.x))));
    global0 = array<vec4<i32>, 29>();
    let var_1 = select(!select(select(!vec4<bool>(arg_2.x, var_0.a.x, false, var_0.a.x), select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(var_0.a.x, true, true, false), true), !vec4<bool>(var_0.a.x, arg_2.x, true, true)), !select(vec4<bool>(arg_2.x, arg_2.x, true, var_0.a.x), vec4<bool>(false, false, var_0.a.x, true), arg_2.x), select(!vec4<bool>(arg_2.x, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(true, false, var_0.a.x, false), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, arg_2.x, var_0.a.x, true), false))), select(!vec4<bool>(all(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), any(var_0.a), any(vec4<bool>(true, true, true, false)), arg_2.x & false), select(vec4<bool>(!var_0.a.x, any(vec3<bool>(true, true, arg_2.x)), select(false, false, arg_2.x), true), select(!vec4<bool>(var_0.a.x, var_0.a.x, false, true), select(vec4<bool>(arg_2.x, true, var_0.a.x, arg_2.x), vec4<bool>(var_0.a.x, true, true, true), arg_2.x), false), (arg_2.x | true) | arg_2.x), all(vec4<bool>(arg_2.x, var_0.a.x || arg_2.x, all(var_0.a), any(vec3<bool>(arg_2.x, var_0.a.x, true))))), select(vec4<bool>(!all(vec3<bool>(true, var_0.a.x, false)), arg_2.x, arg_2.x, (false || var_0.a.x) & (var_0.a.x != true)), vec4<bool>(var_0.a.x, false, any(select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(arg_2.x, var_0.a.x, arg_2.x), true)), _wgslsmith_f_op_f32(1080f * var_0.b) >= _wgslsmith_f_op_f32(687f + arg_1.x)), !vec4<bool>(true, false, any(vec3<bool>(arg_2.x, false, var_0.a.x)), true)));
    return StorageBuffer(var_0.c.xxx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f + 1429f) + _wgslsmith_f_op_f32(f32(-1f) * -291f)), 1744f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.x)), var_0.b))), 1349f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 29>();
    let x = u_input.a;
    s_output = func_3(countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), max(vec2<u32>(40541u, 0u), vec2<u32>(4294967295u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(451f, 115f) + -760f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-758f)), 1089f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-561f)), _wgslsmith_f_op_f32(sign(605f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(495f)), Struct_2(vec3<f32>(-402f, 642f, -1799f), vec3<f32>(-898f, -377f, 1495f)), true, vec2<bool>(false, true))))), _wgslsmith_f_op_f32(floor(-100f))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), all(vec4<bool>(false, true, false, true)))));
}

