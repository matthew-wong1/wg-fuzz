struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-660f * 240f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-381f, -970f, !arg_1.x)) * 1986f);
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, !any(arg_1.xz), arg_1.x), false, u_input.a, vec3<u32>(51304u, 0u, u_input.a)));
    var var_1 = all(select(select(vec4<bool>(!var_0.a.b, var_0.a.c != var_0.a.c, true, any(var_0.a.a.xx)), vec4<bool>(var_0.a.b, select(var_0.a.a.x, arg_1.x, arg_1.x), !arg_1.x, select(false, arg_1.x, arg_1.x)), arg_1.x), var_0.a.a, select(vec4<bool>(true, true, true, all(vec2<bool>(arg_1.x, false))), select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, false), !var_0.a.a, select(vec4<bool>(true, var_0.a.b, arg_1.x, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.a.x, var_0.a.b, var_0.a.b), vec4<bool>(false, false, false, true))), var_0.a.a.x)));
    let var_2 = var_0;
    return var_2.a.a;
}

fn func_2() -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(914f + 133f)) + _wgslsmith_f_op_f32(f32(-1f) * -145f))));
    let var_0 = u_input.a;
    let var_1 = -(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 47210i, -25562i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -491i, 19418i), vec4<i32>(-2231i, 1i, 47306i, 14037i)) | vec4<i32>(-19742i, -24535i, 1948i, 19301i)) ^ max(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-10887i, 0i, -12943i, 2147483647i)), vec4<i32>(-16183i, 26783i, -2147483647i, -13685i) << (vec4<u32>(4294967295u, u_input.a, 1u, 75430u) % vec4<u32>(32u))), ~(-vec4<i32>(2147483647i, -51342i, 11716i, 13313i))));
    var var_2 = Struct_1(vec4<bool>(true, true, true, true), false, u_input.a, vec3<u32>(~4294967295u, 47496u, var_0));
    var var_3 = Struct_2(Struct_1(func_3(var_1.x, select(vec3<bool>(var_2.a.x, false, var_2.a.x), vec3<bool>(false, false, var_2.a.x), var_2.a.x)), !(true && (var_0 >= 1888u)), 0u, vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0), var_2.d.yx)), 0u, _wgslsmith_mod_u32(abs(var_2.d.x), _wgslsmith_sub_u32(1u, u_input.a)))));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-819f * _wgslsmith_f_op_f32(f32(-1f) * -849f)) * _wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(select(567f, 121f, var_3.a.a.x)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1596f - _wgslsmith_f_op_f32(abs(357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2141f + -625f)), !select(false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-317f))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x));
    var var_0 = Struct_2(Struct_1(func_3(57149i, !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) + _wgslsmith_f_op_f32(step(-629f, 357f))) == 200f, abs(abs(arg_0)) ^ 35228u, ~_wgslsmith_mod_vec3_u32(vec3<u32>(44331u, arg_0, arg_0), vec3<u32>(u_input.a, 23919u, 47242u)) | vec3<u32>(1u, abs(arg_0), _wgslsmith_div_u32(2178u, 4294967295u))));
    let var_1 = var_0.a.d.xz;
    var_0 = Struct_2(Struct_1(var_0.a.a, var_0.a.a.x, arg_0, vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 24955u, var_1.x), ~vec4<u32>(var_0.a.d.x, 4294967295u, var_0.a.d.x, 6605u)), ~var_0.a.d.x)));
    let var_2 = vec2<bool>(~(~firstTrailingBit(4294967295u)) != ~11812u, true);
    return Struct_3(arg_1.xz, _wgslsmith_f_op_vec2_f32(arg_1.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.xz))))));
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1492f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-226f)) * 628f), _wgslsmith_f_op_f32(abs(778f))))));
    let var_0 = func_4(~(~u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(262f, 1784f, 316f))))));
    var var_1 = arg_0;
    let var_2 = var_0.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))) + _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2037f + _wgslsmith_f_op_f32(floor(-316f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1008f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false), false, u_input.a, vec3<u32>(u_input.a, 0u, u_input.a))), Struct_1(vec4<bool>(true, false, false, true), false, u_input.a, vec3<u32>(0u, 35017u, u_input.a)), 0u))))))), 1132f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-232f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) + -624f)), _wgslsmith_f_op_vec3_f32(func_2()).x, !all(vec4<bool>(false, false, true, true)) || (true && any(vec2<bool>(false, true))))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(~0u, _wgslsmith_div_vec3_f32(vec3<f32>(2886f, 1268f, 519f), vec3<f32>(943f, -1000f, -833f))).a.x, _wgslsmith_f_op_f32(floor(222f)), _wgslsmith_f_op_f32(-2014f * _wgslsmith_div_f32(-1418f, 2206f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1059f, -2243f, 521f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(410f, -2621f, -707f) + vec3<f32>(654f, 595f, 2648f))), vec3<bool>(true, false, u_input.a > 37547u)))), Struct_4(Struct_2(Struct_1(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), 4294967295u == u_input.a, firstTrailingBit(u_input.a), vec3<u32>(u_input.a, 52980u, 0u) ^ vec3<u32>(u_input.a, u_input.a, 1u))), Struct_1(vec4<bool>(true, true, true, true), false, _wgslsmith_div_u32(~u_input.a, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), min(vec3<u32>(78107u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 4756u)))), 4294967295u), 4294967295u | ~countOneBits(select(23253u, u_input.a, false)), countOneBits(~(~u_input.a)), vec3<i32>(42642i, ~15449i, ~(-17382i)));
    let var_2 = var_1.e.yy;
    var var_3 = i32(-1i) * -(~((-1258i >> (var_1.d % 32u)) ^ ~var_2.x));
    let var_4 = all(var_1.b.a.a.a.xy);
    global0 = -2083f;
    let var_5 = max(vec4<i32>(-1i) * -(~vec4<i32>(var_2.x, var_1.e.x, 2147483647i, -2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, var_1.e.x, 2147483647i, -48618i), abs(vec4<i32>(1i, 46970i, var_1.e.x, var_1.e.x))) | vec4<i32>(~(-36120i), 1i, var_1.e.x ^ var_1.e.x, 19785i), ~(vec4<i32>(9733i, var_1.e.x, var_2.x, var_2.x) >> (~vec4<u32>(var_1.d, u_input.a, 18496u, u_input.a) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))));
}

