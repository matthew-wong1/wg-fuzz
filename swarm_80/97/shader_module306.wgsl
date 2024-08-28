struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 0u;

var<private> global2: f32 = -927f;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: bool) -> vec3<u32> {
    var var_0 = 4294967295u << (arg_0.x % 32u);
    var var_1 = all(global0.a);
    var_0 = ~(~4294967295u);
    let var_2 = Struct_1(select(global0.a, select(select(!vec4<bool>(true, arg_3, arg_3, global0.a.x), select(vec4<bool>(false, arg_3, true, arg_3), global0.a, true), global0.a), global0.a, vec4<bool>(any(global0.a), !arg_3, false, all(global0.a.wy))), global0.a), 1661f);
    let var_3 = u_input.b;
    return arg_0.xzz;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    return !global0.a.yxw;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = Struct_1(!arg_0, _wgslsmith_f_op_f32(-global0.b));
    global1 = select(~(~1u), 1u, any(select(select(vec3<bool>(false, true, arg_0.x), var_0.a.yyx, select(vec3<bool>(arg_0.x, false, global0.a.x), global0.a.wzz, var_0.a.wwx)), func_3(Struct_1(vec4<bool>(global0.a.x, false, global0.a.x, false), 1071f)), global0.a.xzz)));
    var var_1 = vec4<u32>(~(~(~4294967295u)), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(22636u, 44195u, 2845u, 0u), vec4<u32>(4294967295u, 1u, 1u, 27359u)))), _wgslsmith_clamp_u32(67883u, 1u, reverseBits(~(~4294967295u))), ~4294967295u);
    let var_2 = var_0.b;
    let var_3 = -abs(vec3<i32>(-25636i, _wgslsmith_sub_i32(~u_input.a.x, -u_input.b.x), -4767i));
    return ~reverseBits(16093u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(1u, 1u, 4294967295u, 39739u)), ~vec4<u32>(~21510u, firstLeadingBit(1u), 1u, firstTrailingBit(4294967295u)));
    let var_0 = ~4294967295u;
    global1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~8731u, 1u, _wgslsmith_mod_u32(var_0, 32020u) & _wgslsmith_mod_u32(73173u, var_0)), ~(~func_1(vec4<u32>(1023u, 52393u, var_0, 1u), 13900u, vec4<f32>(global0.b, -1241f, global0.b, 435f), global0.a.x))), select(vec3<u32>(4294967295u >> (countOneBits(var_0) % 32u), var_0, ~1u), (vec3<u32>(1u, 0u, var_0) & select(vec3<u32>(var_0, 39966u, 4294967295u), vec3<u32>(var_0, 55944u, var_0), false)) & vec3<u32>(var_0, max(4294967295u, 54758u), func_2(vec4<bool>(false, global0.a.x, true, true))), vec3<bool>(true, all(vec3<bool>(true, true, false)), !global0.a.x)));
    var var_1 = Struct_1(select(global0.a, global0.a, select(global0.a, global0.a, global0.a)), _wgslsmith_f_op_f32(exp2(global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xx);
}

