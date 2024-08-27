struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> vec3<f32> {
    var var_0 = -215f;
    let var_1 = -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.c.x) >> (vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 1369u) % vec2<u32>(32u)), u_input.c.zz) ^ -_wgslsmith_sub_i32(0i, min(-arg_0, abs(58069i)));
    var var_2 = Struct_1(!(!vec2<bool>(false, select(arg_1, arg_2, arg_2))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-401f, -814f)))))), firstLeadingBit(18457i));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, -715f)), _wgslsmith_f_op_f32(var_2.b * var_2.b), any(var_2.a))), _wgslsmith_f_op_f32(trunc(977f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_2.b)))));
    var var_4 = u_input.b.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1222f, 947f)))), var_3));
}

fn func_4(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_1(select(vec2<bool>(!any(vec2<bool>(true, true)), true), vec2<bool>(true, true), select(!(global0[_wgslsmith_index_u32(10115u, 9u)] != global0[_wgslsmith_index_u32(0u, 9u)]), false, select(all(vec4<bool>(false, true, true, true)), true, true))), arg_0.x, _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(u_input.b.x)));
    global0 = array<u32, 9>();
    var var_1 = Struct_1(!var_0.a, -1229f, _wgslsmith_add_i32(u_input.b.x, ~(-2147483647i) ^ firstTrailingBit(-9312i)) & max(u_input.b.x, _wgslsmith_clamp_i32(abs(-30244i), -2147483647i, u_input.c.x)));
    var_1 = Struct_1(var_1.a, var_0.b, ~_wgslsmith_mod_i32(u_input.b.x, ~var_1.c));
    var_1 = Struct_1(var_1.a, var_1.b, (~_wgslsmith_mult_i32(33381i, -2705i) >> (1u % 32u)) & _wgslsmith_div_i32(~_wgslsmith_clamp_i32(36440i, 2147483647i, var_0.c), var_1.c));
    return vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 0u, 1u) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) >> ((1u ^ ~(global0[_wgslsmith_index_u32(61272u, 9u)] | u_input.a)) % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, ~4294967295u), 74442u), 40241u);
}

fn func_2() -> vec4<bool> {
    global0 = array<u32, 9>();
    var var_0 = u_input.b.x;
    let var_1 = ~func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -888f, 1000f) * vec3<f32>(-317f, 1694f, -1000f)), _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, false, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-879f, -864f, 244f)), vec3<f32>(1070f, 748f, 645f)))));
    global0 = array<u32, 9>();
    let var_2 = Struct_1(select(vec2<bool>(false, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), false), select(vec2<bool>(any(vec3<bool>(false, true, true)), any(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true))), _wgslsmith_f_op_f32(floor(-1645f)), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, u_input.c.x, 1i), abs(u_input.c.yzw), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), u_input.c.zzw));
    return vec4<bool>(!all(vec4<bool>(true, var_2.c > -7928i, true, var_2.a.x)), false, any(vec2<bool>(false, var_2.a.x)), var_2.a.x);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = arg_1;
    global0 = array<u32, 9>();
    var var_2 = select(!vec4<bool>(any(vec3<bool>(true, false, arg_1.a.x)) | (var_1.a.x & arg_1.a.x), true, any(select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, var_1.a.x), vec4<bool>(true, true, arg_1.a.x, var_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, true, var_1.a.x))), any(func_2())), select(!vec4<bool>(arg_1.a.x | var_1.a.x, var_1.a.x, select(true, true, false), arg_1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), !(!vec4<bool>(var_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))), select(vec4<bool>(any(!vec4<bool>(arg_1.a.x, var_1.a.x, true, var_1.a.x)), var_1.a.x, any(!vec3<bool>(arg_1.a.x, arg_1.a.x, var_1.a.x)), arg_1.a.x), !(!func_2()), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, true))));
    let var_3 = firstLeadingBit(countOneBits(~vec3<i32>(var_1.c | 0i, _wgslsmith_clamp_i32(u_input.b.x, u_input.c.x, arg_1.c), 0i)));
    return _wgslsmith_f_op_f32(sign(419f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-117f, -931f, false)))), _wgslsmith_f_op_f32(func_1(-998f, Struct_1(vec2<bool>(true, false), 550f, u_input.b.x))))));
    global0 = array<u32, 9>();
    var var_1 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_i32(abs(u_input.c.x), u_input.b.x), func_2().x, true)).x, 2147483647i);
    let var_2 = vec4<u32>(abs(~(~u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~global0[_wgslsmith_index_u32(u_input.a, 9u)]) & (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 19501u), vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 9u)])) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], 0u), vec2<u32>(1u, u_input.a))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(37001u, 9u)])), vec2<bool>(false, var_1.a.x)), reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(30555u, 9u)], 53977u)))), firstLeadingBit(abs(_wgslsmith_mult_u32(u_input.a, firstLeadingBit(u_input.a)))), 39213u);
    var_0 = _wgslsmith_f_op_f32(-var_1.b);
    var_0 = _wgslsmith_f_op_vec3_f32(func_3(-1i & u_input.b.x, true, any(var_1.a))).x;
    global0 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1034f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.c.x, var_1.a.x, true)).yz) - vec2<f32>(_wgslsmith_f_op_f32(select(1000f, var_1.b, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.b)))), vec2<f32>(var_1.b, var_1.b));
}

