struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(false, any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), any(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))), true, ~u_input.b.x < _wgslsmith_sub_u32(1u, 0u));
    global0 = 2358u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - 1562f), -1000f, _wgslsmith_f_op_f32(-1000f + -1000f), 3236f))));
    let var_2 = u_input.b.x;
    let var_3 = 1860f;
    return u_input.b.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = firstLeadingBit(97160u);
    let var_1 = Struct_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i << (func_3() % 32u), -2147483647i, _wgslsmith_mod_i32(-71746i, u_input.a.x >> (u_input.b.x % 32u))), 0i), vec4<bool>(true, false, !(~var_0 >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, var_0, var_0), u_input.b)), any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-543f, -1449f, -1000f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(618f, -221f, 1000f)))))), max(u_input.b.x, var_0));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c.x, -564f, false))), _wgslsmith_f_op_f32(select(1043f, var_1.c.x, !any(vec2<bool>(var_1.b.x, var_1.b.x)))))), -208f);
    var var_3 = min(2147483647i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(14849i, u_input.c, var_1.a, var_1.a), vec4<i32>(-25025i, -43382i, -6589i, u_input.d)), _wgslsmith_div_i32(-54287i, -31324i | u_input.d)) | u_input.d);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1422f)), 450f))), !var_1.b.x & false)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-801f, 328f)) - _wgslsmith_f_op_f32(select(-1351f, -1456f, var_1.b.x))), _wgslsmith_f_op_f32(-707f + _wgslsmith_f_op_f32(-var_2))) * var_1.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_2), var_2))))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> vec2<u32> {
    global0 = (u_input.b.x >> (reverseBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(11576u, arg_1.x), abs(1839u))) % 32u)) | ~4294967295u;
    let var_0 = Struct_2(-((15801i >> (firstLeadingBit(26913u) % 32u)) >> (_wgslsmith_mult_u32(countOneBits(arg_1.x), 4294967295u) % 32u)), !vec4<bool>(!all(vec2<bool>(true, true)), (-1i >= u_input.a.x) | true, any(vec2<bool>(true, true)), false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())))), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_1 | u_input.b, max(u_input.b, u_input.b))), arg_1.x & 2848u));
    global0 = ~((u_input.b.x | abs(~arg_1.x)) ^ min(firstLeadingBit(~39091u), 4825u));
    global0 = u_input.b.x;
    global0 = max(arg_1.x, 4294967295u);
    return ~countOneBits(vec2<u32>(24931u, ~(var_0.d ^ 18982u)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = u_input.b.x;
    global0 = ~(~arg_0);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1216f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(403f - 675f)))))));
    global0 = arg_0;
    var var_1 = ~u_input.d;
    return u_input.a.x > -36233i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x, select(vec4<bool>(func_4(~22555u, func_1(u_input.a.x, u_input.b), true, Struct_1(vec4<bool>(true, false, true, true), true)), false, true, true), !vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)), true, select(false, true, true)), false), vec3<f32>(258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-830f, -158f) * _wgslsmith_f_op_f32(1363f + -1909f))), 1211f), _wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), reverseBits(vec3<u32>(2148u, u_input.b.x, 1u))), ~(u_input.b.xzy << (u_input.b.wxx % vec3<u32>(32u))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), _wgslsmith_add_vec3_u32(u_input.b.yxx, _wgslsmith_mod_vec3_u32(~u_input.b.zyw, vec3<u32>(34016u, 8077u, u_input.b.x)))));
    let var_1 = Struct_1(!vec4<bool>(false, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x) <= _wgslsmith_f_op_f32(-var_0.c.x), 4294967295u >= var_0.d, false), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1915f)));
    let var_3 = ~vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, var_0.d), (115385u << (u_input.b.x % 32u)) | (1u >> (u_input.b.x % 32u)));
    var_0 = Struct_2(-2147483647i, !vec4<bool>(var_1.a.x, true, !var_1.a.x == var_0.b.x, all(vec4<bool>(true, var_1.a.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, var_0.c.x, var_0.c.x) * var_0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.c)) - var_0.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 211f, 734f)))))), _wgslsmith_f_op_vec3_f32(func_2()).x != var_0.c.x)), ~61439u);
    var_2 = var_0.c.x;
    var var_4 = Struct_1(select(var_1.a, !(!var_1.a), true), -107f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - 888f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + -1000f), _wgslsmith_div_f32(-364f, var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(abs(var_0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -2098f)))), ~abs(select(vec4<i32>(40120i, u_input.c, var_0.a, -1i), vec4<i32>(u_input.c, var_0.a, var_0.a, -1i), var_4.b) >> (vec4<u32>(u_input.b.x, var_0.d, var_0.d, 9147u) % vec4<u32>(32u))), u_input.b);
}

