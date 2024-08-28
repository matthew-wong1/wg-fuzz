struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(216f, 788f, -106f, -883f);

var<private> global1: array<Struct_3, 22>;

var<private> global2: u32;

var<private> global3: array<bool, 32> = array<bool, 32>(false, true, false, false, true, true, true, true, false, true, true, false, false, false, true, false, false, true, true, false, true, false, false, false, true, true, true, true, true, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(2171f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1612f - -372f), _wgslsmith_f_op_f32(step(1096f, global0.x)))), _wgslsmith_f_op_f32(ceil(-136f)), -508f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + var_0.x)), global0.x) + -1534f), _wgslsmith_f_op_vec4_f32(-var_0), u_input.c.wyx, vec3<u32>(u_input.d & u_input.d, 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(12633u, u_input.d, 23172u) & vec3<u32>(u_input.d, 4294967295u, 20751u), select(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.d, 55838u, u_input.d), global3[_wgslsmith_index_u32(4294967295u, 32u)])), (vec3<u32>(4294967295u, u_input.d, u_input.d) >> (vec3<u32>(u_input.a, 1u, 88155u) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a, u_input.d, 132435u))));
}

