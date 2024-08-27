struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, true, true, false, true, true, false, false, false, false, true, true, false, true, true);

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = 0u;
    var var_2 = ~(~reverseBits(~vec4<u32>(0u, var_0.x, 7843u, var_0.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, u_input.a.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-485f, _wgslsmith_f_op_f32(trunc(694f)), -667f, _wgslsmith_f_op_f32(2145f + _wgslsmith_f_op_f32(f32(-1f) * -100f))))));
    var var_4 = global3[_wgslsmith_index_u32(4294967295u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1276f))));
}

