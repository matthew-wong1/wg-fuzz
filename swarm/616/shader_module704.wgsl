struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(-1i, 17207i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 46957i), vec3<i32>(-7845i, 18847i, 1i), vec3<i32>(-26485i, -1i, 14433i), vec3<i32>(0i, 2147483647i, -9224i), vec3<i32>(-15582i, 56836i, 34080i), vec3<i32>(2147483647i, -14848i, 22276i), vec3<i32>(i32(-2147483648), 0i, 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(738f, _wgslsmith_f_op_f32(max(-620f, -122f))))), -660f, -925f, -1211f);
    return ~(~(~1u));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(1i, 1i), true, true);
    var var_1 = func_3(Struct_1(-7928i, true, (~u_input.b.x < u_input.b.x) || var_0.b));
    var var_2 = Struct_1(-35598i << (_wgslsmith_dot_vec4_u32(firstLeadingBit(max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a, 0u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 46170u))), select(vec4<u32>(u_input.c.x, u_input.a, 0u, 0u), ~vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.c.x), vec4<bool>(var_0.c, true, var_0.c, true))) % 32u), any(vec3<bool>(false, !var_0.b, var_0.b)), !all(select(select(vec4<bool>(var_0.c, var_0.b, true, false), vec4<bool>(false, true, true, true), vec4<bool>(var_0.c, var_0.c, true, var_0.b)), select(vec4<bool>(var_0.b, true, var_0.c, var_0.c), vec4<bool>(false, var_0.b, var_0.b, var_0.c), vec4<bool>(false, var_0.c, var_0.b, false)), true)));
    let var_3 = -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-11107i, u_input.b.x, 48087i, 17922i), vec4<i32>(u_input.b.x, 0i, var_2.a, u_input.b.x)), var_0.a | -1i, abs(-2147483647i)), var_2.a), u_input.b.zx);
    var_1 = ~(~u_input.c.x);
    return vec4<bool>(false, all(!select(!vec3<bool>(false, var_2.b, true), vec3<bool>(var_2.b, var_0.b, var_0.b), select(vec3<bool>(true, var_2.c, false), vec3<bool>(true, false, var_0.b), vec3<bool>(var_2.b, false, var_0.c)))), var_0.b, any(vec2<bool>(true, true)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = select(func_2(), select(!func_2(), select(select(vec4<bool>(arg_2.c.c, arg_2.a.b, arg_2.b, arg_2.c.b), select(vec4<bool>(arg_2.a.b, true, false, arg_2.c.b), vec4<bool>(arg_2.a.c, false, arg_2.c.b, false), vec4<bool>(false, false, arg_2.b, false)), arg_2.b || arg_2.b), !vec4<bool>(true, arg_2.b, arg_2.c.b, arg_2.b), all(!vec3<bool>(false, arg_2.b, arg_2.a.b))), func_2().x), vec4<bool>(all(!(!vec4<bool>(arg_2.c.b, true, false, arg_2.a.c))), true || (arg_2.b && !arg_2.a.c), !arg_2.b, all(select(vec3<bool>(arg_2.b, true, true), vec3<bool>(false, arg_2.a.b, arg_2.b), true && arg_2.a.b))));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 0u), u_input.a, 67134u), u_input.c.x)), ~select(~vec2<u32>(16000u, 53770u), vec2<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.c.x)), func_2().wz));
    let var_2 = !(1u <= var_1.x) && arg_2.b;
    var_0 = !(!select(!func_2(), !vec4<bool>(true, false, var_2, true), true));
    let var_3 = 72939i;
    return arg_2.a.a | u_input.b.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = array<vec4<u32>, 2>();
    let var_0 = vec2<f32>(1f, 1f);
    return vec3<bool>(arg_1.x, var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), true);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> StorageBuffer {
    var var_0 = -454f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-656f - -1533f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1496f))))) * _wgslsmith_f_op_f32(ceil(778f)));
    let var_2 = 1u;
    var var_3 = true;
    let var_4 = !(!arg_2.x);
    return StorageBuffer(vec2<i32>(-20545i, firstTrailingBit(50722i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(select(-407f, var_1, arg_2.x)))), u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.c, abs(abs(vec2<u32>(u_input.a, arg_1.x)))), _wgslsmith_add_i32(u_input.b.x, u_input.b.x ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(-41775i, 1i, u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    let x = u_input.a;
    s_output = func_5(u_input.a, u_input.c, !func_4(vec2<i32>(func_1(u_input.b.x, vec4<f32>(-443f, -593f, -323f, 1384f), Struct_2(Struct_1(u_input.b.x, true, false), false, Struct_1(u_input.b.x, false, false))), func_1(0i, vec4<f32>(739f, 757f, 344f, -1159f), Struct_2(Struct_1(u_input.b.x, false, false), true, Struct_1(u_input.b.x, true, true)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))));
}

