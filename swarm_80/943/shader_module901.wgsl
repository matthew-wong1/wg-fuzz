struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_1(~arg_1.x);
    let var_1 = ~arg_0 <= -2147483647i;
    let var_2 = Struct_1(~u_input.b.x);
    let var_3 = Struct_1(~arg_1.x);
    let var_4 = var_0;
    return ~66777u;
}

fn func_3(arg_0: Struct_1) -> u32 {
    return 27333u;
}

fn func_1() -> f32 {
    var var_0 = ~firstLeadingBit(~select(vec4<u32>(29314u, 21824u, u_input.c, 12507u), ~vec4<u32>(56522u, u_input.a, 0u, u_input.c), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(_wgslsmith_mod_u32(func_2(-(~u_input.e), var_0.wwz), 4294967295u));
    var_1 = Struct_1(func_3(Struct_1(4294967295u)));
    let var_2 = Struct_1(_wgslsmith_sub_u32(var_0.x << (30967u % 32u), _wgslsmith_dot_vec3_u32(u_input.b, firstTrailingBit(u_input.b))) | ~(~38984u));
    var var_3 = reverseBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.yw, u_input.b.xx), var_0.wz) >> (1u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-993f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1382f * 126f), _wgslsmith_f_op_f32(-495f + -384f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1154f))), -1010f)), 954f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -702f)))));
    var var_1 = Struct_1(u_input.b.x);
    var_1 = Struct_1(reverseBits(var_1.a));
    var var_2 = _wgslsmith_f_op_f32(-652f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-350f)), _wgslsmith_div_f32(-225f, _wgslsmith_div_f32(var_0, -1717f))));
    var var_3 = Struct_1(4294967295u);
    let var_4 = Struct_1(u_input.b.x);
    let var_5 = ~var_3.a;
    let var_6 = -(~(~(-13081i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(countOneBits(var_4.a))), -660f, 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1774f, 2249f, var_0) + vec4<f32>(794f, var_0, 745f, var_0)) * vec4<f32>(516f, -616f, 605f, -254f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, -1000f, -496f, -1407f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, 1310f, var_0, var_0)))))));
}

