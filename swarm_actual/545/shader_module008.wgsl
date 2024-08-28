struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_clamp_u32(~(~(~_wgslsmith_sub_u32(1u, global1.a.b))), arg_0.b, arg_0.b);
    global0 = array<vec4<i32>, 15>();
    global0 = array<vec4<i32>, 15>();
    var var_1 = Struct_2(arg_0);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(-43142i, abs(u_input.c.x)), arg_1.x, _wgslsmith_f_op_f32(-arg_0.c), false, true));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = select(select(vec3<bool>(arg_0.e, !arg_0.d, func_3(Struct_1(u_input.a.x, 38711u, 643f, arg_0.e, true), u_input.b.zzx)), !select(!vec3<bool>(arg_0.d, global1.a.d, true), vec3<bool>(false, true, true), vec3<bool>(arg_0.e, false, true)), true), !select(select(!vec3<bool>(global1.a.d, false, arg_0.d), vec3<bool>(global1.a.d, arg_0.e, global1.a.e), select(vec3<bool>(arg_0.d, global1.a.e, arg_0.e), vec3<bool>(false, global1.a.d, arg_0.e), true)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, arg_0.e), vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(arg_0.e, arg_0.d, false)), vec3<bool>(arg_0.d, true, false)), !any(vec3<bool>(global1.a.e, false, global1.a.e))), arg_0.d);
    let var_1 = arg_0;
    let var_2 = arg_0.a;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(43059u, ~(~1u)), global1.a.b << (_wgslsmith_sub_u32(45259u, firstLeadingBit(1u)) % 32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(~max(arg_0.b, 1u), u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, ~u_input.b.x, u_input.b.x), max(~vec3<u32>(u_input.b.x, arg_0.b, 4294967295u), vec3<u32>(75886u, arg_0.b, 53096u)))));
    global1 = Struct_2(arg_0);
    return var_1.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(-7556i, arg_3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - arg_2))) + -1339f)), arg_1.e, func_2(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wwy * arg_0.xxz) + vec3<f32>(1271f, arg_1.c, 682f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.c, 858f, arg_3.a.c))))));
    let var_1 = ~reverseBits(~(~firstTrailingBit(arg_3.a.b)));
    var var_2 = Struct_1(-(_wgslsmith_div_i32(-1i, arg_1.a) & 16760i), 1u << (((~arg_1.b << ((1u & var_1) % 32u)) & var_1) % 32u), -587f, !(var_0.e & (4294967295u > var_1)) || !(_wgslsmith_f_op_f32(floor(-778f)) >= _wgslsmith_f_op_f32(max(-130f, arg_0.x))), false);
    let var_3 = u_input.b.xwx;
    var var_4 = 37384u;
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = global1.a.b;
    let var_1 = vec3<i32>(u_input.c.x, global1.a.a, 19885i);
    var var_2 = Struct_1(_wgslsmith_mod_i32(max(0i, reverseBits(global1.a.a)), _wgslsmith_clamp_i32(~(-var_1.x), global1.a.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(1i, global1.a.a, global1.a.a, 6898i), vec4<i32>(-2147483647i, -30939i, 2147483647i, global1.a.a)), max(vec4<i32>(u_input.d, arg_1.a, 2147483647i, -2147483647i), vec4<i32>(0i, 76113i, global1.a.a, -70404i))))), 22729u, arg_1.c, all(vec2<bool>(false, 334f != _wgslsmith_f_op_f32(-arg_1.c))), arg_1.d);
    global0 = array<vec4<i32>, 15>();
    var var_3 = abs(((abs(u_input.b) >> (~u_input.b % vec4<u32>(32u))) | vec4<u32>(4294967295u, 17534u, ~arg_0, _wgslsmith_div_u32(24035u, var_2.b))) << (max(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.b, 4294967295u, arg_1.b, global1.a.b), vec4<u32>(24630u, 4294967295u, arg_1.b, 4294967295u)), vec4<u32>(global1.a.b, global1.a.b, global1.a.b, var_2.b)), firstTrailingBit(~u_input.b)) % vec4<u32>(32u)));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global1.a);
    let var_0 = Struct_2(Struct_1(-39587i, u_input.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(~global1.a.b, func_1(vec4<f32>(global1.a.c, global1.a.c, global1.a.c, 3839f), global1.a, global1.a.c, Struct_2(Struct_1(29433i, u_input.b.x, -1875f, false, global1.a.e))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1036f, global1.a.c)), (i32(-1i) * -2147483647i) >= ~global1.a.a)), !any(select(vec3<bool>(global1.a.e, false, true), vec3<bool>(global1.a.e, global1.a.e, global1.a.e), vec3<bool>(false, global1.a.e, global1.a.d))), false));
    global1 = Struct_2(Struct_1(_wgslsmith_add_i32(var_0.a.a, min(48561i, global1.a.a) << (_wgslsmith_div_u32(var_0.a.b, var_0.a.b) % 32u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~global1.a.b, ~43313u), var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c * _wgslsmith_f_op_f32(-var_0.a.c))), !var_0.a.e, !var_0.a.e));
    let var_1 = true;
    let var_2 = func_1(vec4<f32>(-459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)), var_0.a.c, 1f), global1.a, var_0.a.c, Struct_2(func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c, global1.a.c, var_0.a.c, global1.a.c)))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.c))), var_0)));
    var var_3 = abs(~1u);
    global0 = array<vec4<i32>, 15>();
    var var_4 = (22178u > firstLeadingBit(_wgslsmith_div_u32(19751u, min(var_0.a.b, u_input.e)))) && (4294967295u <= global1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yyy);
}

