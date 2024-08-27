struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = !any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), true));
    let var_1 = ~firstTrailingBit(vec3<u32>(~abs(0u), 1u, ~firstLeadingBit(15246u)));
    var var_2 = ~0u;
    var_0 = !(!(!(!(33956u >= var_1.x))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(726f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1212f, 1285f)) - _wgslsmith_f_op_f32(max(-1180f, var_3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(939f))), _wgslsmith_f_op_f32(func_3())))));
    var var_1 = firstTrailingBit(vec2<u32>(35972u, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.x, 38355u, 1u, 4294967295u)), ~vec4<u32>(0u, arg_1.x, 28050u, 47733u))));
    var_1 = ~vec2<u32>(var_1.x, countOneBits(4294967295u));
    let var_2 = Struct_4(arg_1);
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, -220f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a), var_0.a)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, false), arg_0, Struct_2(-438f))) - -1522f))));
    var var_1 = false || !((false || (arg_0.x != 4294967295u)) && false);
    let var_2 = Struct_2(-697f);
    var_1 = false;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - -587f) >= _wgslsmith_f_op_f32(-var_2.a);
    return arg_0.x | (88392u ^ reverseBits(firstTrailingBit(abs(10673u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = ~(~(~vec3<u32>(1u, 1u, 1u)));
    var_0 = func_1(~firstLeadingBit(max(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(14709u, var_1.x, var_1.x)) | (vec3<u32>(1u, 71846u, var_1.x) ^ var_1)));
    var_0 = var_1.x | ~(countOneBits(var_1.x) >> (var_1.x % 32u));
    var_0 = var_1.x;
    let var_2 = Struct_5(Struct_2(-925f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(318f)), _wgslsmith_f_op_f32(754f - -109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-338f, _wgslsmith_f_op_f32(f32(-1f) * -672f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f - 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f), 1000f)), -u_input.a.x);
    var var_3 = !(~(-2147483647i) <= var_2.c) != true;
    var var_4 = vec2<u32>(var_1.x, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~vec3<u32>(var_4.x, countOneBits(_wgslsmith_div_u32(56776u, var_4.x)), ~min(4294967295u, 4294967295u)), _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f * var_2.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - 1263f))));
}

