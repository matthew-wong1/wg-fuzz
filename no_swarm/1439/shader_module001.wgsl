struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-reverseBits(u_input.c));
    global0 = true;
    global0 = any(vec3<bool>(!all(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true));
    let var_1 = reverseBits(u_input.d.x);
    let var_2 = -(~(-vec4<i32>(~var_0, i32(-1i) * -2147483647i, -u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-137f - 192f))), 212f), -(-select(vec3<i32>(12759i, var_0, u_input.a.x), vec3<i32>(-1i, u_input.c, -2147483647i), vec3<bool>(true, true, true)) >> (vec3<u32>(45498u, u_input.d.x, ~51572u) % vec3<u32>(32u))), ~(-(max(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(1i, u_input.c)) << (u_input.d % vec2<u32>(32u)))), ~vec2<i32>(~(-var_0), -15419i ^ ~var_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(726f, -651f, -556f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, 868f, -1314f) - vec3<f32>(-105f, -281f, 641f))))))));
}

