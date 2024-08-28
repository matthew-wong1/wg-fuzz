struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(161f, 1019f, 1005f, -1230f), vec4<f32>(-266f, -1541f, -745f, -1375f), vec4<f32>(-1453f, 947f, 888f, -111f), vec4<f32>(102f, 284f, 589f, 1131f), vec4<f32>(-2345f, -150f, 1082f, 981f), vec4<f32>(-1575f, -2240f, 109f, -320f), vec4<f32>(1279f, 107f, 1042f, -233f), vec4<f32>(2084f, 2283f, 507f, 283f), vec4<f32>(180f, 280f, -1374f, -454f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = -36491i;
    var var_1 = !vec4<bool>(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))), false, any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0))));
    var var_3 = ~vec3<u32>(27970u, min(~51613u << (arg_1 % 32u), arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 16425u, arg_1, 1u), vec4<u32>(arg_1, arg_1, 13525u, 4294967295u)), arg_1 << (arg_1 % 32u)), firstLeadingBit(vec4<u32>(arg_1, arg_1, 1u, 0u)) | vec4<u32>(4294967295u, u_input.a.x, arg_1, 11478u)));
    var var_4 = Struct_1(~(~vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), u_input.a.x << (u_input.c.x % 32u), _wgslsmith_mult_u32(u_input.c.x, var_3.x), max(32949u, var_3.x))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.c.xx, vec2<u32>(~arg_1, 24057u)), _wgslsmith_dot_vec3_u32(abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_4.a.x, var_3.x, 4294967295u), u_input.c))), vec3<u32>(_wgslsmith_sub_u32(11272u, ~u_input.c.x), reverseBits(var_3.x) >> (var_3.x % 32u), max(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(24171u, arg_1, var_4.a.x, u_input.c.x), var_4.a)))));
}

fn func_2() -> f32 {
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_0 = Struct_1(~vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.a.x), u_input.c.x, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(56183u, u_input.a.x, 2256u), u_input.c)), _wgslsmith_clamp_u32(0u, 1u, 0u) << (reverseBits(u_input.c.x) % 32u)));
    let var_1 = var_0;
    let var_2 = func_3(-398f, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~var_1.a, ~var_0.a), var_0.a.x), ~var_1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1025f, 340f))) + 404f))) + _wgslsmith_f_op_f32(f32(-1f) * -632f));
}

fn func_1() -> u32 {
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-682f + -1064f))), _wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1677f)) + _wgslsmith_f_op_f32(min(1000f, 1342f))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f * 1218f) - _wgslsmith_f_op_f32(ceil(-958f))), 355f)));
    let var_1 = Struct_1(select(~(vec4<u32>(0u, u_input.a.x, 28409u, u_input.c.x) << (vec4<u32>(u_input.c.x, u_input.c.x, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 87290u) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 62579u) % vec4<u32>(32u)), select(vec4<u32>(u_input.c.x, 13495u, 76683u, u_input.a.x), vec4<u32>(u_input.c.x, 38449u, u_input.c.x, u_input.c.x), false)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(54805u, u_input.c.x, 4294967295u, 0u) ^ vec4<u32>(5245u, 91004u, 4294967295u, 38145u), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.c.x))) % vec4<u32>(32u)), select(true || (var_0.x < var_0.x), !any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)) & true)));
    global0 = array<vec4<f32>, 9>();
    return var_1.a.x >> (firstTrailingBit(u_input.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    let var_0 = true;
    var var_1 = Struct_1(~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, u_input.a.x), func_1()), select(~44270u, ~u_input.a.x, false), 54759u, ~(~u_input.a.x)));
    var var_2 = select(!(!(!(!vec4<bool>(var_0, true, var_0, false)))), select(!select(!vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, true, false, var_0), var_0), !vec4<bool>(var_0, true, true, any(vec4<bool>(false, var_0, true, false))), any(vec4<bool>(true, u_input.d.x >= u_input.d.x, var_0, any(vec3<bool>(var_0, false, true))))), var_0);
    let var_3 = u_input.b;
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_u32(var_1.a, firstTrailingBit(vec4<u32>(u_input.a.x, 48761u, 4294967295u, 37014u)) | ~vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, u_input.c.x))));
    var var_5 = u_input.b >> (_wgslsmith_clamp_u32(firstTrailingBit(~(~4294967295u)), u_input.a.x, var_4.a.x) % 32u);
    var_2 = select(vec4<bool>(false, false, var_2.x, var_0), vec4<bool>(var_2.x, true, _wgslsmith_clamp_i32(abs(u_input.b), max(u_input.b, u_input.b), firstLeadingBit(-10593i)) > select(~(-1i), -2147483647i, var_0), !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_1.a.x), vec2<u32>(74476u, var_1.a.x)) >= firstTrailingBit(var_4.a.x))), !select(vec4<bool>(var_2.x, var_2.x, all(var_2.zyz), any(var_2.yxw)), !vec4<bool>(var_0, true, var_2.x, var_0), !var_2.x));
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(279f)) - -759f)) - _wgslsmith_f_op_f32(min(-1437f, -421f))), 136f, 2079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.a.yw);
}

