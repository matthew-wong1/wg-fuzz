struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: i32;

var<private> global2: array<i32, 20>;

var<private> global3: array<vec4<f32>, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-572f)), _wgslsmith_f_op_f32(f32(-1f) * -2477f), 659f, -2591f)))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 16u)];
    global1 = _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, var_1.c.d.x), u_input.a), min(1u, ~(~u_input.a))), 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(26838i, 0i, global2[_wgslsmith_index_u32(var_1.b.x, 20u)], 1i), ~vec4<i32>(-1i, -37648i, -1i, u_input.b))), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 20u)], max(i32(-1i) * -1849i, max(global2[_wgslsmith_index_u32(0u, 20u)], 0i)))));
    global3 = array<vec4<f32>, 32>();
    var var_2 = !select(select(!(!var_1.c.a), vec2<bool>(!var_1.c.a.x, !var_1.c.a.x), select(vec2<bool>(var_1.e.x, var_1.e.x), var_1.c.a, false)), select(vec2<bool>(!var_1.c.a.x, select(var_1.e.x, true, var_1.e.x)), var_1.c.a, vec2<bool>(any(vec3<bool>(var_1.e.x, true, true)), !var_1.c.a.x)), select(vec2<bool>(true, false), select(vec2<bool>(true, var_1.c.a.x), select(vec2<bool>(true, var_1.e.x), var_1.c.a, var_1.e.x), !var_1.e), var_1.e));
    return all(select(var_1.c.a, var_1.e, var_1.c.a));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = 87909u;
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(-477f)), 271f)));
    var var_2 = Struct_1(vec2<bool>(1i > _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_0, 20u)], max(0i, u_input.b)), func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, 1107f, 827f, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(min(-832f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 433f))), arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -1908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f))), vec3<u32>(select(u_input.a << (var_0 % 32u), 1u, false) >> (var_0 % 32u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, u_input.a), vec2<u32>(0u, 1u))), var_0), ~abs(4294967295u ^ u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(sign(arg_1.x))));
    var_1 = vec3<f32>(1457f, _wgslsmith_f_op_f32(step(845f, -788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)));
    var_1 = _wgslsmith_div_vec3_f32(var_2.b.wxw, _wgslsmith_f_op_vec3_f32(-var_2.c));
    return select(vec2<bool>(select(any(vec3<bool>(var_2.a.x, arg_0.x, var_2.a.x)) && true, var_2.a.x, _wgslsmith_mod_u32(var_0, u_input.a) == _wgslsmith_mult_u32(1u, var_2.d.x)), !(!arg_0.x) && true), arg_0.xz, false);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = !select(vec3<bool>(all(vec2<bool>(false, arg_0.x)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_2.x, arg_0.x, false, arg_2.x))), false), !select(!vec3<bool>(true, arg_2.x, true), vec3<bool>(false, arg_0.x, true), false), false);
    let var_1 = select(select(vec4<bool>(any(func_2(vec4<bool>(false, arg_0.x, arg_2.x, true), vec2<f32>(-1261f, -1510f))), var_0.x, true, _wgslsmith_f_op_f32(sign(338f)) > _wgslsmith_f_op_f32(-arg_1)), select(!vec4<bool>(true, true, var_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, false, false)), true), !(var_0.x == false)), !(!select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, true, arg_2.x), var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), u_input.a != 32247u)), arg_2.x);
    let var_2 = Struct_3(vec4<f32>(494f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1299f, arg_1) - 507f), 2431f), -291f, 789f));
    global0 = array<Struct_2, 16>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1045f), -758f), _wgslsmith_f_op_vec2_f32(var_2.a.zx + _wgslsmith_f_op_vec2_f32(-var_2.a.yx)), select(!vec2<bool>(var_1.x, var_0.x), vec2<bool>(true, var_0.x), arg_2)))));
    return 0u;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> vec2<bool> {
    global2 = array<i32, 20>();
    let var_0 = arg_1.x >> ((_wgslsmith_mod_u32(1u, 1u) & func_4(select(vec2<bool>(true, true), func_2(vec4<bool>(false, true, true, true), vec2<f32>(arg_2, 1934f)), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), select(func_2(vec4<bool>(false, true, true, false), vec2<f32>(arg_0, -529f)), vec2<bool>(false, false), vec2<bool>(false, true)))) % 32u);
    let var_1 = firstTrailingBit(u_input.a) >> (arg_1.x % 32u);
    let var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(var_0, 82446u, var_0, 9323u)), ~(~vec4<u32>(13505u, 40967u, 1u, var_1)))), vec4<u32>(1u, arg_1.x ^ arg_1.x, 41076u, arg_1.x));
    return select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), func_2(vec4<bool>(true, true, false, true), vec2<f32>(-1513f, 922f)), -2147483647i != global2[_wgslsmith_index_u32(arg_1.x, 20u)])), vec2<bool>(!(!all(vec2<bool>(true, false))), all(vec3<bool>(var_0 <= 33483u, true, global2[_wgslsmith_index_u32(20495u, 20u)] <= global2[_wgslsmith_index_u32(63519u, 20u)]))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(76500u, 32u)] - vec4<f32>(_wgslsmith_div_f32(-1514f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-578f - -1000f) + _wgslsmith_f_op_f32(-1000f * -808f))), -481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -723f), _wgslsmith_f_op_f32(sign(-520f)))))));
    let var_1 = Struct_1(func_1(-1000f, vec3<u32>(_wgslsmith_mod_u32(22599u, ~6505u), _wgslsmith_mod_u32(0u, 4294967295u) & u_input.a, 31643u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(134f)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(652f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_vec4_f32(max(global3[_wgslsmith_index_u32(60982u, 32u)], vec4<f32>(635f, -1222f, _wgslsmith_f_op_f32(-var_0.x), -801f))))), _wgslsmith_f_op_vec3_f32(-var_0.xxz), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, 0u, 1u, u_input.a) ^ vec4<u32>(29355u, 179u, u_input.a, u_input.a)), u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(24240u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, 0u))), 0u), -366f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, countOneBits(48424i ^ max(-global2[_wgslsmith_index_u32(0u, 20u)], 1i)), var_1.b);
}

