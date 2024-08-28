struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    var var_0 = -max(-arg_0 | _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -26796i, u_input.c.x), u_input.b)), arg_0);
    global0 = array<f32, 31>();
    let var_1 = u_input.e.x;
    var var_2 = _wgslsmith_f_op_f32(1893f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))));
    var var_3 = Struct_1(vec4<f32>(194f, 543f, -814f, -1488f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-340f))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(565f)), 379f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d.x, ~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, 4294967295u, 23332u, u_input.d.x))), 31u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(reverseBits(-1i), vec3<f32>(1360f, 1000f, global0[_wgslsmith_index_u32(u_input.e.x, 31u)]))))))));
    global0 = array<f32, 31>();
    let var_1 = false;
    var var_2 = Struct_1(var_0);
    global0 = array<f32, 31>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(41536u, 31u)], -1287f, -404f, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]) * vec4<f32>(1259f, -1016f, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 31u)]))) * var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, _wgslsmith_f_op_f32(-1321f * 850f), -366f, _wgslsmith_f_op_f32(var_2.a.x + global0[_wgslsmith_index_u32(u_input.e.x, 31u)])) + _wgslsmith_div_vec4_f32(vec4<f32>(-1462f, global0[_wgslsmith_index_u32(5115u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), var_0)))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<f32, 31>();
    let var_0 = func_2(!(!any(vec3<bool>(arg_0.x, arg_0.x, true))) | !(global0[_wgslsmith_index_u32(~2004u, 31u)] < global0[_wgslsmith_index_u32(~u_input.e.x, 31u)]));
    var var_1 = vec2<f32>(1430f, -585f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.xw * _wgslsmith_f_op_vec2_f32(func_2(arg_0.x).a.xx + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(273f, var_0.a.x) - var_0.a.zz))))));
    let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(u_input.b.x, 8421i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1740f, global0[_wgslsmith_index_u32(u_input.a, 31u)]))))) < _wgslsmith_div_f32(-997f, -1271f));
    return select(arg_0.zyx, select(arg_0.xzw, select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0.x, false), arg_0.x), vec3<bool>(true, true, true), true), arg_0.xyx, 0u <= abs(u_input.a)), !vec3<bool>(true, any(arg_0.yy), any(vec3<bool>(true, arg_0.x, arg_0.x)))), -809f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 31u)])) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + var_1.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = 506f;
    let var_1 = func_2(true);
    let var_2 = arg_0.wxy;
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    return func_2(select(arg_1.x, true, true || select(all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), false, any(arg_1)))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(select(~u_input.d, vec4<u32>(0u, u_input.a, 0u, u_input.e.x), true), countOneBits(~u_input.e), vec4<bool>(true, true, true, true)), select(vec3<bool>(true, true, true), func_1(vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x << (u_input.d.x % 32u)), 31u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(947f * 117f), 1004f)))));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1738f, 128f, 115f, 1409f) * vec4<f32>(var_0, var_0, global0[_wgslsmith_index_u32(0u, 31u)], 638f)), vec4<f32>(var_0, 120f, -953f, -704f))))));
    global0 = array<f32, 31>();
    let var_2 = vec2<f32>(var_0, func_2(false).a.x);
    var_1 = func_2(any(vec3<bool>(true, !func_1(vec4<bool>(true, false, false, false)).x, true || all(vec4<bool>(false, false, true, true)))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.yz - _wgslsmith_f_op_vec2_f32(exp2(var_1.a.yy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1393f, var_1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(131f, var_2.x))))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.d, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))) * 1243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.c.x, u_input.c.x)), ~vec2<i32>(u_input.c.x, 0i)) >> (vec2<u32>(~u_input.e.x, 0u) % vec2<u32>(32u)), -(~(vec2<i32>(u_input.c.x, 2147483647i) & u_input.b.zz))), select(~(~(~vec3<u32>(u_input.e.x, 0u, u_input.d.x))), u_input.e.zyy, !(!(-1i < u_input.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * var_2.x)), -1570f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0, var_3.x)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.e.x, 31u)]))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_3, var_3, vec2<bool>(true, true))), var_2)))), ~abs(u_input.d.x));
}

