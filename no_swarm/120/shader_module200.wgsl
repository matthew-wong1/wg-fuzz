struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<vec2<f32>, 19>;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(min(~(~vec4<i32>(u_input.a.x, u_input.b, u_input.d, u_input.b)), reverseBits(vec4<i32>(1i, u_input.b, u_input.d, -1i) | u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2362f, 233f) - vec2<f32>(1690f, -266f)))) + vec2<f32>(_wgslsmith_f_op_f32(-177f - 537f), 1f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-350f, -895f))))) * global1[_wgslsmith_index_u32(4294967295u, 19u)]);
    var var_2 = _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(0u, u_input.c, 52944u, 9697u) | vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))) ^ ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 44815u, 37101u, u_input.c), vec4<u32>(4294967295u, 11625u, u_input.c, 0u)), vec4<u32>(u_input.c, 1u, 1u, 4294967295u), firstTrailingBit(vec4<u32>(10029u, 4294967295u, u_input.c, 4294967295u))), vec4<u32>(1u, u_input.c ^ u_input.c, ~_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(u_input.c, 4586u)), ~(~(19574u >> (u_input.c % 32u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, -1313f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 642f)))));
}

