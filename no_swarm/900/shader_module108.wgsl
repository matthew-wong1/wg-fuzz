struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 13>;

var<private> global2: vec3<f32> = vec3<f32>(-601f, -496f, -1845f);

var<private> global3: array<u32, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1391f, -2049f, 1730f)), _wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 851f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, arg_1.c.x, 1289f)))), all(vec4<bool>(true, select(true, true, true) || true, any(vec2<bool>(true, false)), arg_0.x))));
    let var_0 = ~firstTrailingBit(_wgslsmith_mult_vec4_i32(-arg_3, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, -9174i), arg_3))) ^ vec4<i32>(arg_1.a.a.x, _wgslsmith_dot_vec3_i32(arg_3.yww, arg_2.a), -17753i, arg_2.a.x << (u_input.a % 32u));
    global3 = array<u32, 23>();
    let var_1 = ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(24944u, 13u)], select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 23u)], 13u)], 23u)], 1u, global1[_wgslsmith_index_u32(u_input.a, 13u)], 1u), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 40364u, global3[_wgslsmith_index_u32(26969u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)])), 23u)], ~49500u, false) ^ global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19113u, 13u)], 23u)], u_input.a, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<u32>(global3[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 23u)], 13u)], u_input.a, 1u)), 13u)]);
    global1 = array<u32, 13>();
    return var_0.x;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    let var_0 = vec3<bool>(true, true, all(vec2<bool>(true, true)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(740f - arg_1.x) + _wgslsmith_div_f32(-899f, -1567f)), global2.x), arg_1.zzy));
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, 15243i), vec3<i32>(arg_0, arg_0, arg_0)), firstTrailingBit(-(~vec3<i32>(-39025i, -75655i, arg_0)))), vec4<bool>(max(_wgslsmith_sub_u32(17835u, 2903u), ~global1[_wgslsmith_index_u32(u_input.a, 13u)]) > firstLeadingBit(~1u), true, false, true), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(trunc(-1100f))));
    var var_2 = all(vec4<bool>(all(var_0), arg_2, true, true));
    var var_3 = Struct_1(-var_1.a, vec4<bool>(true, false, abs(u_input.a) != ~0u, true), global2.x);
    return var_3.a.x;
}

fn func_2(arg_0: vec2<i32>) -> vec3<i32> {
    global3 = array<u32, 23>();
    var var_0 = ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 1u, u_input.a, 0u) & ~vec4<u32>(u_input.a, 64672u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64230u, 23u)], 23u)], 4294967295u), max(~vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, global1[_wgslsmith_index_u32(125270u, 13u)]), ~vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 23u)], u_input.a))), _wgslsmith_add_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15027u, 13u)], 13u)], global1[_wgslsmith_index_u32(27593u, 13u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 13u)]), vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(10484u, 23u)], global3[_wgslsmith_index_u32(78054u, 23u)])), min(vec4<u32>(u_input.a, 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 963u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 61125u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14579u, 13u)], 13u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(29322u, 23u)], global1[_wgslsmith_index_u32(12543u, 13u)], 26337u))));
    let var_1 = (var_0.yww << (_wgslsmith_mult_vec3_u32(~(~var_0.ywz), _wgslsmith_sub_vec3_u32(~var_0.wyx, vec3<u32>(3551u, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(7872u, 13u)]) ^ var_0.zxw)) % vec3<u32>(32u))) ^ var_0.yyx;
    var var_2 = Struct_4(_wgslsmith_div_i32(arg_0.x, max(firstTrailingBit(_wgslsmith_clamp_i32(-72677i, -54129i, arg_0.x)), func_3(arg_0.x, vec4<f32>(global2.x, global2.x, global2.x, -1096f), true) >> (_wgslsmith_mod_u32(var_1.x, var_1.x) % 32u))), Struct_2(Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(-2147483647i, -1i, arg_0.x)), ~vec3<i32>(2147483647i, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), 250f), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, 39401i, arg_0.x), vec3<i32>(10782i, -43004i, -2147483647i)), vec3<i32>(79638i, arg_0.x, -2421i)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(360f, _wgslsmith_f_op_f32(min(global2.x, -1097f)), _wgslsmith_f_op_f32(step(706f, global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1637f, global2.x, global2.x), vec3<f32>(global2.x, -695f, global2.x), true)) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x))))));
    var var_3 = !var_2.b.b.b.x;
    return ~var_2.b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32((global1[_wgslsmith_index_u32(u_input.a, 13u)] << (~0u % 32u)) >> (_wgslsmith_div_u32(u_input.a, ~global1[_wgslsmith_index_u32(57065u, 13u)]) % 32u), 17768u), 23u)], 23u)] ^ 42889u;
    global1 = array<u32, 13>();
    var var_1 = ~(~1u) >= ~abs(_wgslsmith_mod_u32(var_0, 4294967295u) << (max(global1[_wgslsmith_index_u32(46470u, 13u)], u_input.a) % 32u));
    global1 = array<u32, 13>();
    var var_2 = _wgslsmith_f_op_f32(abs(global2.x));
    var var_3 = Struct_1(func_2(vec2<i32>(func_1(vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec3<i32>(-11985i, -1i, 0i), vec4<bool>(true, true, false, true), global2.x), Struct_1(vec3<i32>(-2147483647i, 0i, 1i), vec4<bool>(true, true, false, true), -758f), vec3<f32>(127f, global2.x, -633f)), Struct_1(vec3<i32>(0i, -1i, -35855i), vec4<bool>(true, true, true, false), 409f), vec4<i32>(-30422i, -2147483647i, -6500i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(21118i, 2147483647i), vec2<i32>(2147483647i, -7621i))) | ~vec2<i32>(1i, 1i)), !(!vec4<bool>(select(true, true, true), true, all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.a.x, -1i), var_3.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, global2.x, global2.x, 1000f)), any(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, true))) >> (~17714u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_div_f32(1472f, global2.x), _wgslsmith_f_op_f32(floor(var_3.c)), 766f)), any(!var_3.b.wz)), abs(var_0));
}

