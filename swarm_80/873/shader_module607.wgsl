struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: i32 = -2302i;

var<private> global2: Struct_4 = Struct_4(vec4<i32>(20150i, 1i, i32(-2147483648), 1i));

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 18>();
    global1 = 8823i;
    let var_0 = Struct_1(~u_input.b.ywx, countOneBits(global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1115f));
    global1 = -12987i;
    global3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -_wgslsmith_dot_vec3_i32(-(global2.a.wxw ^ vec3<i32>(global2.a.x, -40266i, 1i)), global2.a.xzy), global2.a.x, -(~var_0.b));
}

