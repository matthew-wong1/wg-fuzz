struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: array<i32, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(~(-(select(vec2<i32>(global1[_wgslsmith_index_u32(var_0, 6u)], -38802i), vec2<i32>(global1[_wgslsmith_index_u32(var_0, 6u)], -2147483647i), vec2<bool>(false, true)) << (abs(vec2<u32>(var_0, var_0)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(-1788f + 775f), _wgslsmith_f_op_f32(floor(1000f)), -106f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.wxx);
}

