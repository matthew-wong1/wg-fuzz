struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: bool;

var<private> global2: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f + -420f)), _wgslsmith_div_f32(-969f, -2020f));
    var_0 = Struct_2(412f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(step(var_0.a, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, -850f)) * _wgslsmith_f_op_f32(trunc(var_0.b))))));
    global2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, ~(-u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-12565i, 2147483647i, u_input.a, 0i), vec4<i32>(u_input.a, -2147483647i, u_input.a, 41478i)))), 1i);
    var var_1 = select(~u_input.b.yxz << (~(~u_input.b.xzz | u_input.b.yyw) % vec3<u32>(32u)), select(u_input.b.wwy, u_input.b.yzx, select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(!arg_0.x, true, arg_0.x), true)), ~(~(u_input.b.x & 4294967295u)) < (4294967295u ^ (u_input.b.x ^ firstLeadingBit(u_input.b.x))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.b), var_0.b), false), global0[_wgslsmith_index_u32(var_1.x, 30u)]);
    return max(u_input.a, u_input.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> bool {
    var var_0 = 183f;
    var var_1 = ~func_3(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a.b, true, true, true), arg_0.a.b), !vec4<bool>(false, arg_0.b.b, true, arg_0.b.b), select(vec4<bool>(arg_0.b.b, arg_0.a.b, arg_0.a.b, false), vec4<bool>(true, arg_0.b.b, arg_0.a.b, true), vec4<bool>(arg_0.a.b, false, false, arg_0.b.b))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, arg_0.a.a, arg_0.b.a)))), vec3<f32>(188f, _wgslsmith_f_op_f32(arg_0.a.a * arg_0.b.a), _wgslsmith_f_op_f32(-arg_0.b.a)), arg_0.a.a != 522f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.a, 1000f, arg_0.b.a))) + vec3<f32>(arg_0.a.a, 127f, arg_0.a.a))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * _wgslsmith_f_op_f32(f32(-1f) * -763f))), arg_0.b.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-698f))));
    let var_3 = Struct_1(-1509f, all(vec4<bool>(arg_0.b.b, all(vec3<bool>(arg_0.a.b, true, arg_0.b.b)), arg_0.b.b & arg_0.a.b, true || arg_0.b.b)));
    return false;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0), true), Struct_1(-266f, !select(false, any(vec2<bool>(true, false)), func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i)))));
    let var_1 = any(vec3<bool>(false & (false && var_0.b.b), var_0.a.b, !var_0.b.b | var_0.b.b));
    var var_2 = abs(vec4<i32>(22689i, 0i, 43569i, countOneBits(u_input.a)));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(select(-8391i, var_2.x, !var_0.b.b | (var_2.x <= u_input.a)), 34142i), u_input.a, -(i32(-1i) * -u_input.a));
    return _wgslsmith_f_op_f32(-arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_add_u32(0u, u_input.b.x), ~0u)), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_mult_vec2_u32(u_input.b.wz, vec2<u32>(u_input.b.x, 4294967295u))), vec2<u32>(1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)))), 30u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-229f - _wgslsmith_div_f32(161f, 241f)) + _wgslsmith_f_op_f32(func_1(-861f))), !(true || all(vec4<bool>(false, false, true, false)))));
    global2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(17540i, -2147483647i), vec2<i32>(1i, u_input.a)), u_input.a, firstLeadingBit(u_input.a), 2147483647i), vec4<i32>(abs(u_input.a), 2147483647i >> (u_input.b.x % 32u), _wgslsmith_sub_i32(u_input.a, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 6581i, -1i, u_input.a)))) ^ func_3(vec4<bool>(true, !var_0.b.b, false, var_0.a.b)), -2147483647i);
    var var_1 = u_input.b.xz;
    global1 = any(select(select(!select(vec2<bool>(var_0.b.b, true), vec2<bool>(var_0.a.b, true), false), !vec2<bool>(false, var_0.b.b), select(any(vec3<bool>(false, false, true)), var_0.b.b & false, var_0.b.b)), vec2<bool>(func_2(var_0, reverseBits(vec4<i32>(16290i, u_input.a, -7407i, u_input.a))), !var_0.a.b), all(!select(vec3<bool>(var_0.a.b, var_0.b.b, false), vec3<bool>(var_0.a.b, true, true), vec3<bool>(false, false, true)))));
    global0 = array<Struct_1, 30>();
    global2 = u_input.a;
    var var_2 = u_input.b;
    var_1 = ~select(~select(firstTrailingBit(var_2.yy), reverseBits(u_input.b.yx), true), vec2<u32>(reverseBits(0u), abs(_wgslsmith_mod_u32(u_input.b.x, 4294967295u))), var_0.b.b);
    var var_3 = _wgslsmith_div_u32(u_input.b.x ^ ~_wgslsmith_mod_u32(~10424u, var_2.x), 14614u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.b.a, 920f) - vec3<f32>(-569f, 1432f, -965f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, -1306f, var_0.a.a))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.a)), 1000f, _wgslsmith_f_op_f32(exp2(var_0.b.a))))));
}

