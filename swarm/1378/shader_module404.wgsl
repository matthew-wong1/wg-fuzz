struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6470u;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(39270u, 25485u, 27193u), vec3<u32>(1u, 0u, 0u), vec3<u32>(86533u, 50438u, 1u), vec3<u32>(37405u, 123944u, 12005u), vec3<u32>(10526u, 5671u, 49391u), vec3<u32>(74709u, 5868u, 28091u), vec3<u32>(37385u, 16724u, 14145u), vec3<u32>(4294967295u, 4294967295u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, abs(1u)), 1u), ~min(vec2<u32>(_wgslsmith_mult_u32(1u, 26318u), 1u), ~(~vec2<u32>(47881u, 4294967295u))));
    let var_0 = firstTrailingBit(-u_input.b.x);
    global0 = 18096u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f - -1000f) * 1000f);
    let var_2 = 946f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec3<f32>(var_2, var_2, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(min(var_1, var_1)))))), u_input.a);
}

