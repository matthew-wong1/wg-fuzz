struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = array<vec2<u32>, 31>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-983f)) - -443f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) * _wgslsmith_f_op_f32(1540f + 114f)), _wgslsmith_f_op_f32(max(144f, _wgslsmith_f_op_f32(select(-227f, -733f, true))))) - vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-999f - 2122f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-244f, _wgslsmith_f_op_f32(abs(-174f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f) * _wgslsmith_div_f32(897f, -166f))), _wgslsmith_f_op_f32(-1f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -725f))))) + var_0.x);
    global0 = true;
    global1 = array<vec2<u32>, 31>();
    return _wgslsmith_mult_u32(arg_0, firstTrailingBit(_wgslsmith_div_u32(arg_0, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, 1u, 4294967295u, arg_0)), ~vec4<u32>(arg_0, 0u, 1u, 4294967295u)))));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(func_3(1u)), 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 36383u, 39179u, 38566u), vec4<u32>(97900u, 4294967295u, 0u, 17030u)) % 32u)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(37768u, 0u), vec2<u32>(17908u, 69688u)) >> (~10534u % 32u)), 1u);
    var_0 = reverseBits(_wgslsmith_add_i32(u_input.c.x, -_wgslsmith_mod_i32(u_input.c.x, u_input.c.x) >> (reverseBits(var_1.x ^ var_1.x) % 32u)));
    var_0 = _wgslsmith_sub_i32(max(~select(0i, -2147483647i, var_1.x <= var_1.x), ~(u_input.a >> (var_1.x % 32u))), ~_wgslsmith_dot_vec3_i32(u_input.c, -max(u_input.c, vec3<i32>(-17135i, u_input.c.x, u_input.b))));
    global0 = all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(var_1.x == var_1.x, true, true, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), true)));
    return Struct_2(vec3<u32>(_wgslsmith_clamp_u32(max(4294967295u, var_1.x), reverseBits(~var_1.x), var_1.x), 0u, var_1.x));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1087f, _wgslsmith_div_f32(-192f, _wgslsmith_f_op_f32(step(-1808f, -700f))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)), -1000f))) + -149f);
    let var_2 = Struct_2(arg_1.a);
    let var_3 = func_2();
    var var_4 = i32(-1i) * -2147483647i;
    return ~((_wgslsmith_mod_u32(var_3.a.x, arg_1.a.x) >> (arg_1.a.x % 32u)) & ~abs(arg_1.a.x << (arg_1.a.x % 32u)));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, false, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), 1u == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 19180u, 1u), vec3<u32>(10144u, 58243u, 1u)), true), false);
    return Struct_1(countOneBits(global1[_wgslsmith_index_u32(~(~(~4294967295u)), 31u)]), _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(arg_0.x), abs(-1i)), -arg_0.x), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 31>();
    var var_0 = Struct_2(~firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 33683u), vec3<u32>(1u, 1u, 61808u))));
    var var_1 = func_4(firstTrailingBit((~vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 0i) & (vec4<i32>(0i, 0i, 0i, 42423i) | vec4<i32>(1i, 6165i, u_input.c.x, u_input.a))) << (vec4<u32>(1u, abs(var_0.a.x), 4294967295u, func_1(34844u, Struct_2(vec3<u32>(var_0.a.x, 45030u, var_0.a.x)))) % vec4<u32>(32u))));
    global0 = (true && (func_4(vec4<i32>(u_input.b, var_1.c.x, var_1.b, u_input.a)).c.x < var_1.b)) | (var_1.a.x >= ~(~4294967295u));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(212f)) + _wgslsmith_f_op_f32(round(1380f)))));
    var var_3 = func_2();
    var var_4 = Struct_1(select(vec2<u32>(var_3.a.x, 21073u), global1[_wgslsmith_index_u32(~var_1.a.x, 31u)], true), _wgslsmith_sub_i32(var_1.c.x, max(28402i, min(_wgslsmith_div_i32(u_input.a, 57086i), u_input.c.x))), ~u_input.c | vec3<i32>(-115i, ~var_1.b, _wgslsmith_div_i32(_wgslsmith_div_i32(var_1.c.x, -1i), ~27188i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec3<i32>(abs(0i), u_input.a, -12829i)));
}

