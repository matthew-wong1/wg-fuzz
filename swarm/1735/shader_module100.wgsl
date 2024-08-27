struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_3(-1421f);
    let var_1 = false;
    let var_2 = arg_0.b;
    var var_3 = ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(arg_0.d.x, 22579u, 1u)) ^ select(arg_0.d.yxz, vec3<u32>(9445u, 0u, 1u), arg_0.a.yyx), arg_0.d.wwy) & arg_0.d.wyy;
    global0 = array<vec4<bool>, 3>();
    return reverseBits(vec4<u32>(_wgslsmith_add_u32(arg_0.d.x, arg_0.d.x), 38921u | _wgslsmith_add_u32(firstTrailingBit(arg_0.d.x), 1u), var_3.x, 3888u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ((_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -23633i), _wgslsmith_mult_i32(u_input.a, arg_0.b.x)) | u_input.a) > (abs(23994i) & u_input.a)) || true;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-342f * _wgslsmith_div_f32(681f, _wgslsmith_f_op_f32(step(915f, 1124f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -521f))), _wgslsmith_f_op_f32(ceil(684f))))), vec2<f32>(-2011f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f - 1156f))))));
    global0 = array<vec4<bool>, 3>();
    var var_2 = vec3<u32>(arg_0.d.x, 8899u, max(arg_0.d.x, func_1(arg_0).x));
    var_0 = arg_0.a.x;
    return ~(_wgslsmith_div_u32(1u, var_2.x) | _wgslsmith_dot_vec2_u32(select(vec2<u32>(41019u, 4294967295u), abs(arg_0.d.xx), arg_0.a.xx), min(vec2<u32>(arg_0.d.x, arg_0.d.x), var_2.xx)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = abs(-_wgslsmith_mult_i32(firstTrailingBit(u_input.a), u_input.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(arg_0.d, vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x))) - arg_0.d.x), 1548f)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1052f)) - _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_3 = vec4<u32>(~min(59531u, 1u), _wgslsmith_sub_u32(~func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 3u)], vec4<i32>(-80805i, u_input.a, u_input.a, 15364i), u_input.a, vec4<u32>(44706u, 24359u, 4294967295u, 1u), vec2<bool>(false, arg_0.b.x))) << (min(84721u, ~1u) % 32u), _wgslsmith_add_u32(firstTrailingBit(82113u), min(1u, 45463u)) << (1u % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~4665u, _wgslsmith_dot_vec4_u32(vec4<u32>(1803u, 13040u, 1u, 37632u), vec4<u32>(1u, 1u, 4294967295u, 46076u))), max(vec2<u32>(0u, 1u), ~vec2<u32>(56700u, 1u))), 56713u);
    global0 = array<vec4<bool>, 3>();
    return _wgslsmith_sub_u32(min(firstLeadingBit(var_3.x), var_3.x), ~min(1u ^ (32790u | var_3.x), _wgslsmith_mult_u32(4294967295u, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, 1751f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f - 1156f) + -873f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * 1000f))), true))));
    let var_1 = 0u;
    var var_2 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(true, true))));
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_1, var_1), 1u, var_1 | var_1, ~80917u), _wgslsmith_div_vec4_u32(vec4<u32>(104728u, var_1, var_1, var_1), vec4<u32>(var_1, 1u, var_1, var_1)) >> (func_1(Struct_1(global0[_wgslsmith_index_u32(1u, 3u)], vec4<i32>(u_input.a, -20189i, -30439i, u_input.a), u_input.a, vec4<u32>(4294967295u, 53497u, 1u, 1u), vec2<bool>(false, true))) % vec4<u32>(32u)))) | min(~(~4294967295u), 32697u);
    var var_4 = ~abs(vec3<u32>(var_1, 32475u, _wgslsmith_sub_u32(func_2(Struct_4(vec2<f32>(-1474f, 1059f), vec2<bool>(true, false), true, vec3<f32>(-1243f, -587f, -589f))), 8673u)));
    let var_5 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1637f, -1162f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), -116f)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), all(vec3<bool>(true, false, false))), vec2<bool>(true, select(false, true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), !(all(vec4<bool>(true, true, true, false)) || true), vec3<f32>(-342f, _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-982f + -2313f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d.x, -770f, var_5.d.x)), var_5.d, !(!var_5.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x)), _wgslsmith_f_op_f32(min(var_5.d.x, _wgslsmith_f_op_f32(sign(366f)))))), -u_input.a ^ 1i);
}

