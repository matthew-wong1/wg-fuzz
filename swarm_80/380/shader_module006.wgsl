struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    return select(select(!vec4<bool>(arg_0 != true, all(vec2<bool>(true, false)), arg_0 || false, 9678i != u_input.c.x), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, any(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), false))), true && (all(vec3<bool>(true, true, true)) & true)), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1226f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(639f, -2523f)), 1898f), all(vec2<bool>(arg_0, false)) | true, true, select(true, arg_0, arg_0)), !vec4<bool>(arg_0, true, true, !(u_input.d.x == u_input.d.x)));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    let var_0 = select(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0.x), !func_3(false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1362f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(284f)), _wgslsmith_f_op_f32(f32(-1f) * -1173f), !arg_0.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2574f, 1225f, -936f, 817f), vec4<f32>(-1355f, 238f, 345f, 2124f), false)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-759f, -241f, 831f, -143f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1831f, -1083f, -417f))))), u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))))), countOneBits(u_input.b));
    let var_2 = var_1;
    let var_3 = 1u ^ ((min(7018u, 1u) ^ (select(u_input.d.x, 1u, false) << (1u % 32u))) ^ ~firstTrailingBit(var_2.c.x));
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d, _wgslsmith_div_f32(var_1.d, _wgslsmith_div_f32(1000f, var_1.a.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.x)), var_2.d)), var_2.b, ~(~(abs(vec2<u32>(var_3, 59150u)) ^ firstLeadingBit(var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(232f))), u_input.c);
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_i32(firstLeadingBit(-(~u_input.b.x)) ^ arg_2.x, firstTrailingBit(u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var_0 = -12329i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, false, false), arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(527f)), _wgslsmith_f_op_f32(abs(-167f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) + _wgslsmith_f_op_f32(trunc(-332f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-398f)), _wgslsmith_div_f32(-607f, arg_1)))))));
    var var_3 = 1u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1680f))))) - _wgslsmith_f_op_f32(step(-1230f, _wgslsmith_f_op_f32(f32(-1f) * -460f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, -715f, vec2<i32>(max(u_input.c.x, 45188i), -5414i))))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(951f, _wgslsmith_f_op_f32(max(var_0, 707f))) + var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1000f, -394f)), var_0, var_0, 1000f))), ~u_input.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_1(true, var_0, u_input.a.yx))))), u_input.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 210f)))));
    var_2 = vec4<f32>(var_0, _wgslsmith_f_op_f32(var_1.b.x * 1f), -235f, _wgslsmith_f_op_f32(-var_0));
    var var_3 = firstTrailingBit(~(~_wgslsmith_div_vec3_u32(vec3<u32>(3804u, 4121u, var_1.c.x), vec3<u32>(var_1.c.x, 92226u, 4294967295u)))) & (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 1u, var_1.c.x), vec3<u32>(u_input.d.x, 26723u, 0u))) << (vec3<u32>(~4294967295u, abs(u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(26369u, u_input.d.x, var_1.c.x), vec3<u32>(23003u, 75088u, u_input.d.x)) << (~56342u % 32u)) % vec3<u32>(32u)));
    var_3 = ~(~(~vec3<u32>(abs(var_3.x), ~var_1.c.x, _wgslsmith_add_u32(1u, var_3.x))));
    var_3 = ~vec3<u32>(91808u & _wgslsmith_mult_u32(var_1.c.x, var_1.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.c.x), ~vec2<u32>(100151u, u_input.d.x)), max(firstLeadingBit(~61773u), ~firstLeadingBit(16290u)));
    var var_4 = vec3<bool>(u_input.d.x <= var_3.x, 40539u >= u_input.d.x, any(func_3(any(vec2<bool>(false, true))).ww));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, var_4.x))), _wgslsmith_f_op_f32(floor(var_1.a.x)), var_2.x))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + var_2.x), _wgslsmith_f_op_f32(floor(var_1.d)), all(vec3<bool>(false, var_4.x, var_4.x)))), 2142f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -738f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, var_0, 102f, -543f)) * _wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_f_op_vec4_f32(ceil(var_1.b)), (-23757i != _wgslsmith_clamp_i32(-1i, -34032i, 806i)) && true)));
    let x = u_input.a;
    s_output = StorageBuffer(-941f, max(-(vec2<i32>(0i, 2147483647i) >> (vec2<u32>(var_1.c.x, 1u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.c.x)), select(var_1.e.wy, u_input.c.wy, true))) >> (~(~(var_3.yz ^ u_input.d)) % vec2<u32>(32u)));
}

