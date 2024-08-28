struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(13158u, 14625u, 1u), 69928u, vec4<i32>(2147483647i, -3183i, 4857i, -5549i));

var<private> global2: array<vec2<i32>, 20>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1387f, _wgslsmith_f_op_f32(f32(-1f) * -668f)) * _wgslsmith_f_op_f32(round(-705f))))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(1u, 0u), global1.a.x, global1.b, _wgslsmith_clamp_u32(1u, 40767u, 3114u)), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b, global1.a.x, 0u, global1.a.x), vec4<u32>(u_input.e, u_input.e, global1.a.x, u_input.d))), select(vec4<u32>(global1.b, 1u, 14984u, 1u) ^ vec4<u32>(u_input.d, 11194u, u_input.d, 0u), ~vec4<u32>(u_input.d, global1.a.x, u_input.e, u_input.e), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(global1.a.x, 3u)])))), 482f);
}

