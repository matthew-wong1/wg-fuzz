struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1025f)))), -545f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1135f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-552f, -416f) - vec2<f32>(1470f, -519f))))), !all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)))));
    var var_3 = Struct_1(~(~max(vec3<u32>(var_0, 48904u, var_0), vec3<u32>(0u, u_input.a, u_input.a)) << (vec3<u32>(659u, ~var_0, ~var_0) % vec3<u32>(32u))), true);
    let var_4 = Struct_1(var_3.a, var_2.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)));
    var_3 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-abs(firstLeadingBit(-103i)), ~_wgslsmith_div_i32(2147483647i, i32(-1i) * -30059i), 1i << ((~u_input.a & var_3.a.x) % 32u)), vec3<f32>(-1581f, 1f, var_2.x), _wgslsmith_f_op_f32(round(var_2.x)), ~var_0, var_2.x);
}

