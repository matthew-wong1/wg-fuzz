struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-25307i, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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
    var var_0 = _wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1647f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-443f)))) + _wgslsmith_f_op_f32(642f - -204f)));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zwx, vec2<i32>(~countOneBits(~2153i), u_input.b), _wgslsmith_mult_u32(countOneBits(1u), ~_wgslsmith_div_u32(u_input.c, u_input.c)) | abs(9035u));
}

