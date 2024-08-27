struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: vec4<bool>;

var<private> global2: vec2<bool>;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(16096i);
    global0 = array<vec2<i32>, 22>();
    let var_1 = select(select(vec4<bool>(true, global2.x, !(!global2.x), all(vec4<bool>(true, global2.x, global2.x, global1.x))), select(select(select(vec4<bool>(global1.x, true, global2.x, true), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global1.x, true, true, true)), select(vec4<bool>(global2.x, true, false, true), vec4<bool>(global2.x, global1.x, true, global1.x), true), !vec4<bool>(true, true, global1.x, global1.x)), vec4<bool>(21346i == u_input.a.x, true, global2.x, true), select(all(vec3<bool>(global2.x, global2.x, false)), global1.x || global2.x, false)), !select(vec4<bool>(false, global2.x, true, true), select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, false, global1.x, global2.x), global1.x), !vec4<bool>(true, false, true, global1.x))), vec4<bool>(all(select(global1.wx, vec2<bool>(global1.x, global1.x), global1.x)), all(vec3<bool>(any(vec3<bool>(global2.x, global2.x, global1.x)), true, true)), any(!global1.yxx) | all(select(vec3<bool>(true, global2.x, false), global1.xyx, global1.xxx)), select(!(!global2.x), all(global1.wx), global1.x)), true | global2.x);
    global0 = array<vec2<i32>, 22>();
    global0 = array<vec2<i32>, 22>();
    let var_2 = vec3<f32>(-2243f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-937f)))))), _wgslsmith_f_op_f32(-1f));
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3378u, 4294967295u), vec3<u32>(4294967295u, 2445u, 1u)), 4294967295u), 3527u), var_2.x);
}

