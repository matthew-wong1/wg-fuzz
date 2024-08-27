struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec3<bool>(false, true, !(!(!select(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-(0i ^ ~select(-1i, u_input.a.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, -307f) + vec2<f32>(-646f, -1393f)) - vec2<f32>(546f, 169f)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~14131u, 24528u, 39105u), abs(firstTrailingBit(1u)), 37718u, 1u), vec4<u32>(_wgslsmith_sub_u32(29296u, _wgslsmith_clamp_u32(1u, 4294967295u, 8028u)), 2974u, 16194u, ~1u)));
}

