struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1244f)) * _wgslsmith_f_op_f32(1318f * 460f)))) + -922f);
    let var_1 = !(_wgslsmith_add_i32(-1i, 1i) > u_input.b);
    global0 = Struct_1(!arg_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.a.b, ~(-37494i)), -73759i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.b, arg_2.b, -1i, arg_0.a.b), vec4<i32>(1i, -27367i, u_input.a.x, global0.b))), -41606i), select(vec4<i32>(2147483647i, -51372i, 24036i, 0i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a.b, arg_1.a.b, -2147483647i, -2147483647i), vec4<i32>(45772i, arg_0.a.b, 2147483647i, arg_1.a.b), vec4<i32>(-2147483647i, arg_2.b, -1i, 2147483647i)), true)));
    global0 = Struct_1(!select(!arg_0.a.a, arg_2.a, select(arg_1.a.a, vec3<bool>(true, arg_1.a.a.x, arg_1.a.a.x), arg_2.a.x | arg_0.a.a.x)), -arg_2.b);
    var var_2 = u_input.d;
    return !(!arg_1.a.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    global0 = Struct_1(vec3<bool>(global0.a.x, all(arg_1.yzw), false), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(vec3<i32>(-1i, global0.b, 1i))), vec3<i32>(2147483647i, u_input.b, 0i >> (u_input.d % 32u)))));
    global0 = arg_0;
    global0 = Struct_1(func_3(Struct_2(Struct_1(vec3<bool>(global0.a.x, false, arg_1.x), 0i), false), Struct_2(Struct_1(select(arg_1.yyx, global0.a, arg_1.x), -1i), arg_0.a.x), arg_0), 11220i);
    global0 = arg_0;
    let var_0 = Struct_1(!select(select(!global0.a, !arg_0.a, true), global0.a, arg_1.x), global0.b);
    return ~0u;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = Struct_1(!vec3<bool>(true, !any(vec2<bool>(arg_0.a.x, arg_0.a.x)), true), -107817i);
    let var_0 = vec2<u32>(firstLeadingBit(func_2(arg_0, !select(vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), global0.a.x))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(u_input.d, ~0u, true), 86751u), countOneBits(_wgslsmith_mod_u32(firstLeadingBit(63979u), _wgslsmith_add_u32(u_input.e, 1u))), ~2243u));
    var var_1 = select(select(!(!(!vec4<bool>(true, true, arg_0.a.x, global0.a.x))), !select(select(vec4<bool>(true, false, true, arg_0.a.x), vec4<bool>(false, true, global0.a.x, true), vec4<bool>(true, global0.a.x, global0.a.x, arg_0.a.x)), !vec4<bool>(global0.a.x, false, arg_0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)), !global0.a.x), vec4<bool>(global0.a.x | global0.a.x, arg_0.a.x, true, true), vec4<bool>(arg_0.a.x, !arg_0.a.x, !any(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true)), all(vec3<bool>(false, true, any(arg_0.a)))));
    var var_2 = Struct_2(arg_0, any(vec4<bool>(all(vec3<bool>(true, true, true)), func_3(Struct_2(arg_0, var_1.x), Struct_2(arg_0, var_1.x), Struct_1(var_1.zwy, global0.b)).x, !global0.a.x, arg_0.a.x)));
    global0 = Struct_1(vec3<bool>(any(var_1.yz), false, var_2.a.a.x), max(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_2.a.b, 22497i)), u_input.a), var_2.a.b));
    return vec3<bool>(any(vec4<bool>(all(select(vec4<bool>(true, var_2.a.a.x, arg_0.a.x, global0.a.x), vec4<bool>(var_2.a.a.x, false, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, arg_0.a.x))), any(vec2<bool>(true, false)), arg_0.a.x, !(!arg_0.a.x))), var_2.b, global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(select(!select(vec3<bool>(global0.a.x, global0.a.x, true), global0.a, vec3<bool>(false, global0.a.x, global0.a.x)), select(global0.a, vec3<bool>(global0.a.x, global0.a.x, global0.a.x), func_1(Struct_1(vec3<bool>(global0.a.x, true, true), global0.b))), -1i == ~global0.b), vec3<bool>(!any(global0.a.xx), global0.a.x, !select(global0.a.x, true, false)), func_3(Struct_2(Struct_1(global0.a, global0.b), global0.a.x), Struct_2(Struct_1(global0.a, global0.b), !global0.a.x), Struct_1(func_3(Struct_2(Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), 24223i), global0.a.x), Struct_2(Struct_1(global0.a, -11991i), true), Struct_1(vec3<bool>(true, global0.a.x, true), global0.b)), _wgslsmith_mult_i32(-11135i, u_input.b)))), min(~global0.b, 1i));
    let var_0 = Struct_1(!global0.a, u_input.a.x);
    var var_1 = Struct_2(Struct_1(var_0.a, 2147483647i), !(u_input.a.x < 15844i));
    var var_2 = Struct_1(vec3<bool>(true, select(var_1.a.a.x || global0.a.x, u_input.d > u_input.d, true) && (all(vec4<bool>(false, global0.a.x, var_0.a.x, var_0.a.x)) | false), !func_1(Struct_1(vec3<bool>(false, false, true), global0.b)).x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~(~global0.b), 54180i), ~var_0.b));
    var var_3 = select(vec4<bool>(true, u_input.c.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 19051u, 900u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.c.x), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c.x), vec4<u32>(1u, 55348u, 0u, 50969u))), !all(global0.a), !global0.a.x & var_1.b), vec4<bool>(any(vec2<bool>(global0.a.x, global0.a.x)), true, all(!vec4<bool>(true, false, false, var_2.a.x)), var_0.a.x & true), !vec4<bool>(func_3(Struct_2(var_1.a, true), Struct_2(Struct_1(global0.a, global0.b), false), Struct_1(global0.a, 58579i)).x, all(var_2.a) || func_1(Struct_1(vec3<bool>(var_2.a.x, false, true), 0i)).x, var_2.a.x, all(var_0.a.zz)));
    var_2 = Struct_1(global0.a, -5892i);
    var_2 = Struct_1(select(func_3(Struct_2(var_1.a, any(vec3<bool>(false, false, global0.a.x))), Struct_2(Struct_1(var_3.zzz, -47049i), global0.a.x), var_0), !var_3.zwx, vec3<bool>(var_3.x, var_1.b, all(!vec4<bool>(true, global0.a.x, true, true)))), 20790i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.b), -(~vec2<i32>(36763i, ~(-34220i))), ~(~vec4<u32>(u_input.d, 1u, u_input.d, u_input.d)) << (~vec4<u32>(_wgslsmith_mult_u32(u_input.e, u_input.c.x), _wgslsmith_add_u32(u_input.e, 10091u), 1u, max(1u, 1u)) % vec4<u32>(32u)));
}

