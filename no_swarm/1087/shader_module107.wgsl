struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    return !vec4<bool>(false, true, true, (299f >= _wgslsmith_f_op_f32(step(-425f, 2239f))) & select(false, all(vec3<bool>(false, true, false)), true));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(select(func_3(), vec4<bool>(true, false, true && all(vec4<bool>(false, false, false, true)), !all(vec4<bool>(false, false, true, true))), vec4<bool>(func_3().x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))), false, true)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f * -711f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1236f), _wgslsmith_f_op_f32(f32(-1f) * -233f))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), -1725f), vec4<f32>(_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(select(-273f, _wgslsmith_f_op_f32(round(-179f)), true))), _wgslsmith_f_op_f32(432f + _wgslsmith_f_op_f32(trunc(1976f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(f32(-1f) * -1152f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-984f, 1554f, true))))), _wgslsmith_f_op_f32(454f * _wgslsmith_f_op_f32(f32(-1f) * -116f))));
    return _wgslsmith_add_vec2_u32(u_input.c.xz, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 43179u), u_input.c.zz | _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 1u), firstTrailingBit(u_input.c.xx))));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-810f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1320f * -687f), _wgslsmith_f_op_f32(round(-241f))))));
    let var_1 = Struct_1(arg_0.a && any(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), vec2<bool>(false, false))), vec3<u32>(u_input.c.x ^ _wgslsmith_dot_vec2_u32(func_2(), u_input.c.zy << (u_input.c.zz % vec2<u32>(32u))), max(countOneBits(u_input.b), 19782u) & ~1u, u_input.b), vec3<f32>(_wgslsmith_f_op_f32(215f * -1311f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(578f - 1765f))), _wgslsmith_f_op_f32(-581f * _wgslsmith_div_f32(-801f, -949f))), 508f));
    var var_2 = arg_0;
    let var_3 = 5879i;
    var_2 = Struct_3(!arg_1);
    return ~max(~_wgslsmith_mult_u32(var_1.b.x, var_1.b.x) << ((_wgslsmith_div_u32(1u, 4294967295u) << (~u_input.b % 32u)) % 32u), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u & _wgslsmith_div_u32(0u, _wgslsmith_add_u32(0u, firstTrailingBit(~61720u)));
    var_0 = _wgslsmith_mod_u32(~func_1(Struct_3(true), true), 0u) << (u_input.b % 32u);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-729f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(min(1261f, -2748f))), 556f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(138f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -355f)))))));
    var_0 = u_input.c.x;
    var_0 = 4294967295u;
    var var_2 = vec2<i32>(u_input.a.x, -u_input.d.x);
    var_0 = 1u;
    var_2 = vec2<i32>(select(var_2.x, 1i, all(vec3<bool>(true, true, true))), abs(-9328i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, 48156u, u_input.a.x);
}

