struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(4294967295u, 23248u, 50350u), vec3<u32>(10776u, 0u, 49685u), vec3<u32>(0u, 16818u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(6018u, 0u, 12845u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(87155u, 51328u, 0u), vec3<u32>(1u, 49975u, 77622u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, 37556u, 0u), vec3<u32>(4294967295u, 93012u, 28950u), vec3<u32>(9930u, 4294967295u, 0u), vec3<u32>(11427u, 4294967295u, 1u), vec3<u32>(15677u, 4294967295u, 88461u), vec3<u32>(33814u, 9002u, 29510u), vec3<u32>(3457u, 16224u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(15130u, 0u, 1u), vec3<u32>(12089u, 0u, 71738u), vec3<u32>(123945u, 13975u, 4294967295u), vec3<u32>(40459u, 44448u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_2(vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), !select(true, all(vec3<bool>(true, false, true)), true), select(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)), false)), ~_wgslsmith_mod_u32(arg_0.x, ~arg_0.x), Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec2<u32>(~(~arg_0.x), 1u), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = Struct_1(vec4<bool>(var_0.c.c.x, true, true, true), ~(~arg_0.xy), vec2<bool>(!var_0.c.c.x, var_0.a.x && (true || all(vec3<bool>(true, true, false)))));
    return true;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global0 = array<vec3<u32>, 22>();
    let var_0 = Struct_4(4294967295u, Struct_3(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), func_3(u_input.a, 549f)), _wgslsmith_mult_u32(u_input.a.x & 73570u, u_input.a.x), Struct_1(vec4<bool>(false, true, false, false), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 13397u)), vec2<bool>(true, true))), 1188f, u_input.a, vec2<u32>(~u_input.a.x, ~u_input.a.x)));
    var var_1 = var_0.b.a;
    var var_2 = Struct_1(!(!vec4<bool>(true, !var_0.b.a.c.c.x, any(vec3<bool>(true, true, var_1.c.c.x)), !var_0.b.a.c.c.x)), _wgslsmith_sub_vec2_u32(~abs(~vec2<u32>(90161u, 14116u)), vec2<u32>(~u_input.a.x, ~(64146u | u_input.a.x))), !(!vec2<bool>(true, select(false, var_1.a.x, var_0.b.a.c.c.x))));
    var var_3 = arg_0;
    return select(select(vec4<bool>(var_2.a.x, false, var_2.a.x, true), var_0.b.a.c.a, var_2.c.x), !select(vec4<bool>(!var_2.a.x, var_2.c.x, false, any(var_2.a.zxy)), !(!var_1.c.a), true), var_2.a);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: bool) -> bool {
    global0 = array<vec3<u32>, 22>();
    let var_0 = select(select(func_2(~0i), !select(!vec4<bool>(arg_1, true, false, arg_2), func_2(40815i), !vec4<bool>(true, arg_2, false, false)), !(!select(vec4<bool>(true, false, arg_1, arg_2), vec4<bool>(true, false, false, arg_1), true))), !vec4<bool>(func_2(~(-1i)).x, false, true, true), !(!(!vec4<bool>(true, arg_2, arg_1, arg_1))));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(0i, countOneBits(-1i)), -1i, _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(2147483647i, -2147483647i, 1i) ^ (vec3<i32>(1i, 50392i, 3636i) >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, 2147483647i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(1i, -44839i, 1i), vec3<i32>(-1i, 0i, 6461i)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(~(-37062i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), -vec2<i32>(12997i, 29042i))), -_wgslsmith_mod_i32(0i, ~(-42671i))));
    return arg_0 >= _wgslsmith_sub_u32(0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1122f, -296f))))), _wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1449f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(507f))))));
    global0 = array<vec3<u32>, 22>();
    var var_1 = -1516f;
    global0 = array<vec3<u32>, 22>();
    var var_2 = !(firstLeadingBit(~8964u) >= ~u_input.a.x) | any(vec3<bool>(true, select(any(vec3<bool>(true, true, false)), func_1(u_input.a.x, false, false), true), true));
    global0 = array<vec3<u32>, 22>();
    var var_3 = vec4<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(41440u, u_input.a.x, u_input.a.x)) > u_input.a.x, false, !(2147483647i > (-2147483647i << (~u_input.a.x % 32u))), false);
    let x = u_input.a;
    s_output = StorageBuffer(-14900i, _wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1152f, var_0.x, var_0.x, 1000f), var_0)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0))))), true)), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1000f) + var_0.zwz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -833f, var_0.x), vec3<f32>(-276f, var_0.x, -1194f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(var_0 - var_0)))));
}

