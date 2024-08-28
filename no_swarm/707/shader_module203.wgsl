struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1245f), Struct_1(-1257f), Struct_1(-1000f), Struct_1(-975f), Struct_1(170f), Struct_1(605f), Struct_1(-960f), Struct_1(2175f), Struct_1(-209f), Struct_1(423f), Struct_1(-1000f), Struct_1(-929f), Struct_1(1133f), Struct_1(180f), Struct_1(225f), Struct_1(-733f), Struct_1(2139f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-979f, 452f, false)) * 1893f)));
    var var_1 = Struct_1(var_0.a);
    let var_2 = vec2<bool>(!(!all(vec3<bool>(true, true, true))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f - -728f) + 616f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) + _wgslsmith_f_op_f32(-2375f + var_0.a))));
    global0 = array<vec3<i32>, 9>();
    var var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_f_op_f32(ceil(179f)), -1168f) * vec3<f32>(-961f, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2622f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, _wgslsmith_f_op_f32(ceil(var_1.a)), _wgslsmith_div_f32(var_0.a, 1316f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -712f, var_4.xy, -605f);
}

