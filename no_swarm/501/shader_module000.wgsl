struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-1637f, -510f), vec2<f32>(1308f, 680f), vec2<f32>(1715f, -599f), vec2<f32>(-840f, -493f), vec2<f32>(-1266f, -672f), vec2<f32>(-1568f, -416f), vec2<f32>(-2904f, 1000f), vec2<f32>(-1613f, -120f), vec2<f32>(650f, -161f), vec2<f32>(1000f, -2682f), vec2<f32>(-781f, -1482f), vec2<f32>(795f, 484f), vec2<f32>(1000f, -965f));

var<private> global4: array<bool, 5> = array<bool, 5>(false, false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 5>();
    let var_0 = -reverseBits(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, 175f)) - 597f))), i32(-1i) * -59991i, ~(i32(-1i) * -1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 47970u) | select(u_input.e.xz, vec2<u32>(34541u, u_input.e.x), global4[_wgslsmith_index_u32(u_input.e.x, 5u)]), ~(~vec2<u32>(u_input.d.x, u_input.d.x))), vec2<u32>(u_input.d.x, u_input.d.x)), 13u)]);
}

