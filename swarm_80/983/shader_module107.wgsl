struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 22>;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(1u, 2152u, 13005u), vec3<u32>(11337u, 1u, 3532u), vec3<u32>(1u, 21942u, 4294967295u), vec3<u32>(46373u, 21139u, 19188u), vec3<u32>(26744u, 39217u, 25759u), vec3<u32>(0u, 86632u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(24177u, 18227u, 20912u), vec3<u32>(1u, 8317u, 55785u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    let var_0 = abs(-81202i);
    global0 = vec3<bool>(all(select(!select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(63998u, 22u)])), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, true, global1[_wgslsmith_index_u32(u_input.d, 22u)]), global1[_wgslsmith_index_u32(39190u, 22u)] && global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(global0.x, global1[_wgslsmith_index_u32(~u_input.e.x, 22u)], global1[_wgslsmith_index_u32(~4294967295u, 22u)]))), !global1[_wgslsmith_index_u32(19315u, 22u)], all(select(vec2<bool>(!global0.x, false || global1[_wgslsmith_index_u32(u_input.d, 22u)]), global0.yx, true)));
    global1 = array<bool, 22>();
    let var_1 = Struct_4(Struct_3(-(_wgslsmith_add_i32(var_0, var_0) & u_input.c.x), Struct_1(~(~u_input.e)), u_input.e.x), true, abs(~u_input.d) << (~(~u_input.d) % 32u));
    let var_2 = var_1.a.b.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1243f + 372f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -769f))))) <= 273f;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<u32>) -> bool {
    global2 = array<vec3<u32>, 10>();
    let var_0 = vec2<i32>(~(_wgslsmith_mod_i32(-arg_0.a.a, _wgslsmith_mult_i32(arg_0.a.a, 0i)) & ~u_input.c.x), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, arg_0.a.a, -2147483647i), vec4<i32>(20189i, -1i, 2147483647i, -4189i)) & select(_wgslsmith_mod_i32(-2147483647i, -10188i), abs(arg_0.a.a), global0.x)));
    global2 = array<vec3<u32>, 10>();
    let var_1 = vec2<u32>(arg_3.x, 7878u);
    let var_2 = Struct_2(Struct_1(arg_0.a.b.a), arg_0.a.b, ~vec4<u32>(1u, 4294967295u, ~7657u, min(4294967295u, arg_0.a.b.a.x)), ~min(arg_0.a.b.a, firstTrailingBit(vec4<u32>(arg_3.x, var_1.x, 3660u, 13342u))));
    return !(!select(var_0.x >= arg_0.a.a, true, arg_0.b | global0.x)) & false;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = func_2();
    global0 = vec3<bool>(true, true, (~arg_2.a.a.x << (~(~u_input.e.x) % 32u)) < ~(4294967295u << (u_input.a % 32u)));
    let var_1 = -179f;
    var_0 = select(global0.x, global1[_wgslsmith_index_u32(4294967295u, 22u)], !(!func_3(Struct_4(Struct_3(u_input.c.x, arg_2.a, arg_2.c.x), global0.x, arg_2.b.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_1, arg_1, arg_1)), var_1, vec2<u32>(0u, arg_2.c.x) | arg_2.b.a.wz)));
    var var_2 = Struct_4(Struct_3(u_input.c.x, Struct_1(~vec4<u32>(0u, u_input.d, 1u, u_input.e.x)), _wgslsmith_dot_vec3_u32(~select(u_input.e.zxy, vec3<u32>(4294967295u, 68440u, arg_2.d.x), true), vec3<u32>(37111u, u_input.e.x, 62594u))), global1[_wgslsmith_index_u32((u_input.a >> (_wgslsmith_mod_u32(1u, u_input.a) % 32u)) >> (~(~arg_2.b.a.x) % 32u), 22u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(91233u, u_input.b.x), 1u), u_input.d));
    return vec4<bool>(func_3(Struct_4(Struct_3(var_2.a.a, Struct_1(u_input.e), 4294967295u), var_2.b, var_2.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1, 254f), 1564f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(var_1, 1693f, true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1625f, -739f, 992f) + vec4<f32>(1000f, -680f, var_1, var_1)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1756f + var_1)), u_input.b), true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    global0 = vec3<bool>(all(!select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(u_input.a, 22u)], global0.x), vec4<bool>(true, false, true, true)), vec4<bool>(true, global0.x, global0.x, true), func_1(u_input.c.x, -1720f, Struct_2(Struct_1(vec4<u32>(u_input.d, 20186u, u_input.e.x, u_input.d)), Struct_1(vec4<u32>(u_input.d, u_input.a, u_input.e.x, 4294967295u)), u_input.e, vec4<u32>(u_input.d, 4294967295u, u_input.a, u_input.d))))), !(!global1[_wgslsmith_index_u32(~4294967295u, 22u)] || (~33183i >= ~u_input.c.x)), !(abs(~u_input.c.x) == ~(-11899i)));
    let var_0 = Struct_1(~vec4<u32>((15239u & u_input.e.x) << (_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.d) % 32u), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.e.x), _wgslsmith_mod_u32(~0u, u_input.d), countOneBits(_wgslsmith_mod_u32(28779u, 30718u))));
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(375f, -1301f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(-3640f * -1763f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) - -211f)), -1050f, true && func_1(u_input.c.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(528f, 345f, global1[_wgslsmith_index_u32(37669u, 22u)])))), Struct_2(Struct_1(var_0.a), var_0, vec4<u32>(0u, 1u, u_input.a, 0u), min(vec4<u32>(var_0.a.x, 0u, 5877u, 7825u), u_input.e))).x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1299f * -1808f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(floor(var_2))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2, var_2)))) * _wgslsmith_f_op_f32(var_2 - 1f))), var_2, u_input.c);
}

