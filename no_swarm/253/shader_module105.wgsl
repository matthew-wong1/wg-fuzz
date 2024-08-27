struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, -countOneBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 27u)], 42360i), vec3<i32>(-88019i, 0i, -8473i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f - 1766f)) + _wgslsmith_f_op_f32(round(-304f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-820f))))));
}

