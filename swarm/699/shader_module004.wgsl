struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(404f, -896f, 432f, 2339f, 416f, -496f, 291f, 873f, -966f, 1000f, -176f, 242f, 1331f, 175f, 457f, 975f, -1000f, 2009f, 263f, -417f, 1956f, -624f, -745f, 181f, 1100f, -390f, 349f, 431f, -692f, 631f, -443f, -235f);

var<private> global1: u32 = 6510u;

var<private> global2: vec3<f32> = vec3<f32>(711f, -1506f, 1724f);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(16845u, 32u)], global2.x, global2.x, 1201f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(23472u, 32u)], -609f, -349f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-585f, 479f, global0[_wgslsmith_index_u32(1u, 32u)], 515f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], -1474f, global2.x, global0[_wgslsmith_index_u32(u_input.c, 32u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1226f, -1149f, 1404f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global2.x, 1149f, global0[_wgslsmith_index_u32(7132u, 32u)]), vec4<f32>(-460f, 977f, -1538f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-632f, global2.x, -600f, -480f) * vec4<f32>(-717f, 814f, global0[_wgslsmith_index_u32(u_input.c, 32u)], -157f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, global0[_wgslsmith_index_u32(u_input.c, 32u)], 2338f, global0[_wgslsmith_index_u32(1u, 32u)]) * _wgslsmith_div_vec4_f32(vec4<f32>(-258f, -325f, global0[_wgslsmith_index_u32(u_input.c, 32u)], 963f), vec4<f32>(global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.c, 32u)], 1078f)))))));
    var var_1 = global3.x;
    let var_2 = abs(-vec4<i32>(u_input.d.x, u_input.a, u_input.a, select(select(1177i, u_input.a, global3.x), u_input.b, all(vec4<bool>(global3.x, false, false, global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

