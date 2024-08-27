struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30>;

var<private> global1: array<f32, 9> = array<f32, 9>(619f, -149f, -1000f, 977f, 511f, 496f, -1456f, 2211f, 1255f);

var<private> global2: array<vec4<i32>, 11>;

var<private> global3: array<vec3<bool>, 13>;

var<private> global4: i32 = 0i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 9>();
    var var_0 = u_input.a.zz;
    global3 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(35548u, 9u)], global1[_wgslsmith_index_u32(var_0.x, 9u)], global1[_wgslsmith_index_u32(55331u, 9u)]) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(27999u, 9u)])), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1050f, global1[_wgslsmith_index_u32(34127u, 9u)], -1058f))))), vec3<f32>(-1700f, 1f, _wgslsmith_f_op_f32(-1503f * 509f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 9u)], -761f, global1[_wgslsmith_index_u32(44737u, 9u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-632f, global1[_wgslsmith_index_u32(var_0.x, 9u)], 836f) * vec3<f32>(1008f, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))))));
}

