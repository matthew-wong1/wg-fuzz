struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: array<u32, 18> = array<u32, 18>(49593u, 56961u, 44790u, 4294967295u, 90953u, 4294967295u, 1u, 0u, 20149u, 34818u, 0u, 4294967295u, 1u, 0u, 1u, 0u, 4294967295u, 15525u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    var var_0 = -954f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(859f + _wgslsmith_f_op_f32(select(1237f, -307f, true))))) * _wgslsmith_f_op_f32(trunc(-1487f))));
    var var_1 = -36073i;
    global0 = array<vec3<f32>, 13>();
    global1 = array<u32, 18>();
    return ~_wgslsmith_clamp_u32(arg_3, 40760u, ~(~_wgslsmith_sub_u32(22644u, 3547u)));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(firstTrailingBit(firstLeadingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 18u)], 18u)])), ~4294967295u) | ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~23746u ^ global1[_wgslsmith_index_u32(u_input.e.x, 18u)], 18u)], 18u)];
    let var_1 = -30708i;
    var_0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 18u)], 877u, 7706u, global1[_wgslsmith_index_u32(25372u, 18u)]) << (vec4<u32>(0u, 35937u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 18u)], 18u)]) % vec4<u32>(32u)), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 18u)], u_input.d, 4294967295u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], u_input.a), vec4<u32>(48107u, u_input.a, 369u, 1u))), firstLeadingBit(select(abs(vec4<u32>(0u, 1u, 0u, u_input.e.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 110621u, global1[_wgslsmith_index_u32(0u, 18u)], u_input.d), vec4<u32>(1u, u_input.e.x, u_input.a, 24776u), vec4<u32>(106454u, 0u, 1u, 0u)), true))));
    var_0 = ~(~func_2(~max(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28990u, 18u)], 18u)], 18u)], u_input.e.x, 1u), vec4<u32>(u_input.d, u_input.d, 16377u, 1u)), false, vec2<bool>(true, any(vec3<bool>(true, true, false))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(50487u, 18u)], 88796u, u_input.e.x, 1u), vec4<u32>(u_input.e.x, global1[_wgslsmith_index_u32(u_input.e.x, 18u)], global1[_wgslsmith_index_u32(26300u, 18u)], 1u)))));
    let var_2 = vec3<u32>(~(~(~1u)), 78421u, ~abs(0u));
    return !select(!vec2<bool>(all(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 18>();
    let var_0 = !select(!vec2<bool>(any(vec3<bool>(false, false, false)), true), func_1(), !vec2<bool>(u_input.c > u_input.b, func_1().x));
    var var_1 = !(!(var_0.x & var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

