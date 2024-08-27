struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(669f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(937f + 690f) + _wgslsmith_f_op_f32(floor(2197f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -602f))))), 636f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-868f * _wgslsmith_f_op_f32(f32(-1f) * -1761f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1443f + 1520f))))), 32351u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-349f - -1677f))), countOneBits(~(-2147483647i)));
}

