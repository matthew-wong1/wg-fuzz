struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    var var_0 = select(vec4<bool>(true, arg_0, !select(true, true || arg_0, arg_1.x != -1410f), all(!(!global0[_wgslsmith_index_u32(1u, 30u)]))), !select(!vec4<bool>(false, arg_0, arg_0, arg_0), select(vec4<bool>(true, arg_0, false, true), vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, true, arg_0, arg_0))), true), any(select(select(vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(u_input.e, 30u)], true), select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, true, arg_0), false), any(vec2<bool>(arg_0, arg_0)))));
    var_0 = select(select(select(vec4<bool>(true || var_0.x, false, true, false || arg_0), !(!vec4<bool>(arg_0, arg_0, true, true)), !var_0.x), !(!select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, arg_0, true, var_0.x))), select(select(!vec4<bool>(var_0.x, false, arg_0, true), select(vec4<bool>(arg_0, arg_0, var_0.x, false), vec4<bool>(var_0.x, arg_0, var_0.x, arg_0), vec4<bool>(var_0.x, false, true, false)), !vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(var_0.x, true, arg_0, u_input.c > u_input.c), select(vec4<bool>(arg_0, var_0.x, true, true), vec4<bool>(false, arg_0, true, false), select(vec4<bool>(arg_0, var_0.x, false, arg_0), vec4<bool>(arg_0, false, var_0.x, false), vec4<bool>(true, true, false, false))))), select(select(!(!vec4<bool>(arg_0, arg_0, false, var_0.x)), !(!vec4<bool>(arg_0, false, var_0.x, arg_0)), !vec4<bool>(true, true, var_0.x, false)), vec4<bool>(select(true, var_0.x, false & arg_0), var_0.x, var_0.x, !any(vec4<bool>(var_0.x, arg_0, true, arg_0))), !(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - arg_1.x)));
    var_0 = !(!vec4<bool>(arg_0, !(arg_0 | true), false, true && !arg_0));
    var_0 = select(!select(vec4<bool>(var_0.x, !arg_0, false, select(false, arg_0, arg_0)), !select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, false, true, true), false), all(var_0.xz)), !(!select(vec4<bool>(var_0.x, false, arg_0, arg_0), !vec4<bool>(true, false, arg_0, arg_0), select(vec4<bool>(var_0.x, true, arg_0, true), vec4<bool>(var_0.x, arg_0, var_0.x, var_0.x), vec4<bool>(false, arg_0, arg_0, arg_0)))), vec4<bool>(true, true, var_0.x, false));
    var var_1 = vec3<i32>(countOneBits(u_input.a.x), (i32(-1i) * -2147483647i) | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.b, 2147483647i), u_input.b), u_input.d.x);
    return min(var_1.x, u_input.a.x);
}

fn func_2() -> f32 {
    global0 = array<vec3<bool>, 30>();
    var var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, ~(~u_input.c), i32(-1i) * -2147483647i), vec3<i32>(58720i, ~u_input.d.x ^ ~2147483647i, _wgslsmith_mult_i32(func_3(false, vec3<f32>(3122f, 347f, 1000f)), u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)));
    var_0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.b, -13087i, -1i)), -vec3<i32>(u_input.d.x, 20282i, -41971i) & _wgslsmith_mod_vec3_i32(vec3<i32>(40244i, var_0.x, -14704i), vec3<i32>(-17238i, 17590i, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1050f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(select(-131f, -767f, any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-741f, _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, 1188f, false))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.zy, vec2<f32>(990f, -1050f)))))));
    var var_1 = ~(~firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(50914u, 0u) << (vec2<u32>(5037u, u_input.e) % vec2<u32>(32u)), ~vec2<u32>(u_input.e, 58431u))));
    var_1 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(_wgslsmith_sub_u32(u_input.e, 1u), select(u_input.e, 8126u, false))), reverseBits(~(abs(vec2<u32>(u_input.e, u_input.e)) & select(vec2<u32>(u_input.e, 1u), vec2<u32>(1u, 33199u), vec2<bool>(false, true)))));
    let var_2 = abs(1i);
    var_1 = _wgslsmith_add_vec2_u32(abs(_wgslsmith_sub_vec2_u32(~(vec2<u32>(1u, var_1.x) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u))), ~(vec2<u32>(29204u, 101280u) >> (vec2<u32>(u_input.e, var_1.x) % vec2<u32>(32u))))), vec2<u32>(11371u, u_input.e));
    return _wgslsmith_mult_u32(~4294967295u, ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(1004f)), _wgslsmith_div_f32(694f, 192f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(818f, -684f) + _wgslsmith_div_vec2_f32(vec2<f32>(-690f, -888f), vec2<f32>(-161f, 545f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~func_1(vec3<f32>(245f, var_0.x, 1146f))), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.e, 1u), ~u_input.e) << ((u_input.e << ((26985u >> (0u % 32u)) % 32u)) % 32u), select(u_input.e, u_input.e, true & all(vec4<bool>(false, true, true, true))), 13807u), vec4<u32>(~(~u_input.e), select(34231u, u_input.e << (u_input.e % 32u), true), _wgslsmith_clamp_u32(u_input.e, countOneBits(26807u), u_input.e ^ u_input.e), abs(u_input.e)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(max(32567u, 4294967295u), _wgslsmith_sub_u32(3336u, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, 4294967295u), vec3<u32>(90747u, u_input.e, u_input.e)), _wgslsmith_add_u32(20664u, 21288u)), countOneBits(vec4<u32>(23729u, 4294967295u, 108151u, u_input.e)) >> (vec4<u32>(51920u, u_input.e, 4294967295u, u_input.e) % vec4<u32>(32u))), ~(~(countOneBits(vec4<u32>(13749u, u_input.e, 10546u, 1u)) ^ vec4<u32>(8835u, u_input.e, 39151u, u_input.e))));
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1756f, _wgslsmith_f_op_f32(var_0.x - -1899f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(floor(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, -2016f)))), 1210f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-848f, 562f))), min(~(-2147483647i), 55989i), 0i, var_1 & ~abs(select(vec4<u32>(10706u, 4244u, var_1.x, 0u), vec4<u32>(2668u, u_input.e, u_input.e, u_input.e), true)), ~(~var_1.zy));
}

