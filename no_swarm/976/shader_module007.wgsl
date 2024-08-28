struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> bool {
    let var_0 = -(~(u_input.b.x >> (abs(arg_2.x) % 32u))) << (u_input.c % 32u);
    let var_1 = vec4<bool>(arg_2.x == abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(35570u, 22294u))), true, !(arg_1.x && all(vec4<bool>(true, false, true, arg_1.x))) | arg_1.x, true);
    let var_2 = (_wgslsmith_mult_u32(u_input.c, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(74023u, arg_2.x, u_input.c), arg_2.zyz), _wgslsmith_div_vec3_u32(arg_2.xzz, arg_2.wzz))) & select(_wgslsmith_add_u32(24078u & u_input.c, firstTrailingBit(u_input.c)), ~min(2335u, arg_2.x), any(var_1.wyw))) ^ ~12829u;
    let var_3 = 619f;
    let var_4 = Struct_1(vec2<bool>(41698i >= (-var_0 << (firstLeadingBit(7531u) % 32u)), !arg_1.x));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = 76926u & _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, 4294967295u, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 23688u, 4294967295u), vec3<u32>(u_input.c, u_input.c, 102556u)), vec3<u32>(u_input.c, 31705u, 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c) ^ vec3<u32>(u_input.c, u_input.c, 0u)));
    return !(!select(vec4<bool>(!arg_0.a.x, arg_0.a.x, func_3(vec4<f32>(169f, -486f, -903f, 780f), vec3<bool>(false, false, true), vec4<u32>(16277u, 13204u, 1u, 4294967295u)), true), !select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, arg_1.x, arg_1.x, false), arg_1.x), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(2684f, -1043f, 853f, 1578f) - vec4<f32>(-778f, 1783f, 451f, 129f)), vec3<bool>(false, true, false), ~vec4<u32>(u_input.c, u_input.c, 16011u, 1u))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    let var_0 = vec2<bool>(arg_1.a.x, any(select(select(select(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)), !vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)), func_2(arg_1, arg_1.a), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), false)))));
    var var_1 = abs(0u);
    var_1 = _wgslsmith_mod_u32(arg_2, abs(40668u));
    var var_2 = u_input.b;
    var_1 = ~_wgslsmith_mod_u32(arg_3.x, 1u) ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(~(~arg_3.x), ~(~arg_3.x)), _wgslsmith_sub_u32(0u << (_wgslsmith_clamp_u32(arg_3.x, 28218u, 0u) % 32u), ~max(73170u, arg_2)));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.c, ~(~_wgslsmith_add_u32(4294967295u << (u_input.c % 32u), ~0u)), _wgslsmith_mod_u32(countOneBits(func_1(-1i, Struct_1(vec2<bool>(true, false)), u_input.c, vec3<u32>(0u, 1u, u_input.c))), ~4294967295u) >> (u_input.c % 32u), 0u);
    var var_1 = Struct_1(!(!func_2(Struct_1(vec2<bool>(true, false)), vec2<bool>(false, false)).xy));
    var_1 = Struct_1(vec2<bool>(true, true));
    var_1 = Struct_1(!var_1.a);
    var_1 = Struct_1(var_1.a);
    let var_2 = Struct_1(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xwx, abs(~_wgslsmith_sub_u32(18538u, var_0.x)), vec3<u32>(var_0.x, ~1u, 33185u), u_input.b.x, firstLeadingBit(0u) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.c), var_0.zx), ~1u));
}

