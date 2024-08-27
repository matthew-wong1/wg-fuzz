struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(27705u, 0u, 71689u, 36768u, 50185u, 56857u, 0u, 0u, 0u, 23763u, 22874u, 41217u, 0u, 1u, 4294967295u, 55497u, 1u, 3956u, 71748u, 0u, 0u, 47030u, 27325u, 4294967295u, 1516u, 2106u, 1u, 50909u, 32627u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    return reverseBits(112335u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(29323u, ~_wgslsmith_sub_u32(19210u, 0u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c, 26889u), ~select(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 30u)], u_input.c), vec2<u32>(4294967295u, u_input.c), true), vec2<u32>(u_input.c, ~u_input.c)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1659f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1997f)))) - 1f));
    let var_2 = abs(1u);
    global0 = array<u32, 30>();
    var var_3 = Struct_1(!vec2<bool>(all(vec2<bool>(true, false)), true), u_input.a, _wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(var_0, var_0) ^ var_0, var_0, vec2<bool>(any(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, false, false)))), _wgslsmith_add_vec2_u32(var_0, ~(~vec2<u32>(9038u, 26346u)))));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    global0 = array<u32, 30>();
    let var_0 = !arg_1;
    var var_1 = Struct_1(arg_0.yz, 33259i, ~vec2<u32>(0u & func_1(vec3<f32>(426f, 171f, -1554f)), global0[_wgslsmith_index_u32(func_3(), 30u)]));
    var var_2 = -74399i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(809f, 651f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, 1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-399f, -1229f), vec2<f32>(373f, 998f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(698f, 327f))), var_1.a)))));
    return global0[_wgslsmith_index_u32(~var_1.c.x, 30u)] >> (var_1.c.x % 32u);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -358f);
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return Struct_1(select(!select(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), vec2<bool>(false, false), all(vec2<bool>(arg_0, arg_0))), !select(!vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), vec2<bool>(!arg_0, (2147483647i << (u_input.c % 32u)) < -2147483647i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(71000i, 1i), firstTrailingBit(46342i)), -23757i), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, 28936u), vec2<u32>(1u, 1u), vec2<u32>(64056u, 14004u)), vec2<u32>(4294967295u, u_input.c), !arg_0) | vec2<u32>(u_input.c, ~(~arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = func_4(all(vec2<bool>(_wgslsmith_f_op_f32(909f * -369f) <= _wgslsmith_f_op_f32(floor(-440f)), false)), global0[_wgslsmith_index_u32(func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), -346f, -998f)) | (9175u << (u_input.c % 32u)), 30u)], u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(min(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 40711u), ~(~4294967295u)), 30u)], min(u_input.c, func_2(vec4<bool>(true, true, true, true), true))), 30u)]);
    var var_1 = vec4<i32>(u_input.b, _wgslsmith_div_i32(2147483647i, var_0.b), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0.b, u_input.a), vec2<i32>(-49043i, 0i)), var_0.b);
    var var_2 = (min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 2398u), _wgslsmith_clamp_vec2_u32(vec2<u32>(22741u, 67654u), vec2<u32>(u_input.c, 1u), vec2<u32>(1873u, u_input.c))), vec2<u32>(~0u, abs(96018u))) | firstTrailingBit(var_0.c)) >> (vec2<u32>(func_4(true, 109948u, _wgslsmith_div_i32(-2147483647i & var_0.b, 6491i), reverseBits(6991u)).c.x, func_2(select(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(var_0.a.x, true, true, var_0.a.x), true), true), true)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1841f, _wgslsmith_f_op_f32(f32(-1f) * -1222f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(~51481u, firstTrailingBit(global0[_wgslsmith_index_u32(54576u, 30u)] ^ 58389u))), max(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_2.x, 26407u), var_2.x), ~vec2<u32>(var_2.x, 55800u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 51193u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)]), vec3<u32>(65921u, var_0.c.x, var_0.c.x)) | 57236u, select(max(global0[_wgslsmith_index_u32(var_2.x, 30u)], var_2.x), 1u, !var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-var_0.b, var_1.x), -81178i)), var_3.x, -8448i);
}

