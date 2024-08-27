struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    var var_0 = -1i;
    var_0 = i32(-1i) * -52542i;
    var var_1 = true;
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 44594u), vec2<u32>(27536u, 4109u)), firstLeadingBit(1u), select(24344u, 144010u, false), ~4966u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(14907u, 4294967295u, 0u, 34277u)), _wgslsmith_div_vec4_u32(vec4<u32>(85002u, 8555u, 24518u, 3117u), ~vec4<u32>(1u, 70096u, 66820u, 87129u)))), vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(7439u, 1u, 39412u), 1u), 35255u, _wgslsmith_mod_u32(min(_wgslsmith_mult_u32(0u, 1u), abs(2208u)), max(1u, 1u)), min(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(14660u, 51516u, 54053u, 4294967295u), vec4<u32>(0u, 10300u, 41509u, 12792u))), select(~1u, 4294967295u >> (1u % 32u), true))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(902f, 220f, false))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1241f)), _wgslsmith_f_op_f32(-201f - 354f)))));
    return select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))), select(vec2<bool>(true, true), vec2<bool>((var_2.x <= var_2.x) == false, !(var_2.x == var_2.x)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true))), (~18409i == ~u_input.b.x) != all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1480f))))), func_3(), vec3<i32>(2147483647i, u_input.b.x, -_wgslsmith_sub_i32(-2147483647i, u_input.b.x) >> (abs(~1u) % 32u)), !(!(func_3().x == true)), Struct_1(select(vec3<u32>(1u, 71287u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), true)));
    var var_1 = var_0.d;
    let var_2 = _wgslsmith_mod_u32(4294967295u, var_0.e.a.x);
    var_1 = var_2 != ~(var_0.e.a.x & var_0.e.a.x);
    let var_3 = reverseBits(~abs(~var_0.e.a.yy)) >> (((min(var_0.e.a.yx, max(var_0.e.a.yz, vec2<u32>(var_2, var_0.e.a.x))) ^ vec2<u32>(~var_0.e.a.x, ~1u)) | ~_wgslsmith_add_vec2_u32(~var_0.e.a.yz, var_0.e.a.yz)) % vec2<u32>(32u));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec2<f32> {
    var var_0 = firstLeadingBit(-(~vec4<i32>(min(u_input.a, -16589i), _wgslsmith_mod_i32(2147483647i, u_input.a), -u_input.b.x, -2147483647i)));
    let var_1 = vec3<u32>(~4294967295u, ~_wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, 33199u, 0u), vec3<u32>(63649u, 3255u, 36346u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(50366u, 62566u, 4294967295u), vec3<u32>(1604u, 0u, 27350u), vec3<bool>(true, arg_1.x, false)), vec3<u32>(621u, 1u, 0u))), abs(~4294967295u));
    var_0 = u_input.b & -vec4<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(-1i, u_input.b.x)), _wgslsmith_div_i32(select(-2147483647i, 2147483647i, arg_1.x), 1i), firstLeadingBit(reverseBits(90930i)), _wgslsmith_clamp_i32(var_0.x, var_0.x, u_input.b.x));
    var var_2 = Struct_4(func_2(), arg_1, vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(u_input.a, -2147483647i, var_0.x, 12100i) & ~vec4<i32>(var_0.x, -1i, 0i, -10328i)), -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - arg_0.a), arg_0.a) < 1000f, Struct_1(~(~var_1) >> (var_1 % vec3<u32>(32u))));
    var_0 = firstLeadingBit(-vec4<i32>(u_input.a, var_2.c.x ^ var_2.c.x, -72784i, i32(-1i) * -16797i) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 45007u, var_2.e.a.x), vec4<u32>(55939u, var_2.e.a.x, var_1.x, 0u), ~vec4<u32>(1u, var_1.x, var_2.e.a.x, var_1.x)) << (abs(max(vec4<u32>(var_1.x, 0u, 48552u, 0u), vec4<u32>(var_2.e.a.x, var_1.x, 4294967295u, var_2.e.a.x))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(floor(arg_2.yx));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.a, u_input.b.x, 1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(func_2(), vec2<bool>(true, false), arg_0.wwx))));
    var var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, ~_wgslsmith_clamp_u32(50612u, 48299u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26539u, 11437u, 0u), vec4<u32>(4294967295u, 7392u, 11471u, 0u)), ~1u), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_3 = Struct_1(~min(select(_wgslsmith_sub_vec3_u32(var_2.xww, vec3<u32>(0u, 61651u, var_2.x)), vec3<u32>(60723u, 4294967295u, 0u), true), ~select(vec3<u32>(var_2.x, 6772u, 78241u), var_2.wxw, false)));
    var_2 = firstLeadingBit(vec4<u32>(1u, 15700u, 0u, abs(~var_2.x)) >> (_wgslsmith_div_vec4_u32(min(~vec4<u32>(var_3.a.x, 4706u, 97709u, 10368u), reverseBits(vec4<u32>(var_2.x, 41753u, 1u, 28469u))), (vec4<u32>(4294967295u, 62153u, var_2.x, var_3.a.x) | vec4<u32>(0u, var_3.a.x, 1u, 1u)) | vec4<u32>(var_2.x, var_3.a.x, var_2.x, var_2.x)) % vec4<u32>(32u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(118f * -152f), -367f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -286f))));
    var var_1 = ~1850u;
    var_1 = 5667u;
    var_1 = ~0u;
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a, 818f), _wgslsmith_f_op_f32(floor(-1152f)), _wgslsmith_f_op_f32(-163f - _wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1010f, 1000f, -160f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1184f, -555f) - vec3<f32>(var_0.a, var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, -1620f, 888f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_0, func_3(), vec3<f32>(var_0.a, -304f, -423f))).x)));
}

