struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(73218i, 0i, 25695i, -1125i), vec4<i32>(0i, -62711i, 33088i, 0i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i), vec4<i32>(-1i, -1i, -6936i, 27459i));

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec4<f32>;

var<private> global4: array<bool, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 275f)) - vec4<f32>(_wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(ceil(-1147f)), -1000f, -1446f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(22605u, 29514u, ~4294967295u, 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-846f, global3.x))), -select(u_input.d.x, u_input.e, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.c) >> (0u % 32u), 22u)]), u_input.b);
}

