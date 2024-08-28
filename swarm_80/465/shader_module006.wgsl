struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, false, false, true, false, true, true, true);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, 57899i);

var<private> global4: array<i32, 22> = array<i32, 22>(-4490i, 2147483647i, 27211i, 2147483647i, 2147483647i, i32(-2147483648), 6816i, 0i, -12450i, 2147483647i, -1i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -27730i, 22285i, 1i, 52380i, -31724i, 61064i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-129f, -601f)), abs(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i, 1i, -14075i, 1i) & vec4<i32>(0i, 1i, global4[_wgslsmith_index_u32(1u, 22u)], global3.x)), vec4<i32>(-11298i & global4[_wgslsmith_index_u32(u_input.a, 22u)], 0i | global0.x, firstLeadingBit(6196i), global0.x))), -48814i, vec3<i32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 9570u), 22u)], -2147483647i, ~(~0i)));
}

