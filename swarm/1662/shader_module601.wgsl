struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    let var_0 = Struct_2(~countOneBits(~vec4<i32>(arg_0, 2147483647i, arg_0, arg_0)) << (~(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), arg_2 == 1525f, _wgslsmith_div_i32(2147483647i, arg_0));
    var var_1 = -837f;
    var_1 = _wgslsmith_f_op_f32(trunc(arg_2));
    var var_2 = select(vec2<bool>((637u << (countOneBits(u_input.a.x) % 32u)) == u_input.a.x, true), !arg_1.xx, !select(vec2<bool>(!arg_1.x, var_0.b), select(!arg_1.ww, select(vec2<bool>(var_0.b, false), arg_1.yx, arg_1.xw), !arg_1.x), vec2<bool>(any(arg_1), true)));
    let var_3 = false;
    return ~(~var_0.a.wx);
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = 1i;
    let var_1 = 4294967295u;
    let var_2 = Struct_4(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, _wgslsmith_div_u32(select(4294967295u, u_input.a.x, false), 1u & arg_0), arg_0), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 1u, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_1, var_1), vec3<u32>(u_input.a.x, arg_0, u_input.a.x))), vec3<u32>(~0u, 1u, ~var_1))));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1895f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-706f, -265f)))))), vec2<f32>(235f, 1010f));
    var var_4 = vec3<bool>(var_0 > (_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_0), vec3<i32>(-15056i, var_0, var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(-65921i, 2147483647i, var_0), vec3<i32>(var_0, -6761i, -14215i)), -var_0) | 0i), false, false);
    return abs(select(vec2<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0), vec2<i32>(-24533i, var_0))), -(~var_0)), _wgslsmith_div_vec2_i32(-func_3(var_0, vec4<bool>(false, var_4.x, false, true), -1125f), ~(~vec2<i32>(29215i, 2147483647i))), var_4.x));
}

fn func_1() -> Struct_1 {
    var var_0 = 4294967295u;
    var_0 = ~17381u;
    var var_1 = ~(-2147483647i);
    let var_2 = func_2(countOneBits(~u_input.a.x));
    var_1 = var_2.x;
    return Struct_1(true, firstTrailingBit(u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(1109f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1244f - 1558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(594f, 790f)))), _wgslsmith_f_op_f32(abs(-1286f)), -2191f), _wgslsmith_sub_vec2_u32(max(u_input.a & max(u_input.a, u_input.a), ~u_input.a), u_input.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = !select(select(select(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), select(vec4<bool>(true, true, arg_1.a, arg_1.a), vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, arg_1.a, false, false)), !arg_1.a), select(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, true, arg_1.a, false), arg_1.a), vec4<bool>(true, true, true, true)), true), select(!select(vec4<bool>(false, arg_1.a, true, true), vec4<bool>(arg_1.a, true, true, false), arg_1.a), select(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a), vec4<bool>(false, arg_1.a, arg_1.a, true)), !vec4<bool>(true, arg_1.a, true, arg_1.a), arg_1.a), true), true);
    let var_1 = select(min(-(~abs(1i)), 23766i), ~(~_wgslsmith_clamp_i32(-2147483647i, 38183i, -57212i) << (38909u % 32u)), false);
    var var_2 = Struct_4(~vec3<u32>(_wgslsmith_mod_u32(arg_1.b, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~(~46418u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.b, 39938u, u_input.a.x) << (vec4<u32>(arg_1.b, arg_1.d.x, u_input.a.x, arg_1.d.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, arg_1.b, u_input.a.x, 1u))));
    var var_3 = ~_wgslsmith_mult_vec4_u32(abs(abs(max(vec4<u32>(6446u, 0u, 8806u, 12452u), vec4<u32>(0u, arg_1.d.x, var_2.a.x, u_input.a.x)))), ~vec4<u32>(~arg_1.d.x, 56273u, ~1u, arg_1.d.x));
    var var_4 = (1134f != _wgslsmith_f_op_f32(arg_1.c.x + -1000f)) == true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(~(-max(1i, 1374i)), abs(_wgslsmith_mod_i32(~1i, _wgslsmith_mod_i32(-1i, 8242i))), false), 23580i);
    var var_1 = var_0;
    var var_2 = vec3<bool>(false | (_wgslsmith_f_op_f32(554f + _wgslsmith_f_op_f32(167f * -1000f)) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(181f))))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec4<bool>(false, true, true, true))), vec3<bool>(true, u_input.a.x > u_input.a.x, false))), !(abs(var_0) >= _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0))) != (func_4(vec4<f32>(-1024f, 258f, 216f, 914f), func_1(), _wgslsmith_f_op_f32(floor(1000f))) | false));
    var var_3 = !select(!var_2.yx, vec2<bool>(var_2.x, true), !(!var_2.zx));
    let var_4 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(593f, 272f, 907f, -332f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-829f, -1075f, -1099f, 409f))), true)) + vec4<f32>(_wgslsmith_div_f32(2345f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(408f))), _wgslsmith_f_op_f32(-119f + _wgslsmith_f_op_f32(-715f - 1192f)), -422f)), _wgslsmith_f_op_f32(-1000f * -1826f));
}

