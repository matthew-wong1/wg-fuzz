struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = ~(~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(min(u_input.d, 4294967295u), 11u)])));
    global0 = array<vec3<u32>, 11>();
    var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(117810u, 10140u)), u_input.a.x), 0u, 45318u), ((u_input.d | 0u) << (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)) | 4294967295u);
    global0 = array<vec3<u32>, 11>();
    var_0 = u_input.a.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1323f, -674f))) - _wgslsmith_f_op_f32(f32(-1f) * -312f)), -758f))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(-860f)), -1000f, _wgslsmith_f_op_f32(trunc(-1999f)), -701f), vec4<f32>(-1236f, _wgslsmith_div_f32(-528f, 497f), _wgslsmith_f_op_f32(f32(-1f) * -212f), -1157f)))));
    let var_2 = Struct_1(any(vec4<bool>(true, true, true, true)), -51802i, vec4<bool>(any(vec2<bool>(true, var_1.x >= var_1.x)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false, false), reverseBits(u_input.b.x), arg_1);
    let var_3 = vec3<bool>(!(!all(var_2.c)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(u_input.d, u_input.a.x, 17003u, 4294967295u)), arg_1), ~_wgslsmith_dot_vec4_u32(var_2.e, arg_1)) >= (select(_wgslsmith_mod_u32(var_2.e.x, 44293u), var_2.e.x, var_2.c.x) >> (~_wgslsmith_mult_u32(u_input.d, u_input.a.x) % 32u)), false);
    let var_4 = Struct_1(var_3.x, _wgslsmith_add_i32(~(arg_0 & ~21410i), ~u_input.b.x), vec4<bool>(false, all(var_3), false, false), firstTrailingBit(_wgslsmith_sub_i32(arg_0, _wgslsmith_sub_i32(~2147483647i, -2147483647i))), arg_1);
    return !(!(!vec2<bool>(all(vec4<bool>(true, false, false, false)), var_3.x)));
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, 652f)), vec2<f32>(187f, 815f), func_3(1i, vec4<u32>(0u, 47144u, 4294967295u, 104461u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(382f, 288f))))))));
    global0 = array<vec3<u32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(sign(var_0.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2043f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1777f, 545f)) - var_0.x))));
    let var_2 = var_1;
    var var_3 = Struct_1(select(var_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, var_2))), !((6193u == u_input.d) || all(vec2<bool>(false, true))), true), -1i, !select(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(true, any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true)), u_input.b.x, ~(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 36116u, u_input.a.x, 24171u), vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, 11256u)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(min(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x) & vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d), reverseBits(vec4<u32>(0u, u_input.d, 1u, u_input.d))), ~(~vec4<u32>(30395u, 14240u, u_input.d, u_input.d)), false) | vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40653u, 51019u), ~u_input.a), 50990u), _wgslsmith_div_u32(14627u, select(4294967295u, 6510u, 7278i > u_input.c.x)), ~21182u, ~countOneBits(80399u));
    global0 = array<vec3<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1927f) - -1298f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.b.x)), _wgslsmith_f_op_f32(ceil(-1202f))), 867f, _wgslsmith_f_op_f32(718f - -161f))), -(_wgslsmith_add_vec2_i32(u_input.b, func_2()) ^ countOneBits(-vec2<i32>(u_input.b.x, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f * 1039f)))), var_0);
}

