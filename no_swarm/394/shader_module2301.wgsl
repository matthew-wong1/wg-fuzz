struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(605f, -1000f)), all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1641f - -1039f), _wgslsmith_f_op_f32(min(355f, -1208f)), false)))), firstTrailingBit(~(~(~u_input.b))));
    var var_1 = !vec4<bool>(any(!vec3<bool>(false, true, var_0.b)) == true, any(vec4<bool>(true, false, all(vec3<bool>(var_0.b, false, var_0.b)), var_0.b)), all(vec4<bool>(true, var_0.b, var_0.b, true)), true);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-862f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-250f, _wgslsmith_div_f32(var_0.a.x, var_0.c)), var_0.a.x)), ~_wgslsmith_div_u32(12212u, u_input.b) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.c.x, var_0.d), select(u_input.c, vec4<u32>(9736u, var_0.d, var_0.d, var_0.d), var_0.b))))));
    var_1 = vec4<bool>(var_1.x, true, false, false);
    var_1 = select(vec4<bool>(var_1.x, !var_1.x, true, all(select(!vec4<bool>(false, var_1.x, true, var_0.b), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_0.b, false), var_0.b), var_0.b))), vec4<bool>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(sign(-458f))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, var_0.c))), false, var_0.a.x == _wgslsmith_f_op_f32(sign(var_0.a.x)), any(vec3<bool>(true, all(var_1.xyx), var_1.x))), all(!var_1.zz));
    return var_0.a.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(2913f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1104f, -619f) - vec2<f32>(-726f, -1390f))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))))), any(vec3<bool>(select(false, false, true), true, true)) & ((any(vec2<bool>(false, true)) | any(vec4<bool>(false, true, false, false))) && all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-622f + -1217f) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-690f, 1415f)))) + -544f), _wgslsmith_clamp_u32(~(~(~4294967295u)), ~u_input.b >> (firstLeadingBit(~50541u) % 32u), u_input.e.x << (4294967295u % 32u)));
    let var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(min(var_0.d, u_input.d), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), var_0.d >> (abs(u_input.c.x) % 32u)), var_0.d << ((var_0.d >> (~1u % 32u)) % 32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(561f * var_0.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1490f))))), -766f)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a), vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a - var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_2.x) + vec2<f32>(var_0.a.x, var_2.x)), select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false)))))), any(vec4<bool>(false, select(var_0.b, select(false, true, true), var_0.b), var_0.b, false)), var_2.x, var_1 | reverseBits(_wgslsmith_dot_vec3_u32(~u_input.c.xxz, u_input.c.xwy)));
    var var_4 = (~(~var_1) ^ var_0.d) < ~var_1;
    return all(!vec4<bool>(var_3.b, false, false, any(select(vec4<bool>(var_0.b, var_3.b, var_3.b, false), vec4<bool>(true, false, var_0.b, var_3.b), vec4<bool>(false, false, var_0.b, var_3.b)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), arg_1.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 265f)))))), -9318i == abs(u_input.a), -117f, 0u);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_1(vec2<f32>(arg_0, 410f), true, _wgslsmith_f_op_f32(f32(-1f) * -548f), 29456u);
    let var_1 = -1000f;
    var var_2 = func_4(_wgslsmith_mult_u32(u_input.e.x, ~(var_0.d ^ _wgslsmith_div_u32(var_0.d, u_input.c.x))), Struct_1(vec2<f32>(var_0.c, 1126f), !func_2(), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_div_f32(var_1, -273f))), var_0.d));
    var var_3 = ~_wgslsmith_mod_u32(reverseBits(~var_0.d), 0u >> (0u % 32u));
    let var_4 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 39808u) & firstTrailingBit(u_input.c.wx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d, var_0.d), abs(u_input.e))));
    return -1526f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(-436f)), _wgslsmith_f_op_f32(591f * _wgslsmith_f_op_f32(abs(436f))))), !(!func_4(u_input.d ^ u_input.b, Struct_1(vec2<f32>(-101f, 1000f), true, -201f, u_input.c.x)).b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 471f), 33368u);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(trunc(-1210f)))), vec2<f32>(_wgslsmith_div_f32(-1024f, -829f), -1064f))), any(!(!(!vec4<bool>(var_0.b, false, true, var_0.b)))), -1901f, 56551u);
    var_0 = Struct_1(vec2<f32>(-308f, func_4(abs(u_input.b), func_4(~var_0.d, Struct_1(var_0.a, false, var_0.a.x, 0u))).c), all(!select(select(vec3<bool>(true, true, var_0.b), vec3<bool>(false, var_0.b, var_0.b), var_0.b), !vec3<bool>(var_0.b, var_0.b, false), !vec3<bool>(var_0.b, var_0.b, false))), var_0.a.x, u_input.e.x);
    var_0 = func_4(127389u, func_4(~0u, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a) - vec2<f32>(-611f, -1502f)), _wgslsmith_f_op_f32(step(1000f, var_0.c)) > _wgslsmith_f_op_f32(var_0.c * var_0.c), 1164f, 59777u)));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))) + var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1763f, -402f)), _wgslsmith_f_op_f32(min(var_0.c, var_0.a.x))) * var_0.c)), all(vec2<bool>(true, true)), 617f, firstTrailingBit(~min(u_input.e.x, ~60747u)));
    let var_1 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(var_0.a.x, -673f))));
    let var_2 = u_input.a;
    let var_3 = func_4(_wgslsmith_sub_u32(u_input.d, ~0u) << (18922u % 32u), func_4(u_input.b | abs(0u), func_4(_wgslsmith_add_u32(47204u, var_0.d) & min(u_input.c.x, 87844u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + var_0.a), true, _wgslsmith_f_op_f32(func_3()), var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(-178f, -817f, false)), -486f, _wgslsmith_f_op_f32(-var_3.a.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_1, var_1) + vec3<f32>(var_1, -1206f, 403f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(475f, 288f, var_0.c)))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -604f, var_3.a.x) + vec3<f32>(var_1, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.c, var_3.a.x, var_1), vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_0.c)))));
}

