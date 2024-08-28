struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: f32;

var<private> global2: array<u32, 24> = array<u32, 24>(137305u, 13500u, 4294967295u, 0u, 37078u, 1u, 3716u, 43125u, 0u, 1u, 27459u, 43760u, 1u, 15232u, 55132u, 1u, 37312u, 0u, 0u, 4294967295u, 19391u, 4294967295u, 32682u, 43703u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(731f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f)))));
    var var_1 = 1i;
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.a.yyw, ~(~u_input.a.wyz | max(u_input.a.yzy, u_input.a.zzz)));
    let var_3 = _wgslsmith_div_u32(var_2, ~u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1369f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wwz);
}

