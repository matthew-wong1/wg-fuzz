struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> StorageBuffer {
    global0 = ~_wgslsmith_mod_u32(abs(u_input.a.x >> (min(0u, u_input.a.x) % 32u)), u_input.a.x);
    var var_0 = 114f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f + _wgslsmith_f_op_f32(select(284f, -2219f, true))))));
    var var_1 = vec2<bool>(((_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zw) << (u_input.a.x % 32u)) & (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & ~1u)) <= 40009u, false);
    let var_2 = max(0u, firstLeadingBit(30192u)) | ~countOneBits(u_input.a.x);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f - 465f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1819f - -464f) * 1f))), u_input.a.zz);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, _wgslsmith_f_op_f32(f32(-1f) * -2526f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-577f + 731f) - _wgslsmith_f_op_f32(max(-324f, _wgslsmith_f_op_f32(-629f * 709f)))), -1509f));
    global0 = 4294967295u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

