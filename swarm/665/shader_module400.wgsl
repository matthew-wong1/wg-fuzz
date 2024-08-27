struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    var var_0 = -1i;
    global0 = (0i >> (~(~u_input.e.x) % 32u)) >> (~20424u % 32u);
    let var_1 = !(true & (_wgslsmith_f_op_f32(-3001f * _wgslsmith_f_op_f32(floor(1226f))) < 1849f));
    let var_2 = min(select(u_input.b, max(max(u_input.b, u_input.b) | u_input.b, -_wgslsmith_add_vec4_i32(vec4<i32>(-35144i, u_input.a, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, 0i, u_input.c.x, 38889i))), !vec4<bool>(true, true, true, any(vec4<bool>(false, var_1, true, var_1)))), ~(~u_input.b));
    global0 = -countOneBits(var_2.x);
    return ~vec3<u32>(~u_input.d.x, 4865u, arg_0 << (firstLeadingBit(u_input.d.x) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec3<u32> {
    global0 = -25760i;
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(_wgslsmith_f_op_f32(abs(-625f)), _wgslsmith_div_f32(-1282f, arg_1.x)), 1i);
    var_0 = Struct_1(vec4<bool>(!var_0.a.x, var_0.a.x, true, any(!(!var_0.a.yx))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1149f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(1094f * 1027f)))), ~_wgslsmith_sub_i32(u_input.c.x << (~74844u % 32u), ~(-1i) >> (~u_input.d.x % 32u)));
    global0 = _wgslsmith_mult_i32(abs(-2147483647i), u_input.b.x);
    let var_1 = false;
    return ~reverseBits(vec3<u32>(firstLeadingBit(u_input.d.x), 4294967295u, ~35084u) & func_3(arg_0));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = select(u_input.d.wxx, func_2(u_input.e.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-230f, 899f, -769f)))) | func_3(30694u), select(vec3<bool>(false, true, arg_0), vec3<bool>(any(vec3<bool>(arg_0, true, arg_0)) != true, true, arg_0), !arg_0));
    global0 = 22761i >> (u_input.e.x % 32u);
    let var_1 = !(!select(select(!vec4<bool>(true, arg_0, true, true), vec4<bool>(true, false, true, arg_0), arg_0), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, false, arg_0, false)), !select(vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0))));
    global0 = u_input.b.x;
    var var_2 = Struct_1(var_1, vec2<f32>(_wgslsmith_f_op_f32(-2043f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(151f + -197f) + -307f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-158f, 1214f)) - 500f))), 2147483647i);
    return select(vec3<bool>(false, -u_input.b.x == -2147483647i, arg_0), vec3<bool>(var_1.x, var_1.x, !arg_0), !(!(select(false, false, var_1.x) == any(vec4<bool>(var_2.a.x, false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(true, false, true)), true), func_1(!(u_input.d.x <= 4294967295u)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), func_1(all(func_1(true))), !(!func_1(true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1758f, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(58813i, 22609i)) << (~u_input.d.x % 32u), _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(u_input.b.x, -1i), (2310i >> (u_input.d.x % 32u)) >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 67021u, u_input.e.x, u_input.d.x)) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, 2147483647i, 11215i), u_input.b.xxz))));
}

