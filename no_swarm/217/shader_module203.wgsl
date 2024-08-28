struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(~(-1i), ~(-23300i)), abs(max(578i, -60031i)), max(1i, -1i), ~(-6097i)), vec4<i32>(_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(-20456i, 26430i)), -47042i, 1i, ~_wgslsmith_add_i32(0i, -31991i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-955f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + arg_3.x)) * arg_3.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, arg_3.x))), _wgslsmith_f_op_f32(arg_3.x - arg_3.x)))));
    global0 = array<vec4<u32>, 2>();
    var var_2 = Struct_4(arg_0 & any(select(!vec4<bool>(true, false, false, arg_0), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(true, true, arg_0, arg_0)), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, true, arg_0, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(arg_3.x - -219f), _wgslsmith_f_op_f32(2434f * arg_3.x), 118f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.x, arg_3.x, -107f, arg_3.x))) - vec4<f32>(232f, -885f, arg_3.x, arg_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) * vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1015f)))) * vec4<f32>(-2238f, 1000f, -850f, _wgslsmith_f_op_f32(-arg_3.x))), any(select(!vec3<bool>(true, arg_0, false), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_0), true), select(vec3<bool>(arg_0, true, false), vec3<bool>(false, true, true), arg_0))))), countOneBits(~var_0.a.yzy), Struct_1(125f, 50735u & (4294967295u >> (~u_input.a % 32u))), 1i);
    let var_3 = select(select(vec2<bool>(var_2.a, var_2.a), select(!vec2<bool>(var_2.a, arg_0), !select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), var_2.a), select(select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, false), vec2<bool>(true, true)), !vec2<bool>(var_2.a, true), var_2.a)), select(0u > arg_2.x, arg_0, _wgslsmith_f_op_f32(-arg_3.x) != _wgslsmith_f_op_f32(floor(-112f)))), vec2<bool>(true, true), vec2<bool>(false, !arg_0));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> Struct_4 {
    global0 = array<vec4<u32>, 2>();
    let var_0 = ~abs(1i);
    var var_1 = _wgslsmith_mult_i32(-abs(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0, var_0), -3212i)), ~(-1i >> (u_input.a % 32u)));
    var var_2 = select(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(~73218u, reverseBits(24228u)), firstTrailingBit(1u)), ~1u, (!any(vec3<bool>(true, true, false)) && true) == (var_0 >= _wgslsmith_clamp_i32(0i, var_0, abs(var_0))));
    var var_3 = ~reverseBits(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 46806i, -876i), vec3<i32>(65782i, -20442i, var_0)), var_0 ^ min(var_0, 16305i), var_0));
    return Struct_4(all(!vec3<bool>(true, func_3(false, 0u, arg_1.xy, vec2<f32>(-187f, -1396f)), select(false, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(573f, arg_2, arg_2, 1451f) - vec4<f32>(arg_0, arg_0, 530f, arg_2)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1395f, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(718f, -1100f, 584f, arg_0), vec4<f32>(-1076f, arg_2, arg_2, arg_0))), vec4<bool>(true, true, true, true))), select(true, true, true) | all(vec3<bool>(false, false, false)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-731f * arg_0), arg_2, _wgslsmith_f_op_f32(floor(-1303f)), -1000f))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, -9275i, var_0), vec3<i32>(var_3.x, var_0, 66330i)), -(~vec3<i32>(-1i, -1881i, -433i)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-78336i, var_0, -6056i), vec3<i32>(23021i, var_3.x, 0i)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 384f)), countOneBits(23582u) < _wgslsmith_mult_u32(14764u, arg_1.x))), _wgslsmith_mod_u32(arg_1.x, _wgslsmith_mult_u32(arg_1.x & u_input.b, abs(u_input.b)))), 3903i);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> Struct_4 {
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -1730f), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~8105u), 2u)] << (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u)) ^ select(64272u, _wgslsmith_mult_u32(arg_0, u_input.b), true), 2u)] % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1227f * 630f), _wgslsmith_f_op_f32(101f * 2538f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -381f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 2>();
    var var_0 = func_1(u_input.b, vec3<bool>((4294967295u | u_input.b) >= ~0u, false, true), -34114i);
    var_0 = Struct_4(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2345f, _wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -312f), 1475f), vec4<f32>(_wgslsmith_f_op_f32(407f + 1307f), var_0.d.a, _wgslsmith_f_op_f32(step(475f, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(0i, var_0.c.x), _wgslsmith_div_i32(15994i, var_0.c.x), abs(var_0.e)), var_0.c), ~vec3<i32>(7437i, _wgslsmith_sub_i32(4240i, var_0.e), var_0.e)), func_1(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(0u, 27600u)), abs(~u_input.b)), !(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, true), vec3<bool>(true, var_0.a, var_0.a))), firstLeadingBit(var_0.e)).d, 1i);
    var var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -2226f), _wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(9499u, 2u)], _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.b, 2u)] | vec4<u32>(11969u, u_input.b, 0u, u_input.b), vec4<u32>(var_0.d.b, 1u, 0u, 58235u)), vec4<u32>(~u_input.b, 1u, abs(var_0.d.b), var_0.d.b << (u_input.a % 32u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a + var_0.b.x) + 1f)), -1486f)));
    var var_2 = -11797i;
    var var_3 = Struct_3(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.e, var_1.e, 0i, var_1.e)), vec4<i32>(_wgslsmith_sub_i32(var_1.c.x, var_0.c.x), _wgslsmith_mult_i32(var_1.c.x, var_1.e), abs(var_0.c.x), _wgslsmith_mod_i32(var_0.c.x, 2147483647i))) >> (max(vec4<u32>(abs(0u), ~u_input.b, 30088u, _wgslsmith_mod_u32(1u, 1u)), global0[_wgslsmith_index_u32(4294967295u, 2u)]) % vec4<u32>(32u)));
    let var_4 = vec4<u32>(11161u, var_1.d.b, ~_wgslsmith_mod_u32(4294967295u << (~var_0.d.b % 32u), var_1.d.b), _wgslsmith_div_u32(_wgslsmith_div_u32(~(~var_0.d.b), ~(~u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.d.b, abs(1u)), abs(vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(51711u, var_0.d.b) % vec2<u32>(32u))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(step(-497f, var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-523f)))) + var_0.b.xxx), vec3<f32>(var_1.d.a, _wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(764f, var_4, var_0.b.x).d.a))))));
    let var_6 = all(select(vec2<bool>(var_0.a || var_0.a, (var_3.a.x == var_0.e) || false), vec2<bool>(false, var_0.a), vec2<bool>(select(var_1.a, false, true) || (var_0.a || var_0.a), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_0.b.x)), -624f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f + 664f))), select(~countOneBits(vec4<u32>(37131u, var_1.d.b, var_4.x, 0u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(22704u, 4294967295u), var_4.xz), ~vec2<u32>(var_0.d.b, 0u)), 2u)], !(!var_0.a)), -307f).d.a);
}

