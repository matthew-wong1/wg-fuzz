struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-335f, 552f))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) - _wgslsmith_f_op_f32(ceil(1000f)))), 374f)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(-1649f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1020f)), -401f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1197f, -3408f), vec2<f32>(var_0.x, -321f))), vec2<f32>(var_0.x, var_0.x), vec2<bool>(true, true)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -416f))), 520f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -399f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-var_1)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, -1628f))))) * _wgslsmith_f_op_vec2_f32(-var_1));
    return u_input.d.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(func_3(), -abs(abs(29553i)), u_input.d.xy, arg_0.xz, !(arg_0.x || arg_0.x));
    var var_1 = vec2<bool>(!(any(!arg_0) != any(select(var_0.d, vec2<bool>(arg_0.x, false), false))), 1u > arg_1.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1029f, 300f, -1920f) - vec3<f32>(101f, -1239f, 1493f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-610f, 894f, -163f), vec3<f32>(234f, 1240f, 1498f))))), !(!vec3<bool>(arg_0.x, false, true)))));
    var_0 = Struct_1(abs(4294967295u), var_0.b, ~firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xx, arg_1.yy), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 42178u), var_0.c, arg_1.xx))), arg_0.xz, select(false, any(vec2<bool>(var_0.e, arg_0.x)), all(!(!vec4<bool>(true, var_0.d.x, false, true)))));
    var_0 = Struct_1(~u_input.d.x, u_input.c, vec2<u32>(~(~0u), arg_1.x), vec2<bool>(var_0.e, true), any(!vec4<bool>(true, arg_0.x, true, true)));
    return ~abs(arg_1.x);
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_1(max(select(47341u, 37015u << (u_input.b.x % 32u), true) | ~_wgslsmith_add_u32(u_input.b.x, 0u), select(u_input.b.x, _wgslsmith_mult_u32(u_input.d.x, ~u_input.b.x), any(vec2<bool>(arg_0.x, true)) && false)), select(1i << (func_2(arg_0.xxw, u_input.b.zwz) % 32u), u_input.c | u_input.a, true), ~vec2<u32>(~u_input.d.x, 4879u), vec2<bool>(any(arg_0.xzz), false), !all(select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, false, true), true), !arg_0.zyw, !vec3<bool>(arg_0.x, arg_0.x, true))));
    var_0 = Struct_1(0u, u_input.c, ~var_0.c, select(select(select(select(arg_0.xx, var_0.d, arg_0.zw), select(arg_0.wz, arg_0.zw, vec2<bool>(var_0.d.x, var_0.d.x)), arg_0.x), !select(arg_0.wy, arg_0.wx, arg_0.x), true), !vec2<bool>(true, !var_0.e), true), arg_0.x);
    var var_1 = Struct_1(_wgslsmith_add_u32(~abs(_wgslsmith_add_u32(var_0.c.x, 3483u)), 11553u << (_wgslsmith_div_u32(19786u, u_input.d.x) % 32u)), u_input.a, var_0.c, vec2<bool>(~(~0u) == _wgslsmith_mult_u32(~var_0.a, min(var_0.a, 51806u)), !any(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, false, false, true), vec4<bool>(var_0.e, false, arg_0.x, arg_0.x)))), any(select(!arg_0, select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.x, var_0.d.x, arg_0.x, false), 1u == var_0.c.x), vec4<bool>(4294967295u <= u_input.d.x, var_0.c.x < 16853u, !arg_0.x, !var_0.e))));
    let var_2 = Struct_1(4294967295u & (~var_1.a | 0u), firstLeadingBit(firstTrailingBit(var_0.b)), vec2<u32>(u_input.d.x, 17780u), vec2<bool>(true, true), all(arg_0));
    let var_3 = _wgslsmith_f_op_f32(abs(-932f)) <= _wgslsmith_f_op_f32(trunc(1000f));
    return _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(44009u, ~4294967295u), ~(~var_2.c), var_1.d), u_input.b.yy, _wgslsmith_mod_vec2_u32(~vec2<u32>(~0u, ~0u), countOneBits(_wgslsmith_div_vec2_u32(~u_input.b.wy, u_input.d.ww))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-47204i, 0i, -25981i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, arg_2.b)), 1i, 4777i), countOneBits(~vec3<i32>(arg_3.b, -2758i, 0i)), !arg_3.e), firstLeadingBit(vec3<i32>(4943i, 2147483647i, _wgslsmith_div_i32(u_input.c, arg_3.b)))) | -select(-(~vec3<i32>(arg_3.b, u_input.a, 8283i)), select(vec3<i32>(arg_2.b, -2147483647i, u_input.c), vec3<i32>(u_input.a, -1i, arg_2.b), !arg_1), true);
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_3.c.x, u_input.d.x), arg_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~((~4294967295u | u_input.d.x) & firstTrailingBit(u_input.b.x)), u_input.a, ~vec2<u32>(66671u, ~u_input.d.x), !select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, true))), any(vec4<bool>(true, true, true, true))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -1i >= u_input.c)));
    var var_1 = u_input.b.xww;
    var_0 = Struct_1(func_4(1722f, !(!select(vec3<bool>(var_0.d.x, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, var_0.e))), Struct_1(var_1.x, 0i, _wgslsmith_mod_vec2_u32(var_0.c, max(u_input.d.yy, vec2<u32>(var_0.a, var_1.x))), var_0.d, any(!vec4<bool>(false, var_0.e, false, var_0.e))), Struct_1(_wgslsmith_mod_u32(4294967295u, var_1.x), 0i, func_1(!vec4<bool>(true, false, var_0.d.x, var_0.e)), vec2<bool>(select(false, var_0.d.x, false), true), !(!var_0.e))), var_0.b, u_input.b.xy, select(select(select(!vec2<bool>(var_0.d.x, var_0.e), !var_0.d, select(vec2<bool>(var_0.e, true), vec2<bool>(var_0.d.x, false), true)), !select(vec2<bool>(var_0.d.x, var_0.e), var_0.d, vec2<bool>(false, false)), !(!vec2<bool>(true, var_0.d.x))), select(select(select(vec2<bool>(true, var_0.d.x), var_0.d, var_0.d.x), vec2<bool>(false, false), all(vec4<bool>(false, var_0.e, var_0.d.x, var_0.d.x))), !select(vec2<bool>(var_0.d.x, var_0.e), var_0.d, var_0.e), false), var_0.d.x), true);
    var var_2 = Struct_1(~44244u, ~(~firstLeadingBit(_wgslsmith_add_i32(59398i, -399i))), ~var_0.c, !(!var_0.d), false);
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_0.a, var_1.x));
}

