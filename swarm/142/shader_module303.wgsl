struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(386f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1863f) + _wgslsmith_div_f32(-1000f, -413f)), _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec4<bool>(true, true, true, true)))) + -1949f);
    var_0 = -1316f;
    var var_1 = i32(-1i) * -min(u_input.b, reverseBits(-19972i));
    var_0 = _wgslsmith_f_op_f32(315f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) + 1f) + -904f))));
    return ~min(~firstTrailingBit(arg_0), ~firstLeadingBit(arg_0)) & (vec3<u32>(arg_0.x, u_input.d, arg_0.x) ^ ~vec3<u32>(4294967295u, ~u_input.d, max(17439u, arg_0.x)));
}

fn func_3(arg_0: Struct_2) -> bool {
    return arg_0.d.x;
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    var var_1 = !vec3<bool>(func_3(Struct_2(-1323f, _wgslsmith_div_f32(682f, -248f), _wgslsmith_f_op_vec2_f32(vec2<f32>(200f, -204f) * vec2<f32>(-707f, 848f)), vec3<bool>(true, false, var_0), Struct_1(u_input.b, vec4<bool>(var_0, var_0, true, false)))), all(!select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, true, var_0, false))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 96383u, u_input.c.x, u_input.d), vec4<u32>(4294967295u, u_input.c.x, u_input.d, u_input.c.x)) != _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, u_input.d, 33658u, u_input.c.x), vec4<u32>(1u, u_input.d, u_input.c.x, 0u), var_0), vec4<u32>(u_input.d, 5551u, u_input.c.x, u_input.c.x)));
    var_1 = vec3<bool>(var_0, var_0, true && var_0);
    var var_2 = Struct_1(_wgslsmith_mod_i32(u_input.b, -2147483647i), !(!vec4<bool>(all(vec4<bool>(var_1.x, false, var_0, false)), false, true, true)));
    var var_3 = !(((1u >> (u_input.d % 32u)) | _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 0u, 0u))) == 19209u);
    return Struct_3(Struct_2(1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1393f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f - -224f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), vec3<bool>(true, true, true), Struct_1(-(u_input.b & -1i), select(!vec4<bool>(var_0, true, true, var_0), select(var_2.b, var_2.b, var_0), !vec4<bool>(var_1.x, false, var_0, var_2.b.x)))), countOneBits(15498i), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-2671f)), 201f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-250f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1553f, -2117f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1146f, 171f)), select(var_1.x, var_2.b.x, var_2.b.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1551f, 1000f), vec2<f32>(-1683f, -1404f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(-1226f, 1146f)), var_0))), !var_2.b.zxz, Struct_1(~23597i, !select(vec4<bool>(true, false, false, var_0), vec4<bool>(true, true, false, var_0), var_2.b))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = any(vec3<bool>(true | !arg_2.x, !arg_0.d.x, any(!select(arg_0.e.b.zx, vec2<bool>(arg_1.c.e.b.x, arg_1.c.d.x), vec2<bool>(true, arg_0.d.x)))));
    var var_2 = !func_2().c.e.b.wyy;
    let var_3 = Struct_3(var_0, countOneBits(51946i), Struct_2(-833f, 432f, vec2<f32>(-224f, _wgslsmith_f_op_f32(abs(-930f))), arg_0.e.b.wwz, arg_0.e));
    var var_4 = u_input.d;
    return func_2().c;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.a), arg_1.x, !arg_0.c.e.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.b)) - _wgslsmith_f_op_f32(580f + arg_0.a.a)), arg_0.c.d.x && (u_input.d > u_input.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1957f - arg_0.a.b) * 894f))), _wgslsmith_f_op_vec2_f32(ceil(arg_1.zz)), vec3<bool>(!all(arg_0.c.e.b) || false, false, true), arg_0.c.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_1(u_input.c)) ^ vec3<u32>(~u_input.d, _wgslsmith_mod_u32(40720u, abs(~0u)), ~firstLeadingBit(46818u));
    var var_1 = Struct_3(Struct_2(-1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1090f, _wgslsmith_f_op_f32(trunc(2328f))))), vec2<f32>(1f, 1f), vec3<bool>(true, true, true), Struct_1(47683i, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true))), ~u_input.b, func_5(Struct_3(func_4(Struct_2(760f, -2261f, vec2<f32>(580f, 1000f), vec3<bool>(false, true, true), Struct_1(2147483647i, vec4<bool>(true, false, false, false))), func_2(), vec3<bool>(true, true, true)), _wgslsmith_clamp_i32(u_input.b, u_input.b ^ 1i, u_input.a.x), func_4(func_2().c, func_2(), vec3<bool>(false, true, true))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-413f, -572f, 308f), vec3<f32>(393f, 224f, -646f), true)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-802f, 472f, -1233f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1510f, -947f, -462f) * vec3<f32>(-3645f, 280f, -898f)) - _wgslsmith_div_vec3_f32(vec3<f32>(361f, -1553f, -978f), vec3<f32>(456f, 238f, -842f))))));
    var_0 = u_input.c;
    let var_2 = func_2();
    var_0 = vec3<u32>(_wgslsmith_mult_u32(abs(~4294967295u), max(2130u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58145u, 4294967295u, 11498u), vec4<u32>(4562u, 26754u, u_input.c.x, 2573u)), ~var_0.x))), 76517u, _wgslsmith_mult_u32(select(firstTrailingBit(45838u) & abs(4294967295u), ~(var_0.x ^ 19139u), true), 1u));
    let var_3 = var_2.a.a;
    var var_4 = _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -31545i, u_input.a.x, -u_input.a.x, min(u_input.a.x, 89347i)), abs(select(vec4<i32>(689i, 2147483647i, var_2.a.e.a, 45019i), vec4<i32>(var_2.c.e.a, 16432i, -55491i, -2147483647i), vec4<bool>(true, var_2.a.d.x, var_1.a.e.b.x, var_1.c.d.x))), -firstTrailingBit(vec4<i32>(var_2.c.e.a, var_1.b, var_2.c.e.a, 2147483647i))), vec4<i32>(var_2.c.e.a, var_1.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_1.a.e.a, u_input.a.x), select(vec3<i32>(var_2.c.e.a, var_1.a.e.a, 2147483647i), vec3<i32>(-32017i, u_input.b, var_1.a.e.a), var_2.c.e.b.x)), _wgslsmith_dot_vec3_i32(~u_input.a ^ u_input.a, ~vec3<i32>(0i, -1i, var_2.b) | vec3<i32>(-1i, u_input.b, -18100i))));
    var_0 = u_input.c;
    let var_5 = var_2.c.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(min(abs(vec4<i32>(-20852i, 19054i, 8285i, u_input.a.x)), ~(vec4<i32>(u_input.b, -2147483647i, 2147483647i, 0i) & vec4<i32>(u_input.a.x, var_2.b, u_input.b, 1i))), vec4<i32>(u_input.a.x & -u_input.a.x, -1i & u_input.a.x, max(var_1.c.e.a, ~14976i), var_2.b), vec4<bool>(any(!var_1.c.e.b), var_1.c.e.b.x, !var_5, _wgslsmith_mult_u32(u_input.d, u_input.d) == _wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(1u, 83758u)))), vec2<f32>(_wgslsmith_f_op_f32(990f * var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f) + _wgslsmith_f_op_f32(var_3 * -303f)))));
}

