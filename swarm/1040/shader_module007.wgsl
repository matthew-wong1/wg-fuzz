struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<i32> {
    global0 = false;
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.wyy, u_input.a.wyw), vec3<i32>(u_input.b, -19913i, 49083i), u_input.a.xwz), -(~u_input.a.xyz)), u_input.a.x), -2147483647i);
    let var_1 = Struct_2(select(vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, true))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true));
    global0 = any(var_1.a.xx);
    global0 = any(vec4<bool>(~4294967295u <= arg_2.x, false || (any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) | (false || var_1.a.x)), (arg_0.b > _wgslsmith_f_op_f32(271f - 139f)) && any(vec2<bool>(var_1.a.x, var_1.a.x)), true));
    return -countOneBits(vec2<i32>(abs(-43193i), -13442i));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> u32 {
    global0 = arg_0.x;
    let var_0 = ~(~(~1u));
    var var_1 = Struct_3(abs(func_3(Struct_1(vec4<u32>(58146u, 1u, 30707u, arg_1.a), _wgslsmith_f_op_f32(-301f + 685f), _wgslsmith_f_op_f32(2028f + -222f)), vec2<f32>(-317f, 2318f), ~(~vec2<u32>(arg_1.a, var_0)))), Struct_2(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), true);
    global0 = var_1.b.a.x;
    var var_2 = u_input.a.x == 2147483647i;
    return ~arg_1.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_1(vec4<u32>(~abs(~arg_2.a), max(_wgslsmith_div_u32(firstLeadingBit(1u), 4294967295u), reverseBits(arg_2.a)), ~(arg_2.a << (~arg_2.a % 32u)), arg_2.a), arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), arg_1)));
    var_0 = Struct_1(vec4<u32>(~func_2(!vec4<bool>(true, arg_0, arg_0, arg_0), Struct_4(11380u)), countOneBits(var_0.a.x), var_0.a.x, ~firstLeadingBit(arg_2.a)), 503f, var_0.c);
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a, _wgslsmith_mod_vec4_u32(vec4<u32>(79707u, var_0.a.x, arg_2.a, 0u), ~vec4<u32>(arg_2.a, 25028u, 1u, 5555u))), var_0.a & vec4<u32>(arg_2.a & 89279u, 0u, arg_2.a, var_0.a.x)));
    let var_2 = -(~u_input.a.x);
    let var_3 = -86142i;
    return !(!(!all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    global0 = true;
    let var_0 = Struct_2(vec4<bool>(all(!(!arg_0.xz)), !any(!vec4<bool>(false, true, arg_1.a.x, true)), !(!any(vec2<bool>(arg_1.a.x, true))), arg_1.a.x));
    global0 = true;
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, min(31250i, u_input.a.x)), countOneBits(func_3(Struct_1(vec4<u32>(0u, 29135u, 4294967295u, 18713u), arg_2, arg_2), vec2<f32>(-829f, 172f), vec2<u32>(1u, 20215u)).x) >> (41199u % 32u)), Struct_2(vec4<bool>(var_0.a.x, true, var_0.a.x, 4294967295u == select(3168u, 14708u, arg_1.a.x))), arg_0.x || true);
    global0 = !all(select(select(vec4<bool>(var_1.b.a.x, arg_1.a.x, arg_1.a.x, var_0.a.x), !arg_1.a, var_0.a.x), select(var_0.a, !vec4<bool>(false, false, true, arg_1.a.x), true), arg_1.a.x));
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(493f + -1766f))))), 486f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(any(vec2<bool>(true, true)), true, func_1(true, -1623f, Struct_4(~0u), min(vec4<i32>(0i, -42266i, -19772i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-30102i, -1i, u_input.a.x, -1i), u_input.a, vec4<i32>(u_input.b, u_input.a.x, u_input.b, -1i))))), Struct_2(!vec4<bool>(true, all(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -104f)));
    let var_1 = true;
    var var_2 = Struct_4(_wgslsmith_clamp_u32(1u, 1u, _wgslsmith_sub_u32(max(1873u >> (1u % 32u), 0u), countOneBits(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

