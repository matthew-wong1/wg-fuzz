struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 2695u, 6943u);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = vec3<u32>(4294967295u, ~u_input.a, _wgslsmith_add_u32(9079u, abs(25348u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.c), vec3<u32>(arg_0.c, global0.x, 57301u)))));
    global2 = array<Struct_1, 19>();
    var var_0 = Struct_1(all(vec3<bool>(arg_0.b.x, arg_0.a, !(!arg_0.a))), select(select(vec4<bool>(arg_0.a, arg_0.b.x & true, true, all(vec3<bool>(true, true, arg_0.b.x))), vec4<bool>(any(vec4<bool>(arg_0.a, arg_0.b.x, false, arg_0.b.x)), arg_0.a, !arg_0.a, all(arg_0.b.xxz)), !(-2147483647i < u_input.b)), vec4<bool>(-global1.x > _wgslsmith_mod_i32(-1i, 1646i), all(!arg_0.b.xzw), -20883i < abs(u_input.b), all(select(arg_0.b.yz, arg_0.b.yz, arg_0.b.yx))), arg_0.b), 1u);
    let var_1 = arg_0.b.yw;
    let var_2 = Struct_1(true, vec4<bool>(var_1.x, true, var_1.x, true), 53411u);
    return 66980u;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(arg_1, !(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1))), ~1u << (~_wgslsmith_add_u32(global0.x ^ u_input.a, ~1u) % 32u));
    var var_1 = vec3<bool>(arg_1, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 2827u, global0.x, global0.x) ^ vec4<u32>(u_input.a, 14414u, var_0.c, 4343u), ~vec4<u32>(var_0.c, 1u, global0.x, u_input.a)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 0u), vec4<u32>(u_input.a, 1u, 4294967295u, 5345u), vec4<u32>(u_input.a, global0.x, 37550u, 0u))) < global0.x, arg_1);
    global2 = array<Struct_1, 19>();
    global0 = vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(14956u, min(func_3(var_0), var_0.c))), ~1u, ~_wgslsmith_add_u32(~9471u, firstLeadingBit(_wgslsmith_mod_u32(1u, global0.x))));
    var var_2 = var_0;
    return -(~(~(-_wgslsmith_add_i32(0i, arg_0.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = true;
    global0 = ~countOneBits(~vec3<u32>(~4294967295u, _wgslsmith_sub_u32(arg_0.x, 1u), ~1u));
    let var_1 = ~(~max(-vec4<i32>(37900i, global1.x, 1i, global1.x) ^ (vec4<i32>(global1.x, -55631i, 2147483647i, 2147483647i) ^ vec4<i32>(u_input.b, 0i, global1.x, global1.x)), -vec4<i32>(global1.x, u_input.b, 9131i, -42979i)));
    global2 = array<Struct_1, 19>();
    let var_2 = Struct_1(false, arg_1, ~_wgslsmith_add_u32(select(global0.x, 13651u, all(arg_1)), ~0u));
    return ~(-vec3<i32>(global1.x | 0i, 39590i, func_2(var_1.ywy, false)) & ~select(vec3<i32>(global1.x, 2147483647i, var_1.x), vec3<i32>(global1.x, -1i, global1.x), -1i > global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(1367f)), -516f, _wgslsmith_f_op_f32(round(345f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-236f)), -917f), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, _wgslsmith_mod_i32(-9289i, global1.x), 1i), ~func_1(global0.zy, vec4<bool>(true, true, false, false))), 2518u);
}

