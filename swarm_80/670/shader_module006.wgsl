struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<u32>, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    global1 = array<vec2<u32>, 15>();
    let var_0 = Struct_1(~_wgslsmith_div_vec2_u32(~select(vec2<u32>(1u, u_input.b), global1[_wgslsmith_index_u32(u_input.b, 15u)], false), ~(~global1[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(min(~vec3<i32>(-1i, u_input.a, -1i), -vec3<i32>(-23063i, 36715i, u_input.c.x)), _wgslsmith_sub_vec3_i32(u_input.c, -u_input.c)), u_input.d.x ^ (2147483647i & abs(u_input.d.x))), !vec4<bool>(any(vec4<bool>(true, false, false, false)), true, all(vec3<bool>(true, true, true)), true), -115f, min(vec4<u32>(24807u, ~countOneBits(12556u), ~u_input.b | 4294967295u, 0u), select(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), abs(vec4<u32>(31982u, 38792u, u_input.b, u_input.b)), vec4<bool>(true, true, true, true)) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), global1[_wgslsmith_index_u32(64145u, 15u)]), 0u, u_input.b, _wgslsmith_sub_u32(1u, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * 1000f))) + var_0.d) + 774f);
    var var_2 = select(~(18159i & var_0.b), -(~var_0.b | ~1i), !(-631i <= (u_input.a >> (1u % 32u)))) >> ((_wgslsmith_mult_u32(~u_input.b, u_input.b) | _wgslsmith_dot_vec2_u32(var_0.e.xy, ~vec2<u32>(40001u, var_0.e.x) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.x, 3929u), vec2<u32>(16376u, 0u)) % vec2<u32>(32u)))) % 32u);
    var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(6749i, u_input.a, -2147483647i, u_input.d.x)), abs(u_input.d))), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(-12724i, u_input.c.x), -2147483647i) | u_input.a);
    return var_0.e;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = u_input.d.xy >> (~arg_0 % vec2<u32>(32u));
    global1 = array<vec2<u32>, 15>();
    var var_1 = func_3();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -292f)))) + 1f), 171f, -684f, 1994f);
    var_1 = ~(~vec4<u32>(_wgslsmith_mult_u32(73927u, arg_0.x), 11911u, ~_wgslsmith_mod_u32(var_1.x, u_input.b), 17859u));
    return -1255f;
}

fn func_1() -> f32 {
    global0 = 0u;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(u_input.b, 15u)]))))), -2693f);
    global0 = ~_wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.b, ~0u), _wgslsmith_add_u32(~(~u_input.b), ~1u));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1982f)), _wgslsmith_f_op_f32(311f - 782f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)) - -856f)), _wgslsmith_f_op_f32(-201f - _wgslsmith_f_op_f32(func_2(~firstTrailingBit(vec2<u32>(u_input.b, 0u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~9863u;
    var var_0 = ~_wgslsmith_add_i32(~1i | _wgslsmith_sub_i32(-51588i, u_input.a), -1i);
    let var_1 = -1902f;
    let var_2 = ~u_input.d.wx;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f)), _wgslsmith_div_f32(var_1, var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(func_1()), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
    global0 = ~1u;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(1404f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-274f, 1156f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1984f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2334f) + var_3.x)));
    global0 = u_input.b | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, -358f, var_4.x, -290f), vec4<f32>(1772f, var_1, 411f, var_4.x)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-var_1))));
}

