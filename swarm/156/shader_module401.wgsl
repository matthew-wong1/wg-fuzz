struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 9>;

var<private> global2: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: vec2<i32> = vec2<i32>(35496i, 1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.yx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -1776f))) + vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-243f)) * 2321f))), !(!select(select(global2[_wgslsmith_index_u32(24428u, 30u)], arg_0.b.yw, arg_0.e), select(arg_0.b.xw, arg_0.b.yw, true), true))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))))));
    global2 = array<vec2<bool>, 30>();
    var var_1 = arg_1 << ((11124u | u_input.c.x) % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.b, -1925i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(13218u, 9u)], 3183i), true);
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(abs(arg_0.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x))), var_2.a.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<i32>(7109i, _wgslsmith_div_i32(min(global3.x, global3.x), max(_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_div_i32(u_input.b, -38136i)), 16854i)), global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1237f, _wgslsmith_div_f32(878f, _wgslsmith_f_op_f32(-1073f - -808f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f + -292f))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(-551f, 1355f, -959f), vec4<bool>(true, true, true, true), reverseBits(-24020i), -var_0.x, true), global3.x))), vec4<bool>(true, !(!all(vec3<bool>(true, false, true))), select(select(false, true, false) | true, false, !select(true, false, false)), u_input.c.x <= min(21091u, u_input.c.x)), ~_wgslsmith_sub_i32(~11346i, var_0.x), u_input.b, !any(vec4<bool>(true, true, true, true)));
    var var_2 = min(_wgslsmith_dot_vec2_u32(min(countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec2_u32(u_input.c << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(0u, u_input.c.x) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), abs(u_input.c))) | u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), ~vec3<u32>(2854u, 12719u, 1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), !var_1.b, var_1.c, 1i, _wgslsmith_mult_i32(u_input.a, u_input.a) >= -13423i);
    return _wgslsmith_sub_vec2_u32(vec2<u32>(abs(_wgslsmith_sub_u32(10756u, u_input.c.x)), ~(~u_input.c.x)), vec2<u32>(min(~u_input.c.x, ~u_input.c.x), ~u_input.c.x)) ^ vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(128329u, 4294967295u), u_input.c.x)), u_input.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    let var_0 = ~(~func_2());
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    let var_1 = vec4<bool>(select(all(vec4<bool>(false, arg_0.b.x, false, arg_0.e)), false, !arg_0.b.x) || all(arg_0.b), all(!select(vec3<bool>(true, arg_0.b.x, false), !vec3<bool>(arg_0.e, arg_0.e, true), any(arg_0.b))), arg_0.e, arg_0.b.x);
    let var_2 = arg_0;
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(!func_1(Struct_1(vec3<f32>(-1433f, -209f, -543f), vec4<bool>(true, true, false, true), 31271i, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], false), vec4<f32>(303f, -885f, -251f, -1082f), vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), true), vec3<bool>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global3.x, 24117i), u_input.b, 14823i) <= (_wgslsmith_add_i32(8699i, 1i) >> ((758u ^ u_input.c.x) % 32u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(540f)) - _wgslsmith_f_op_f32(211f + -1622f)) == -937f), !(u_input.b <= u_input.a));
    global1 = array<i32, 9>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(242f + 268f), _wgslsmith_f_op_f32(825f + 125f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1960f, 870f, -404f), vec3<f32>(1000f, 466f, -1702f)))), vec4<bool>(var_0.x, any(!(!var_0.yz)), true, var_0.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(34173i, global3.x), ~u_input.b), -1391i) << ((reverseBits(~u_input.c.x) | (u_input.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1969u, 1u, u_input.c.x, 33347u), vec4<u32>(0u, 3730u, 6984u, 0u)) % 32u))) % 32u), global3.x, all(vec3<bool>(!func_1(Struct_1(vec3<f32>(-210f, -698f, -2289f), vec4<bool>(var_0.x, true, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.c.x, 9u)], -56273i, true), vec4<f32>(316f, -514f, 491f, 2077f), vec4<u32>(5239u, 4294967295u, 0u, u_input.c.x)), true, true & var_0.x)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x + 667f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2108f)), _wgslsmith_f_op_f32(abs(var_1.a.x))));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(var_3.d) | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, var_1.c, -1i) ^ vec4<i32>(global3.x, var_1.d, var_1.c, var_3.d), -vec4<i32>(global1[_wgslsmith_index_u32(80783u, 9u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 0i)), vec4<i32>(~0i, _wgslsmith_sub_i32(0i, 0i), _wgslsmith_mod_i32(var_3.d, var_3.c), 66672i)), -45024i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, var_1.a.x, 961f, 163f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(max(var_1.a.x, 346f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-533f, var_1.a.x, false)), _wgslsmith_f_op_f32(-608f - -1084f)), 1760f)));
}

