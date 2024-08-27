struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(0i);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    let var_0 = !vec2<bool>(any(vec4<bool>(select(global1.x, false, false), all(vec3<bool>(false, true, global1.x)), global1.x, global1.x)), !((global1.x & false) && global1.x));
    let var_1 = max(firstLeadingBit(reverseBits(-vec4<i32>(arg_0.a, 2147483647i, 0i, arg_0.a))), -abs(select(vec4<i32>(arg_0.a, 1879i, -54328i, arg_1), vec4<i32>(1i, arg_0.a, 1i, arg_0.a), false) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 10906u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 738u, u_input.a)) % vec4<u32>(32u))));
    global1 = !(!vec2<bool>(select(arg_2.x < 526f, true, false), all(select(vec3<bool>(true, global1.x, false), vec3<bool>(var_0.x, var_0.x, false), true))));
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-1325f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(abs(2492f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(363f, arg_2.x), -811f), _wgslsmith_f_op_f32(min(arg_2.x, 1640f)), _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, var_0.x))), Struct_2(all(!select(vec3<bool>(var_0.x, var_0.x, global1.x), vec3<bool>(global1.x, true, var_0.x), var_0.x)), Struct_1(-var_1.x ^ -21673i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -313f))) - vec2<f32>(arg_2.x, arg_2.x)), ~(149684u >> (u_input.a % 32u)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(arg_0.a, -73190i), -2147483647i, ~global0.a), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, -1i, global0.a), var_1.xxy, var_1.zzz)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(arg_2.x, -1435f)), _wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(811f, arg_2.x)), global1.x)), ~select(max(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, 9210u), select(false, false, global1.x))), !(!vec2<bool>(any(var_0), var_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(481f - arg_2.x), _wgslsmith_f_op_f32(trunc(var_2.b.b.b.x))) + _wgslsmith_f_op_vec2_f32(var_2.a.yx - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1116f, var_2.a.x)))))));
    return firstLeadingBit(2147483647i);
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    global0 = Struct_5(func_3(Struct_5(-28453i >> (u_input.a % 32u)), 0i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -610f), -415f)) ^ ~55117i);
    global0 = Struct_5(i32(-1i) * -53724i);
    global0 = Struct_5(_wgslsmith_clamp_i32(~arg_0.b.a, 6024i, ~abs(_wgslsmith_mod_i32(20003i, 1i))));
    let var_0 = arg_0;
    let var_1 = Struct_5(_wgslsmith_mod_i32(-1i, global0.a));
    return Struct_5(func_3(var_1, var_0.b.a << (arg_0.b.c % 32u), _wgslsmith_f_op_vec2_f32(-arg_0.b.b)));
}

fn func_1() -> Struct_5 {
    global1 = vec2<bool>(true, true);
    global1 = vec2<bool>(false, true);
    var var_0 = all(select(!select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, true, true, false)), false), vec4<bool>(global1.x, !(global1.x || global1.x), global1.x & true, false), global1.x));
    var var_1 = func_2(Struct_2(false, Struct_1(~(global0.a ^ 0i), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-457f, -796f))), 1u)));
    global0 = func_2(Struct_2(false, Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, -2147483647i, global0.a, -12125i), vec4<i32>(var_1.a, var_1.a, global0.a, -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-460f, 1362f) * vec2<f32>(-469f, -2467f))), ~(38474u | u_input.a))));
    return Struct_5(~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = min(vec2<u32>(1u & _wgslsmith_mod_u32(min(0u, 4294967295u), 4294967295u ^ u_input.a), ~1u), ~abs(vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer((global0.a | func_1().a) >> ((var_0.x << (u_input.a % 32u)) % 32u), -3312i, vec2<i32>(1i | max(-1i, _wgslsmith_sub_i32(-46681i, global0.a)), global0.a), countOneBits(~select(vec4<u32>(5046u, u_input.a, 30231u, var_0.x), vec4<u32>(1u, var_0.x, 54871u, u_input.a), true)) ^ vec4<u32>(var_0.x, ~u_input.a, ~min(var_0.x, 70513u), u_input.a), 1u);
}

