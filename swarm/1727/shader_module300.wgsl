struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !all(vec2<bool>(true, true));
    var var_1 = -u_input.c;
    var var_2 = Struct_1(vec4<bool>(true, 2147483647i == u_input.c, !all(vec4<bool>(false, true, true, true)) != (_wgslsmith_f_op_f32(select(383f, 178f, false)) >= _wgslsmith_f_op_f32(trunc(212f))), -26112i <= ~(~u_input.c)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1421f, -733f, -978f, -863f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-295f, -1000f, 1000f, 1177f))) * vec4<f32>(250f, 1479f, 635f, -400f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(u_input.d.yyw, abs(~u_input.d.yxx)) | (vec3<u32>(~u_input.b, 105298u, u_input.b) & u_input.d.wyy), firstLeadingBit(vec2<u32>(u_input.d.x, u_input.b & u_input.d.x)));
}

