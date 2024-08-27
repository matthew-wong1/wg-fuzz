struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-393f, true), Struct_1(-1281f, false), Struct_1(-1000f, false), Struct_1(768f, true), Struct_1(152f, false), Struct_1(-579f, true), Struct_1(-539f, false), Struct_1(861f, false), Struct_1(335f, true), Struct_1(485f, false), Struct_1(-227f, true), Struct_1(-592f, true), Struct_1(-516f, true), Struct_1(-1000f, false), Struct_1(-2028f, true), Struct_1(701f, true), Struct_1(-685f, false), Struct_1(986f, false), Struct_1(417f, false), Struct_1(-111f, true));

var<private> global1: array<i32, 15>;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(277f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(309f * -1352f))), -1968f))), ~1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(326f, 721f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(174f)), _wgslsmith_div_f32(-1189f, -1000f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, 1186f, 105f) + vec3<f32>(1000f, 239f, 1000f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1580f, 1043f))))))));
}

