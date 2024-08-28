struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(2057f));
    let var_1 = u_input.a;
    var_0 = 843f;
    var_0 = -1000f;
    return -728f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = Struct_3(-931f, arg_1.c.xxy);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), select(!vec3<bool>(var_0.b.x, !arg_0.c.x, true), vec3<bool>(!any(arg_0.c), arg_0.c.x, true), vec3<bool>(all(!vec2<bool>(var_0.b.x, false)), false, arg_0.c.x)));
    return arg_1.a;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: bool) -> vec4<bool> {
    let var_0 = vec4<bool>(false, !arg_2, !any(vec2<bool>(arg_2 | arg_2, true)), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(257f - -153f) * _wgslsmith_f_op_f32(f32(-1f) * -109f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(454f)) - _wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(max(827f, 782f))))), 722f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, 1144f) * vec4<f32>(-601f, -1000f, -529f, -348f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_div_f32(405f, 1000f), _wgslsmith_f_op_f32(var_1 - -1735f), _wgslsmith_f_op_f32(186f + var_1))))));
    var var_3 = arg_2;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(var_1 + var_2.x)), var_1, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(func_1(arg_2, arg_2, 0i, Struct_1(u_input.a, -2147483647i, vec4<bool>(arg_2, var_0.x, false, false), 72354u, vec2<bool>(false, arg_2))))), _wgslsmith_f_op_f32(ceil(-207f))))));
    return select(var_0, var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(false, any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_sub_i32(-2147483647i, ~u_input.b.x), Struct_1(1u, -max(u_input.b.x, u_input.b.x), vec4<bool>(true, any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, false, true)), true), _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.a), u_input.a ^ 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1980f) - 730f) - _wgslsmith_f_op_f32(1656f * -1495f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(610f, -656f, 2570f), vec3<f32>(2171f, 412f, var_0.x)) * vec3<f32>(-1508f, -250f, -1184f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -328f, -516f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-289f, -323f, 1000f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, 961f, -1000f)))));
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(func_2(Struct_1(u_input.a, -13859i, vec4<bool>(false, false, false, false), u_input.a, vec2<bool>(true, true)), Struct_1(4294967295u, u_input.b.x, vec4<bool>(true, false, false, false), 59977u, vec2<bool>(false, false)), u_input.b.x), 0u), u_input.a), u_input.b.x, vec4<bool>(select(select(var_1.x <= var_0.x, true, true), true, !(u_input.a <= 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.x)))) == _wgslsmith_f_op_f32(-var_0.x), u_input.b.x < -2147483647i, false), u_input.a, !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -783f))));
    var_2 = Struct_1(0u, -2147483647i ^ _wgslsmith_add_i32(~u_input.b.x, firstTrailingBit(var_2.b >> (var_2.d % 32u))), !func_3(u_input.a, min(~4294967295u, var_2.a ^ var_2.a), !(var_2.d <= var_2.a)), 4294967295u | var_2.d, select(vec2<bool>(any(var_2.c), all(vec2<bool>(var_2.c.x, var_2.e.x))), vec2<bool>(!var_2.e.x, !all(vec2<bool>(var_2.e.x, var_2.c.x))), !(!var_2.c.x)));
    var var_4 = u_input.b;
    var var_5 = Struct_2(1u & (~var_2.a >> (35008u % 32u)));
    let var_6 = Struct_4(Struct_2(1u | ~abs(var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(trunc(-627f)))))), vec2<i32>(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(u_input.b.x, -2147483647i, 2147483647i), vec3<i32>(var_4.x, var_2.b, var_4.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_4.x, var_4.x), vec3<i32>(u_input.b.x, -27039i, var_4.x)), vec3<i32>(var_2.b, var_2.b, 0i))), _wgslsmith_mod_i32(-var_2.b, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

