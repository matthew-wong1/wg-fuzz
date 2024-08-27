struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = 0i;
    let var_1 = u_input.a.yw;
    let var_2 = countOneBits(firstLeadingBit(vec2<i32>(-var_1.x, -(~var_1.x))));
    var_0 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return countOneBits(31795u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(firstLeadingBit(44402u), ~4294967295u, abs(select(73637u, 4294967295u, true)))), ~func_1(_wgslsmith_div_f32(759f, _wgslsmith_f_op_f32(615f - 631f))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 25073u, 0u)), vec3<u32>(16193u, 4294967295u, 1u)), ~68896u), 68746u, 1u ^ (firstTrailingBit(0u) << (~1u % 32u))), _wgslsmith_f_op_f32(select(1000f, -2657f, true)));
}

