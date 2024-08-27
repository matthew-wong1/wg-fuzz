struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: array<vec3<u32>, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    global1 = array<vec4<i32>, 5>();
    var var_0 = arg_1.yx;
    global0 = array<Struct_1, 9>();
    let var_1 = arg_1.x;
    global1 = array<vec4<i32>, 5>();
    return _wgslsmith_f_op_f32(f32(-1f) * -195f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global2 = array<vec2<f32>, 29>();
    let var_0 = Struct_2(13859i);
    var var_1 = 4294967295u;
    var var_2 = ~17735i & var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(~_wgslsmith_sub_u32(17320u, 13802u)), vec2<f32>(2085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(57702u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1164f, 602f, -193f)), ~global3[_wgslsmith_index_u32(34747u, 29u)], select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true))) * _wgslsmith_f_op_f32(max(1379f, _wgslsmith_f_op_f32(max(-384f, -1046f)))))));
}

