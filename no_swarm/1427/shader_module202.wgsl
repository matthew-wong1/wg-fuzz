struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    return -472f;
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-141f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), -817f), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(trunc(arg_2.x))))) + _wgslsmith_f_op_vec2_f32(-arg_0.zy));
    let var_1 = Struct_1(5570i, arg_1);
    var var_2 = Struct_1(-1i, false);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(u_input.a.x ^ 5743u) << (_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(0u, 2213u)) % 32u), 1u, 0u) >> (_wgslsmith_sub_u32(u_input.c, ~9966u) % 32u), 11u)];
    var_2 = var_1;
    return !arg_1;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-677f - -542f), _wgslsmith_f_op_f32(func_2()), true)) != arg_0.b, true, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-355f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(ceil(arg_0.b)))), u_input.a.x >= 18205u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b), _wgslsmith_f_op_f32(-arg_0.b))), !(436f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, arg_0.b))))));
    global0 = array<Struct_3, 11>();
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(select(reverseBits(1u), ~u_input.c, any(var_0)), 0u), 104766u ^ _wgslsmith_mult_u32(abs(0u), u_input.a.x), u_input.c) >> (vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(11794u, u_input.c, u_input.c, 45182u)), abs(abs(vec4<u32>(4294967295u, u_input.c, 36430u, 1u)))), _wgslsmith_clamp_u32(~u_input.a.x, 0u, _wgslsmith_mult_u32(u_input.c, u_input.c))) % vec3<u32>(32u));
    let var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-617f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b)))))) + -190f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~(-countOneBits(u_input.b.x)) >> (u_input.c % 32u)) & reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.xy, ~(-u_input.b.yz)));
    let var_1 = select(select(vec2<bool>(true, false), vec2<bool>(!any(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, any(vec4<bool>(true, true, true, false))))), vec2<bool>(-863f < _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(var_0, false), 994f, Struct_1(15478i, false), 1i, vec4<bool>(false, false, false, true)))), true), vec2<bool>(true, true));
    var var_2 = _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(u_input.a, ~vec2<u32>(57944u, 11613u))), ~vec2<u32>(u_input.a.x, ~reverseBits(27115u)));
    var var_3 = Struct_1(var_0, true);
    let var_4 = Struct_2(Struct_1(var_0, true & (true | var_1.x)), -2674f, Struct_1(var_3.a, (select(var_1.x, var_1.x, var_3.b) || true) || var_3.b), var_0, vec4<bool>(!var_3.b & false, any(!(!vec4<bool>(var_1.x, false, true, false))), var_3.b, true && (false || var_3.b)));
    var_2 = abs(select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, ~u_input.c), abs(u_input.a & vec2<u32>(var_2.x, u_input.a.x))), ~(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.c))), select(!(!vec2<bool>(var_1.x, var_3.b)), select(select(var_4.e.wx, var_1, var_4.e.xw), var_4.e.yw, select(false, true, var_1.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(~0i, -u_input.b.x), ~_wgslsmith_add_vec2_i32(u_input.b.yz, vec2<i32>(7952i, 1i))));
}

