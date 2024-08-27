struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = !any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
    var_0 = -u_input.c >= u_input.c;
    var var_1 = arg_2;
    let var_2 = !vec3<bool>(select(all(vec2<bool>(true, true)), !select(true, false, true), !any(vec4<bool>(true, false, true, false))), arg_0 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f - arg_0) + _wgslsmith_f_op_f32(var_1.e.x + arg_0)), select(false, !(0i != u_input.a), true));
    let var_3 = Struct_5(_wgslsmith_clamp_u32(~1u, ~firstLeadingBit(countOneBits(arg_2.c.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, var_1.a, arg_2.c.x, 43988u), u_input.e) << (min(var_1.c.x, 58915u) % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.e, u_input.e), ~u_input.e))));
    return 12468u;
}

fn func_2() -> bool {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), _wgslsmith_div_u32(u_input.e.x, u_input.e.x)), 29379u, vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1445f, 1000f, 2211f))), vec3<f32>(-660f, -876f, 420f))), Struct_1(select(_wgslsmith_mod_u32(54348u, 22067u), func_3(-699f, -2054f, Struct_1(u_input.e.x, u_input.e.x, vec2<u32>(48749u, 8279u), u_input.e.wx, vec3<f32>(1169f, -1437f, -305f))), all(vec4<bool>(true, true, true, false))), 5304u, (u_input.e.zy >> (vec2<u32>(u_input.e.x, u_input.e.x) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yy, vec2<u32>(1u, u_input.e.x)), u_input.e.xw, vec3<f32>(_wgslsmith_f_op_f32(abs(-998f)), _wgslsmith_f_op_f32(966f * 285f), -232f)), Struct_1(u_input.e.x, u_input.e.x, u_input.e.yw, vec2<u32>(25988u, u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, 1113f, 102f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 789f) + vec2<f32>(-123f, 612f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1510f, -1708f)))))));
    let var_1 = select(vec4<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), true, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), true))), select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), all(vec3<bool>(false, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, any(vec4<bool>(true, false, false, false)), true, u_input.c == u_input.d.x)), vec4<bool>(true, -821f < _wgslsmith_f_op_f32(exp2(var_0.a.a.e.x)), all(vec3<bool>(false, true, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, false)) | true, true, all(vec4<bool>(true, true, true, true)))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.a.a.e.zx));
    var_0 = Struct_3(Struct_2(Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.e.xzz, vec3<u32>(4294967295u, var_0.a.b.c.x, 15198u))), ~u_input.e.x, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.a.c.a), ~84423u), abs(_wgslsmith_mod_vec2_u32(u_input.e.xx, var_0.a.b.c)), var_0.a.c.e), var_0.a.a, var_0.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.e.x, -1247f) - vec2<f32>(185f, 544f)), false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, var_0.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(2080f, 435f), var_0.b), vec2<bool>(false, var_1.x))), select(vec2<bool>(true, true), select(var_1.yx, var_1.zw, var_1.zx), false))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, 351f)), _wgslsmith_f_op_f32(-var_0.a.b.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + var_0.b))))));
    let var_2 = ~u_input.e.x;
    return any(select(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1, true));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = select(select(vec2<bool>(true, func_2()), select(vec2<bool>(any(vec4<bool>(true, true, false, false)), false), vec2<bool>(all(vec4<bool>(true, true, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(all(vec3<bool>(true, false, true)) || any(vec2<bool>(false, true)))), vec2<bool>(false, all(vec2<bool>(true, all(vec2<bool>(false, false))))), any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec2<bool>(false, false))), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f - arg_0.a.e.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.e.x, 880f)) - _wgslsmith_f_op_f32(-arg_0.a.e.x)))))));
    var var_3 = Struct_2(Struct_1(arg_2.x, u_input.e.x, (vec2<u32>(15645u, arg_0.a.c.x) & firstLeadingBit(vec2<u32>(1u, arg_2.x))) & vec2<u32>(arg_2.x, 21726u), ~vec2<u32>(~0u, _wgslsmith_add_u32(arg_0.c, 3190u)), _wgslsmith_f_op_vec3_f32(select(arg_0.a.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-225f, 198f, arg_0.a.e.x), vec3<f32>(arg_0.a.e.x, arg_0.a.e.x, 265f)) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.e))), !select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, var_1.x))))), Struct_1(4294967295u, 5343u, ~min(arg_0.a.d, ~arg_0.a.d), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_2.x, 62129u)), vec2<u32>(28840u, arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1315f, 665f, 371f) - arg_0.a.e)))))), Struct_1(~arg_2.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 4294967295u, 25606u), arg_2), ~1861u), select(~vec2<u32>(1u, u_input.e.x) & select(vec2<u32>(1u, arg_2.x), vec2<u32>(u_input.e.x, arg_0.a.b), false), vec2<u32>(arg_0.a.c.x, ~arg_2.x), func_2()), ~abs(reverseBits(vec2<u32>(88319u, arg_2.x))), _wgslsmith_f_op_vec3_f32(arg_0.a.e * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1170f, arg_0.a.e.x, -693f) - arg_0.a.e))));
    var_3 = Struct_2(var_3.c, arg_0.a, Struct_1(4294967295u, ~(~(~21887u)), max(vec2<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, var_3.c.a, arg_0.a.b))), _wgslsmith_add_vec2_u32(~vec2<u32>(21121u, 0u), arg_0.a.d)), ~vec2<u32>(~1u, arg_2.x), _wgslsmith_f_op_vec3_f32(-var_3.b.e)));
    return select(vec2<bool>(!all(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, true), false)), true), var_1, vec2<bool>(var_3.a.e.x >= 1127f, var_1.x == select(false, arg_2.x >= 49666u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), true), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, u_input.c > -1i, all(vec2<bool>(true, false)), all(vec2<bool>(true, false)))), vec4<bool>(false, ~(~u_input.d.x) < -2147483647i, all(!func_1(Struct_4(Struct_1(u_input.e.x, u_input.e.x, vec2<u32>(4294967295u, u_input.e.x), u_input.e.wz, vec3<f32>(-1445f, 470f, -531f)), u_input.b, 128170u), u_input.d.zwx, u_input.e.yyw)), true));
    var_0 = select(select(!vec4<bool>(!var_0.x, func_2(), var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, false))), !vec4<bool>(false, !var_0.x, true, var_0.x), true), !select(select(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), func_1(Struct_4(Struct_1(0u, 1u, u_input.e.zw, u_input.e.yx, vec3<f32>(1432f, -193f, 402f)), 94818i, u_input.e.x), u_input.d.xyw, u_input.e.yyz).x), vec4<bool>(false, true | var_0.x, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), var_0.x), !(!vec4<bool>(!var_0.x, all(vec4<bool>(true, false, var_0.x, false)), true, var_0.x)));
    var var_1 = 0i;
    var var_2 = 331f;
    let var_3 = Struct_3(Struct_2(Struct_1(~1u, ~28462u, vec2<u32>(4294967295u & u_input.e.x, func_3(1406f, -563f, Struct_1(1u, 51984u, vec2<u32>(u_input.e.x, 58051u), u_input.e.xw, vec3<f32>(-376f, -869f, -1199f)))), firstLeadingBit(vec2<u32>(u_input.e.x, 29144u)), vec3<f32>(-908f, 1f, _wgslsmith_f_op_f32(max(222f, 1886f)))), Struct_1(24745u, ~reverseBits(0u), select(vec2<u32>(u_input.e.x, u_input.e.x), abs(u_input.e.xw), !var_0.x), vec2<u32>(u_input.e.x, 914u) | ~vec2<u32>(u_input.e.x, u_input.e.x), vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1465f, -2409f)), Struct_1(0u, 1u, u_input.e.yw, _wgslsmith_add_vec2_u32(~u_input.e.wx, vec2<u32>(0u, u_input.e.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-630f, -206f, 505f))), vec3<f32>(349f, -1893f, 2703f), vec3<bool>(var_0.x, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1735f, -1711f))))));
    let var_4 = ~firstTrailingBit(u_input.e);
    let var_5 = Struct_5(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a.b.e.x))) * var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.a.b.e.x)) - _wgslsmith_f_op_f32(var_3.b.x * 876f)) * var_3.a.b.e.x), var_3.a.c));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.c.e * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.a.b.e)) + var_3.a.a.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_3.b.x, -288f) * vec3<f32>(1108f, -1025f, var_3.a.a.e.x)), _wgslsmith_div_vec3_f32(var_3.a.a.e, var_3.a.c.e)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, var_3.b.x, var_3.b.x)) - _wgslsmith_f_op_vec3_f32(-var_3.a.b.e)))));
}

