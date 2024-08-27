struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    let var_0 = 15575u;
    var var_1 = Struct_3(Struct_1(vec2<bool>(arg_0 | !arg_0, arg_0)), Struct_1(!vec2<bool>(!arg_0, arg_0)), ~min(~32683u, 20824u), Struct_2(abs(vec3<i32>(-41069i, min(4779i, 6566i), ~0i))), arg_2 < _wgslsmith_div_f32(1473f, 915f));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-667f, 374f, true)), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -910f), 441f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(235f, -391f, 955f, 727f))))), max((u_input.b << (abs(vec4<u32>(var_0, var_1.c, 42378u, 0u)) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_0, var_0, var_0), arg_1) % vec4<u32>(32u)), u_input.a), Struct_3(var_1.a, Struct_1(!select(var_1.b.a, vec2<bool>(false, true), var_1.b.a)), ~19253u, Struct_2(vec3<i32>(reverseBits(8424i), 1i, ~0i)), all(select(!vec4<bool>(false, arg_0, true, true), !vec4<bool>(var_1.b.a.x, arg_0, var_1.e, arg_0), var_1.e))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(arg_2 + var_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -443f)));
    var var_4 = Struct_5(u_input.a, ~_wgslsmith_dot_vec3_u32(~arg_1.zzw & firstTrailingBit(arg_1.yyx), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.c, var_2.c.c, var_2.c.c), vec3<u32>(var_0, var_2.c.c, 78827u)) ^ arg_1.xxy), vec4<i32>(i32(-1i) * -2147483647i, -u_input.b.x << (_wgslsmith_div_u32(_wgslsmith_div_u32(106538u, u_input.c), abs(arg_1.x)) % 32u), min(~var_2.b.x, -_wgslsmith_dot_vec2_i32(var_2.b.zw, vec2<i32>(var_2.c.d.a.x, -10466i))), ~var_2.b.x));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, var_3) + 496f), _wgslsmith_f_op_f32(-215f + var_2.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, ~vec4<u32>(0u, arg_1.b, 75610u, 1u), _wgslsmith_f_op_f32(sign(-1061f)))) + -618f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-656f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1861f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f - 1269f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f + 1000f))))));
    return ~(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(640u, 32661u, 4294967295u)) << (select(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, 6922u, 48265u), arg_0.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(arg_1.b, 23208u, 0u)), reverseBits(vec3<u32>(13685u, arg_1.b, 4294967295u)))) ^ _wgslsmith_add_u32(~arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 0u, 2407u) | vec3<u32>(1u, arg_1.b, 1u), vec3<u32>(0u, arg_1.b, 13176u) << (vec3<u32>(0u, arg_1.b, arg_1.b) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)) * _wgslsmith_f_op_f32(step(arg_0.x, 1170f))))) * _wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)))));
    return _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.c, u_input.c), ~(~1u >> (~u_input.c % 32u)), u_input.c) << (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~u_input.c, func_2(Struct_1(vec2<bool>(false, true)), Struct_5(vec4<i32>(u_input.a.x, 2147483647i, 1i, 0i), u_input.c, u_input.b)))), (vec2<u32>(u_input.c, u_input.c) & ~vec2<u32>(201u, 15921u)) << (~max(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(47863u, u_input.c, u_input.c), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (vec3<u32>(u_input.c, 46582u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, 29323u, u_input.c))), select((vec3<u32>(u_input.c, u_input.c, 0u) >> (vec3<u32>(u_input.c, u_input.c, 9095u) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 47020u), vec3<u32>(0u, 8011u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c)) % vec3<u32>(32u)), vec3<u32>(u_input.c, func_1(vec2<f32>(-980f, -1339f)), u_input.c), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), true))), max(~vec3<u32>(56277u, u_input.c, 1u), ~vec3<u32>(u_input.c, u_input.c, 0u) | vec3<u32>(u_input.c, u_input.c, 0u)) & _wgslsmith_div_vec3_u32(~(vec3<u32>(26643u, 4294967295u, u_input.c) & vec3<u32>(30190u, u_input.c, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 98074u)), ~(~vec3<u32>(abs(u_input.c), reverseBits(17984u), ~0u)));
    let var_1 = Struct_2(u_input.b.yyw);
    var var_2 = !vec2<bool>(true, select(true, u_input.c != 1u, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))));
    var_2 = vec2<bool>(false, true);
    var var_3 = firstTrailingBit(vec2<i32>(2147483647i, countOneBits(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1113f - -1545f) + -2091f), _wgslsmith_div_f32(-142f, -400f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-239f, -1846f), _wgslsmith_div_vec2_f32(vec2<f32>(-1116f, -1000f), vec2<f32>(-414f, -198f)), all(vec4<bool>(false, false, var_2.x, false)))))), 0u);
}

