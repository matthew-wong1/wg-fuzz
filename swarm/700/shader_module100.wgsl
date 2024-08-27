struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(445f, _wgslsmith_f_op_f32(899f + -1805f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2021f + -565f), _wgslsmith_f_op_f32(-1005f + 627f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, 1213f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1278f, 476f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(474f, -2511f) + vec2<f32>(962f, 2701f)))))));
    let var_1 = vec4<bool>(any(vec3<bool>(true, true, true)) && true, true, all(!vec4<bool>(any(vec3<bool>(false, false, false)), true, true, 2147483647i < arg_0)), all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x))), -972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x))))));
    let var_3 = Struct_1(!var_1.xw, _wgslsmith_sub_vec3_i32(~(-abs(vec3<i32>(-65181i, 3642i, arg_0))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 0i, arg_0), -vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))), select(select(select(!var_1, select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1, var_1.x), select(var_1, var_1, var_1)), var_1, !vec4<bool>(var_1.x, var_1.x, false, false)), var_1, true));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1172f, 867f, 1000f)), vec3<f32>(-1768f, -379f, -308f)))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2448f + var_0.x) - var_0.x), var_2.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1272f, var_2.x, -1182f) * vec3<f32>(var_2.x, var_2.x, var_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(474f, -1844f, 769f), vec3<f32>(1018f, 1323f, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_0.x, -2180f), vec3<f32>(var_2.x, -608f, var_2.x))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -869f))))))));
    return ~24209u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 111920u, 0u) >> (0u % 32u), func_3(u_input.a.x)), ~vec2<u32>(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_mult_u32(0u, 135635u)), global0[_wgslsmith_index_u32(max(~reverseBits(102068u), countOneBits(~0u)), 2u)]) ^ vec2<u32>(countOneBits(~(~6154u)), ~_wgslsmith_mod_u32(abs(4294967295u), 1u));
    let var_1 = 74289u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1027f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x >= _wgslsmith_f_op_f32(step(1308f, arg_1.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1905f)));
    let var_3 = Struct_1(!select(select(!vec2<bool>(arg_0.c.x, false), select(vec2<bool>(false, true), arg_0.a, true), false), select(select(arg_0.a, vec2<bool>(false, arg_2), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(arg_2, false), false), select(false, arg_2, arg_0.c.x)), !arg_2), abs(arg_0.b | abs(-arg_0.b)), vec4<bool>(any(select(select(arg_0.c.xzy, vec3<bool>(false, false, arg_0.c.x), arg_2), !vec3<bool>(true, arg_0.a.x, true), arg_0.c.x)), all(vec4<bool>(true, select(true, false, arg_2), any(arg_0.c.zww), arg_0.a.x && true)), !(_wgslsmith_f_op_f32(max(1000f, arg_1.x)) > 1021f), select(true, arg_2, true)));
    global0 = array<vec2<u32>, 2>();
    return 502f;
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    global0 = array<vec2<u32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, 11422i), vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, 770f) + vec2<f32>(-180f, 248f)), -1i < u_input.a.x)), _wgslsmith_div_f32(388f, 429f)))) * 558f);
    let var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(func_2(Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec4<bool>(false, false, true, false))), abs(vec3<i32>(-39471i, -2954i, -2147483647i)) | select(vec3<i32>(var_1, var_1, var_1) << (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u)), vec3<i32>(var_1, u_input.a.x, -2147483647i), true), select(vec4<bool>(true, true, true, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(252f * -1065f), _wgslsmith_f_op_f32(trunc(-656f))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(755f, 668f)))))), true));
    global0 = array<vec2<u32>, 2>();
    return !select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), false);
}

fn func_4(arg_0: vec4<bool>) -> StorageBuffer {
    global0 = array<vec2<u32>, 2>();
    global0 = array<vec2<u32>, 2>();
    var var_0 = arg_0.x;
    return StorageBuffer(select(vec4<i32>(~u_input.a.x, -8552i, max(5389i, u_input.a.x), u_input.a.x), abs(vec4<i32>(2147483647i, 13920i, u_input.a.x, -1i)) ^ vec4<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), ~1i, u_input.a.x), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1262f, -569f, 533f, 244f))))), -u_input.a.x, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), func_1(vec2<u32>(54465u, 1u)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))));
}

