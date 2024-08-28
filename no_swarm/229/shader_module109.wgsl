struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    global0 = array<Struct_1, 8>();
    var var_0 = !vec2<bool>(all(vec2<bool>(!arg_0.x, arg_0.x)), !(-32206i >= u_input.d.x));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_1 = !vec2<bool>(all(vec2<bool>(var_0.x & false, any(vec3<bool>(true, var_0.x, false)))), !arg_0.x);
    return 7038u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(~u_input.b, u_input.b, u_input.b, func_1(select(vec2<bool>(true, false), vec2<bool>(false, false), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, -1000f)))), ~vec4<u32>(countOneBits(firstLeadingBit(2452u)), u_input.b, _wgslsmith_clamp_u32(func_1(vec2<bool>(true, false), vec2<f32>(1000f, 1020f)), 1u, u_input.b), u_input.b)), 8u)];
    let var_1 = _wgslsmith_mod_i32(var_0.c.x, var_0.c.x ^ firstTrailingBit(u_input.c.x & var_0.c.x));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_add_u32(u_input.b, u_input.b)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 1u), abs(vec2<u32>(1u, 0u))), 1u)), 8u)];
    global1 = _wgslsmith_mod_u32(u_input.b, u_input.b);
    global0 = array<Struct_1, 8>();
    global1 = u_input.b;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 8u)];
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-515f);
}

