struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-1i, vec4<bool>(false, true, true, true)), Struct_1(2147483647i, vec4<bool>(true, false, false, false)), Struct_1(1i, vec4<bool>(true, true, false, true)), Struct_1(17050i, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec4<bool>(false, false, false, true)), Struct_1(0i, vec4<bool>(false, false, true, false)), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, true)), Struct_1(2147483647i, vec4<bool>(true, false, true, false)), Struct_1(-7725i, vec4<bool>(false, true, true, true)), Struct_1(-62003i, vec4<bool>(true, false, false, true)), Struct_1(2147483647i, vec4<bool>(false, true, false, false)), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(40463i, vec4<bool>(true, false, false, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2;
    global1 = array<Struct_1, 31>();
    var var_1 = arg_2.b.x;
    global0 = array<vec2<bool>, 2>();
    global0 = array<vec2<bool>, 2>();
    return var_0.a | 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    global0 = array<vec2<bool>, 2>();
    var var_0 = u_input.d.x;
    var_0 = ~abs(1u);
    let var_1 = func_3(77511u, ~u_input.b.x, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]);
    var var_2 = 27240i;
    return _wgslsmith_div_u32(16717u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a >> (abs(max(func_2(Struct_1(u_input.b.x, arg_1.b), -41561i, vec4<i32>(-36963i, u_input.a.x, 1i, 0i)), 1u)) % 32u), !vec4<bool>(!arg_0.b.x & (arg_3 > arg_3), true, _wgslsmith_dot_vec4_i32(vec4<i32>(-13757i, arg_1.a, u_input.a.x, arg_1.a), vec4<i32>(-2147483647i, arg_0.a, arg_2, u_input.b.x)) > _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.b.x, u_input.b.x)), select(arg_1.b.x, arg_1.b.x, false) && true));
    global1 = array<Struct_1, 31>();
    var var_1 = Struct_1(arg_2, vec4<bool>(all(select(select(vec4<bool>(false, true, var_0.b.x, false), arg_1.b, vec4<bool>(var_0.b.x, true, arg_1.b.x, var_0.b.x)), select(vec4<bool>(false, arg_1.b.x, var_0.b.x, var_0.b.x), vec4<bool>(arg_1.b.x, true, var_0.b.x, false), true), vec4<bool>(true, true, arg_0.b.x, arg_0.b.x))), arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 826f)) >= _wgslsmith_f_op_f32(-1168f + arg_3), arg_3 > _wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(-arg_3))));
    global0 = array<vec2<bool>, 2>();
    let var_2 = !(!any(vec3<bool>(false, !arg_1.b.x, false)));
    return Struct_1(-1i, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x << (u_input.c % 32u), u_input.b.x), _wgslsmith_mult_i32(21706i, -33255i))) | u_input.a.x;
    global1 = array<Struct_1, 31>();
    var var_1 = func_1(global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(~u_input.d.x, u_input.c | 1u)), 13u)], Struct_1(_wgslsmith_add_i32(-u_input.a.x, u_input.b.x), vec4<bool>(true, true, true, true)), _wgslsmith_add_i32(-20012i, u_input.b.x), _wgslsmith_div_f32(2185f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1395f)), _wgslsmith_f_op_f32(select(-1000f, 284f, false))))));
    var var_2 = global1[_wgslsmith_index_u32(27435u, 31u)];
    var_1 = global1[_wgslsmith_index_u32(countOneBits(~1u), 31u)];
    var var_3 = vec2<i32>(var_1.a, ~8841i) & select(u_input.b.zx, -u_input.b.zx, var_1.b.zx);
    global1 = array<Struct_1, 31>();
    let var_4 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d.x, 48583u), u_input.d.x), 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 31u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, var_3.x), max(vec3<i32>(u_input.a.x, var_1.a, var_2.a), u_input.b)), _wgslsmith_sub_i32(-2147483647i, var_2.a) >> (~u_input.d.x % 32u)) | 19719i, _wgslsmith_f_op_f32(-1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1039f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-914f, 1362f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1895f)), _wgslsmith_f_op_f32(step(-1358f, -848f)))), !(var_1.b.x | true))), 829f, _wgslsmith_f_op_f32(f32(-1f) * -825f)), 23676i, _wgslsmith_f_op_f32(f32(-1f) * -380f));
}

