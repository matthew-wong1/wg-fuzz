struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: vec4<i32> = vec4<i32>(-10079i, 24324i, 3300i, -33434i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>) -> vec2<bool> {
    global1 = array<vec4<i32>, 31>();
    var var_0 = ~vec2<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.d, global2.x), ~vec3<i32>(-2278i, 0i, u_input.b)), global2.x);
    var var_1 = reverseBits(firstTrailingBit(1i) | 2147483647i);
    let var_2 = true;
    let var_3 = Struct_1(select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(!vec2<bool>(var_2, var_2), !vec2<bool>(var_2, false), true), !(!vec2<bool>(var_2, var_2))), true), -u_input.b, u_input.c.zwz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, 1232f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -453f))))), vec4<u32>(global0[_wgslsmith_index_u32(~arg_0.x, 11u)], reverseBits(arg_0.x | u_input.a), ~select(max(103608u, global0[_wgslsmith_index_u32(u_input.a, 11u)]), ~54359u, var_2), _wgslsmith_mult_u32(1u, arg_1)));
    return !vec2<bool>(!var_2, true);
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = !any(vec4<bool>(false, true, true, true));
    let var_1 = Struct_2(all(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_0), vec2<bool>(false, true), vec2<bool>(true, true)), func_3(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 11u)], 106122u, 1u), reverseBits(global0[_wgslsmith_index_u32(6832u, 11u)]), min(u_input.c, vec4<u32>(4294967295u, 60399u, 57040u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38118u, 11u)], 11u)], 11u)]))), all(vec2<bool>(true, true)))), !vec3<bool>(!(arg_0 && arg_0), true, arg_0), 1608f, all(select(!vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), func_3(u_input.c.zyx, global0[_wgslsmith_index_u32(53659u, 11u)], u_input.c), !arg_0), arg_0)));
    var_0 = all(vec4<bool>(true, false, all(vec3<bool>(any(var_1.b.xx), var_1.c >= 1533f, !arg_0)), false));
    global0 = array<u32, 11>();
    let var_2 = var_1;
    return reverseBits(firstLeadingBit(_wgslsmith_div_vec2_i32(-(global2.yz | vec2<i32>(u_input.b, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -2217i), global2.zy) | vec2<i32>(1i, 1i))));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = vec2<i32>(-1i) * -min(global2.yz, func_2(any(vec3<bool>(false, false, false))));
    global2 = -((vec4<i32>(-1i) * -select(global1[_wgslsmith_index_u32(0u, 31u)], vec4<i32>(arg_0, var_0.x, 1659i, -2147483647i), vec4<bool>(true, false, true, false))) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(130088u, 11u)]), 11u)], 11u)], u_input.a, max(~global0[_wgslsmith_index_u32(41227u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(37408u, u_input.c.x), 11u)])) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(660f, 252f)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(2586f, arg_1))))));
    var var_2 = -803f;
    var_2 = var_1.x;
    return !all(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-8669i, 2147483647i >> (firstLeadingBit(~reverseBits(u_input.a)) % 32u));
    global1 = array<vec4<i32>, 31>();
    let var_1 = max(_wgslsmith_mult_vec3_u32(~vec3<u32>(~global0[_wgslsmith_index_u32(0u, 11u)], select(u_input.c.x, 0u, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 11u)]), ~_wgslsmith_mod_vec3_u32(~u_input.c.yyy, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.a, 11u)]) >> (u_input.c.zxx % vec3<u32>(32u)))), vec3<u32>(~min(~0u, _wgslsmith_clamp_u32(u_input.c.x, 10174u, 1u)), abs(u_input.c.x), 4294967295u));
    global2 = vec4<i32>(~_wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(global2.wwy, global2.xxx)), _wgslsmith_mod_i32(global2.x, -2996i)), global2.x, min(u_input.d, ~global2.x), var_0.x);
    global2 = ~vec4<i32>(u_input.b, -9893i, 2147483647i, -2147483647i);
    var var_2 = ~select(var_1.xy, u_input.c.xz << (select(vec2<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), ~vec2<u32>(u_input.a, 27501u), vec2<bool>(true, false)) % vec2<u32>(32u)), !vec2<bool>(true, func_1(var_0.x, 992f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(282f)) - _wgslsmith_f_op_f32(f32(-1f) * -136f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1839f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(147f))))));
    var var_4 = _wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(var_0.x == _wgslsmith_dot_vec3_i32(global2.xyy, global2.xzw)), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(32563u, 11u)], 12451u, 1u), vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(var_2.x, 11u)], 1u)), _wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(62380u, 31074u, var_2.x))), ~(~var_2.x), 1u, abs(var_2.x << (69234u % 32u))), _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * var_3) * 311f)), false)), 1u, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(1u, 31u)], vec4<i32>(-2147483647i, 3031i, var_0.x, 0i))), -2147483647i) | abs(i32(-1i) * -2147483647i));
}

