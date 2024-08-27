struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 1u, 44172u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = firstTrailingBit(u_input.a);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_1 = Struct_1(abs(u_input.b) ^ -2147483647i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(146f, 1162f)) + _wgslsmith_f_op_f32(f32(-1f) * -1168f)), _wgslsmith_f_op_f32(select(-1000f, -1457f, true)))))));
    return ~vec3<u32>(reverseBits(~_wgslsmith_div_u32(37131u, 1u)), var_0, max(_wgslsmith_add_u32(~4565u, var_0), global0[_wgslsmith_index_u32(0u, 3u)] | _wgslsmith_mult_u32(61272u, u_input.a)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = array<u32, 3>();
    var var_0 = abs(vec3<u32>(~(u_input.a >> (u_input.a % 32u)), select(_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a)), 0u, true), 17145u));
    global0 = array<u32, 3>();
    var_0 = func_3();
    let var_1 = !((0i == -(arg_0 & u_input.b)) || !(countOneBits(arg_0) != 1i));
    return Struct_1(u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-1257f, -878f, true))), 1363f)))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = u_input.d;
    let var_1 = Struct_2(func_2(-14600i, true));
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_0));
    global0 = array<u32, 3>();
    let var_3 = false;
    return firstLeadingBit(firstLeadingBit(~vec4<u32>(23738u, 4294967295u, global0[_wgslsmith_index_u32(49742u, 3u)], 52939u) >> (vec4<u32>(u_input.a, ~u_input.a, ~u_input.a, ~u_input.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    let var_0 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, 21756i), vec2<i32>(-19380i, -562i) & vec2<i32>(u_input.d, u_input.c)), max(0i, 76946i), firstLeadingBit(2147483647i)), -202f);
    var var_1 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)], 8875u, 29751u), func_1(var_0.b)), vec4<u32>(~(~1u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)] & 81054u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 0u, global0[_wgslsmith_index_u32(u_input.a, 3u)]), 3u)]), ~1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 0u, ~u_input.a))));
    var_1 = abs(~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, 3857u, u_input.a, 4294967295u), countOneBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, 84963u))), ~firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]))));
    global0 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_0.b, vec4<f32>(-258f, _wgslsmith_f_op_f32(-var_0.b), 1470f, -214f));
}

