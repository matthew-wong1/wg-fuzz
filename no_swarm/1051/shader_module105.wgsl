struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f - -1000f) - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1383f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(254f * 1623f), _wgslsmith_f_op_f32(f32(-1f) * -335f)))))));
    let var_1 = vec3<f32>(-1503f, var_0.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(583f)) * _wgslsmith_f_op_f32(var_0.a.b - var_0.a.a)), _wgslsmith_f_op_f32(max(-257f, -979f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1051f)));
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = Struct_3(Struct_1(2278f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = -2240f;
    var_0 = Struct_3(var_0.a);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_3 = !(!vec4<bool>(true | select(false, false, false), ~u_input.a == 1u, false, true));
    return _wgslsmith_mod_u32(u_input.c.x, ~81486u);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = 1u >= func_2(4294967295u, arg_2.b.b);
    var var_1 = ~u_input.c;
    var var_2 = arg_2.c;
    var_0 = false;
    var var_3 = var_2.x;
    return max(66246u, arg_3.e) ^ 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~u_input.a << (~_wgslsmith_div_u32(35564u, 1u) % 32u)), ~(~u_input.c.x | ~func_1(vec4<i32>(-51943i, -30004i, u_input.b, u_input.e), 332f, Struct_2(Struct_1(-669f, -1035f), Struct_1(1556f, -1000f), vec2<f32>(-755f, 433f), Struct_1(-1107f, 155f), u_input.c.x), Struct_2(Struct_1(1000f, -1304f), Struct_1(-137f, -1008f), vec2<f32>(-1162f, -1000f), Struct_1(344f, -286f), 9058u))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-728f - 669f), 765f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f - -1000f)), _wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(abs(1147f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_1(~firstLeadingBit(vec4<i32>(u_input.b, u_input.e, u_input.b, 6458i)), var_1.a.a, Struct_2(Struct_1(425f, 168f), Struct_1(1709f, var_1.a.a), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.a, 1056f))), var_1.a, min(var_0.x, var_0.x)), Struct_2(var_1.a, Struct_1(var_1.a.b, var_1.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_1.a.a) + vec2<f32>(var_1.a.b, var_1.a.a)), var_1.a, _wgslsmith_mod_u32(var_0.x, 26858u)))), -16863i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-288f, -200f, var_1.a.a), vec3<f32>(var_1.a.b, var_1.a.b, var_1.a.b), vec3<bool>(true, true, true))))))));
}

