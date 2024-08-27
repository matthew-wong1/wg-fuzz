struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f, vec4<i32>(-11470i, 0i, 7863i, 2147483647i), 0i);

var<private> global1: Struct_1 = Struct_1(-622f, vec4<i32>(31479i, 55365i, 1i, 4562i), -51385i);

var<private> global2: array<f32, 29> = array<f32, 29>(-1252f, 496f, 801f, 983f, -1000f, -1393f, 1365f, -1011f, 123f, -205f, 397f, -1692f, -2273f, 532f, 1831f, -511f, 648f, 734f, -1585f, 1542f, 366f, -1360f, 1177f, 1063f, 596f, -337f, 414f, 1710f, -356f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), false));
    var var_1 = u_input.a.yz;
    global2 = array<f32, 29>();
    let var_2 = ~var_1.x;
    let var_3 = !vec2<bool>(true, var_1.x != _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(var_2, var_2)));
    let var_4 = vec4<bool>(var_0.x, var_0.x, false, true);
    var var_5 = all(var_4) & var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, -1000f) * vec2<f32>(1651f, 945f))), vec2<f32>(global0.a, -1000f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, -160f, global2[_wgslsmith_index_u32(11409u, 29u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1605f * 544f))))));
}

