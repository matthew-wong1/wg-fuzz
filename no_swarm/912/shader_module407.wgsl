struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.wxz, 4294967295u);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(231f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1190f))))), _wgslsmith_mod_u32(var_0.a.x, var_0.b), vec4<f32>(-928f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(842f)))))), 316f, _wgslsmith_f_op_f32(1815f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1361f))))), u_input.a ^ vec4<u32>(0u, reverseBits(73784u), ~firstLeadingBit(var_0.a.x), 18775u | ~u_input.a.x), _wgslsmith_div_u32(~(countOneBits(u_input.a.x) & ~var_0.a.x), 1u));
}

