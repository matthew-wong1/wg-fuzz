struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> i32 {
    var var_0 = Struct_3(vec2<bool>(any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, false, false, false))), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), reverseBits(_wgslsmith_mod_i32(-2147483647i, ~arg_1)) ^ ~_wgslsmith_mod_i32(-50198i, -20246i), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.b.a)), vec2<f32>(-433f, 629f)))), 1i == (min(arg_1, 1i) | 0i));
    var var_1 = _wgslsmith_add_i32(~arg_0.a.b, -2147483647i);
    let var_2 = var_0.a;
    var var_3 = -1656i;
    var var_4 = Struct_4(arg_0.a, ~max(~(~arg_0.a.c.x), ~firstLeadingBit(arg_0.a.a)), Struct_1(arg_0.a.a, 1i, abs(u_input.a.zz), _wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(-arg_0.b.a.x)), arg_0.a.d));
    return var_4.a.b;
}

fn func_2() -> bool {
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_1(var_0, func_3(Struct_5(Struct_1(28000u, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, -1i), vec4<i32>(2147483647i, 44608i, 1i, 0i)), vec2<u32>(var_0, 0u), -410f, -594f), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, 1867f)))), ~(-87552i)), vec2<u32>(19354u, (~u_input.a.x | (u_input.a.x ^ 1u)) & ~(15263u | u_input.a.x)), 356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-663f, _wgslsmith_f_op_f32(-219f * -151f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f))));
    let var_2 = !select(!vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, true)), false), !vec4<bool>(false, true, true, 0u >= u_input.a.x), (_wgslsmith_f_op_f32(-var_1.e) <= _wgslsmith_f_op_f32(abs(var_1.d))) | true);
    var var_3 = 4294967295u;
    var var_4 = 1i;
    return var_2.x;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = select(vec2<bool>(func_2() != any(vec4<bool>(false, true, true, true)), !(!all(vec4<bool>(false, false, false, false)))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, false, true)))), vec2<bool>(select(false, true, true), select(false, true, all(vec4<bool>(true, false, false, false)))), true), false);
    var var_1 = Struct_5(Struct_1(1u, abs(-1i), vec2<u32>(min(~u_input.a.x, min(u_input.a.x, u_input.a.x)), ~84302u), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -351f))))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1828f + -131f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1075f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(sign(var_1.a.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + var_1.b.a.x), arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1207f, arg_0.x, -324f, arg_0.x) - vec4<f32>(arg_0.x, var_1.b.a.x, 285f, 201f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1226f, 1591f, 671f, var_1.b.a.x) + vec4<f32>(1000f, 1429f, 1000f, 1000f)), vec4<f32>(arg_0.x, -1354f, var_1.a.d, 758f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-383f, -724f, 341f, var_1.b.a.x), vec4<f32>(var_1.b.a.x, var_1.b.a.x, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, var_1.b.a.x, -2042f, -633f)) - vec4<f32>(354f, -573f, 707f, var_1.a.e)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, arg_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.e, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a)))));
    var_1 = Struct_5(var_1.a, var_1.b);
    return i32(-1i) * -(~var_1.a.b << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43006u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(56631u, 18267u, 2080u, var_1.a.c.x), vec4<u32>(var_1.a.a, 1u, 4294967295u, u_input.a.x)), ~vec4<u32>(4294967295u, var_1.a.c.x, u_input.a.x, var_1.a.c.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u ^ u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 5147u, 8751u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(92207u, 47794u, 0u, u_input.a.x))) << (_wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(48475u)) % 32u), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 474f))))), max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(~(~71471u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1476f) - _wgslsmith_f_op_f32(select(-768f, 1148f, false))) - 841f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-894f)))));
    var var_1 = Struct_5(var_0, Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_0.d - var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -733f))))));
    var_1 = Struct_5(var_0, var_1.b);
    var_1 = Struct_5(Struct_1(~(~(~32458u)), func_3(Struct_5(var_1.a, var_1.b), ~22098i), vec2<u32>(u_input.a.x, ~21013u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1306f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.d)), var_1.b.a.x)))), 1616f), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.b.a), var_1.b.a)))));
    var var_2 = Struct_5(Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1449u, u_input.a.x, var_1.a.c.x, 4294967295u)), abs(~vec4<u32>(var_1.a.c.x, u_input.a.x, 10209u, 27251u))), var_1.a.b ^ func_1(_wgslsmith_f_op_vec2_f32(var_1.b.a - vec2<f32>(1093f, -538f))), ~vec2<u32>(_wgslsmith_div_u32(var_0.a, u_input.a.x), ~85328u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1540f))) * var_1.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f * var_0.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e))))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b.a, vec2<f32>(var_1.a.e, var_1.b.a.x), true)) * vec2<f32>(var_0.d, var_0.e)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.e) * _wgslsmith_f_op_vec2_f32(-var_1.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, var_1.a.d, 1343f))))))), -_wgslsmith_sub_i32(var_0.b, -2147483647i), -(~firstTrailingBit(2147483647i)));
}

