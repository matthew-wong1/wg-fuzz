struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, true, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, 7673i)), -vec2<i32>(4474i, 1i)) >> (4320u % 32u), -max(_wgslsmith_clamp_i32(-4480i, 0i, -1i), i32(-1i) * -2147483647i), 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1052f, 606f) - vec2<f32>(2455f, -609f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(451f, -1157f), vec2<f32>(-2106f, -1090f)) * vec2<f32>(1000f, -895f)), !select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], false)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1864f, -1400f)))))), ~_wgslsmith_div_u32(u_input.b, 10262u));
}

