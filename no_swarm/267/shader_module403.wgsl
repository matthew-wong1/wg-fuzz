struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~min(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(60344u, u_input.d.x, 8546u, 82560u), vec4<u32>(u_input.b, 1u, 0u, u_input.b)), ~vec4<u32>(0u, 0u, u_input.b, u_input.b)), max(~vec4<u32>(u_input.d.x, 0u, 0u, 4294967295u), countOneBits(vec4<u32>(1u, u_input.b, 1u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c ^ u_input.c, -(u_input.c ^ -2147483647i) << (var_0.x % 32u), u_input.c, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(2150f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f + -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -564f))), -588f));
}

