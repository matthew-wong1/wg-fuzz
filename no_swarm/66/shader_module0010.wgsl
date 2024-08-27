struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = false;
    var_0 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(622f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1485f + -583f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1069f, arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1369f)))), -1896f);
    let var_3 = true;
    return select(select(vec3<bool>(select(var_3, false, arg_0) == true, !any(vec2<bool>(false, arg_0)), any(vec3<bool>(arg_0, true, true))), select(select(!vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, false), true), vec3<bool>(false, false, false)), !(!vec3<bool>(arg_0, false, var_3)), vec3<bool>(true, var_3, false)), !(!select(vec3<bool>(true, var_3, var_3), vec3<bool>(arg_0, arg_0, false), var_3))), !select(select(!vec3<bool>(arg_0, true, false), vec3<bool>(false, var_3, arg_0), !vec3<bool>(false, var_3, arg_0)), select(select(vec3<bool>(false, false, arg_0), vec3<bool>(false, var_3, arg_0), vec3<bool>(var_3, true, var_3)), !vec3<bool>(false, arg_0, true), var_3), any(vec2<bool>(arg_0, arg_0))), select(arg_0, arg_2 == ~arg_2, var_3) && var_3);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    let var_0 = !vec3<bool>(arg_2, true, !all(func_3(true, arg_1.x, 1u, arg_0)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-869f, arg_1.x))) - arg_1.x));
    var_2 = arg_1.x;
    var var_3 = reverseBits(~(~(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(31779u, 4294967295u, arg_0.x, 1u), vec4<u32>(46999u, 0u, arg_0.x, 4294967295u)))));
    return ~var_3.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = true;
    let var_1 = Struct_2(arg_2, arg_2);
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 121731u, 35533u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, 1u), ~1u));
    let var_3 = vec4<u32>(select(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 1u), ~vec2<u32>(11658u, var_2)), true), firstLeadingBit(~(~_wgslsmith_add_u32(0u, 0u))), 17250u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(~var_2, 22204u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(var_2, var_2, 55713u, 1u), vec4<u32>(77825u, var_2, 0u, 4813u)), ~vec4<u32>(var_2, 1u, var_2, 1u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, var_2, 0u, 4294967295u), vec4<u32>(0u, var_2, var_2, 1u), true), vec4<u32>(var_2, 0u, var_2, var_2) << (vec4<u32>(var_2, var_2, var_2, var_2) % vec4<u32>(32u))))));
    let var_4 = Struct_1(~max(var_1.a.a, min(min(-8529i, -1i), 0i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(436f - 2067f), _wgslsmith_f_op_f32(sign(951f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(466f, arg_2.b))))))), vec3<bool>(true, true, true));
    return Struct_3(vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(14690i, -1i)) << (var_2 % 32u), arg_2.a << (~_wgslsmith_mod_u32(var_3.x, var_2) % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-8575i, -arg_0, var_4.a, ~(-14670i))), _wgslsmith_dot_vec3_i32(firstLeadingBit(~u_input.a.yzy), -_wgslsmith_mod_vec3_i32(u_input.a.wyx, u_input.a.wxz))));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1417f + _wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1450f + -1413f)), -228f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1417f + _wgslsmith_div_f32(332f, _wgslsmith_f_op_f32(1234f + -877f)))));
    var var_1 = func_4(u_input.b.x, !((0u >= func_2(vec2<u32>(1u, 31276u), vec4<f32>(var_0.x, 472f, var_0.x, -832f), false)) && true), Struct_1(u_input.b.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(var_0.x)))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(-var_0.yxy)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(518f, var_0.x, -465f), _wgslsmith_f_op_vec3_f32(exp2(var_0.zyy))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -220f) + var_0.zwy)))))));
    var var_3 = Struct_3(var_1.a);
    var var_4 = func_4(i32(-1i) * -var_1.a.x, !((true & (var_2.x <= -939f)) & ((var_0.x != 670f) != any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 34187i, 16041i), -u_input.a), var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-593f, -981f, true))), func_3(true, _wgslsmith_f_op_f32(var_2.x - var_2.x), 1u, firstTrailingBit(firstLeadingBit(vec2<u32>(20210u, 35966u))))));
    return Struct_1(1i, -293f, func_3(492f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-175f - -824f))), _wgslsmith_f_op_f32(var_0.x + -537f), 4294967295u, ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(42971u, 1u), vec2<u32>(1u, 62785u), vec2<bool>(true, false)), firstTrailingBit(vec2<u32>(61897u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 75002u;
    let var_1 = all(vec3<bool>((any(vec2<bool>(true, true)) || all(vec4<bool>(true, false, true, true))) || (false | (-2147483647i >= u_input.b.x)), firstTrailingBit(30233i) < -23497i, select(true, !any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)))));
    let var_2 = func_1();
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(3471u, 76245u, select(1u, ~4765u, !var_2.c.x), abs(_wgslsmith_sub_u32(4294967295u, 61871u))) << (~select(~vec4<u32>(21566u, 4294967295u, 1u, 60016u), ~vec4<u32>(13486u, 4294967295u, 0u, 66605u), any(vec4<bool>(var_1, var_2.c.x, false, false))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~select(vec4<u32>(11906u, 1u, 50857u, 35517u), vec4<u32>(3550u, 5396u, 32202u, 88734u), vec4<bool>(false, var_2.c.x, var_1, var_1)) >> (select(~vec4<u32>(13513u, 1u, 84882u, 0u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(true, var_1, var_2.c.x, var_2.c.x)) % vec4<u32>(32u))));
    let var_3 = !(!select(!select(vec4<bool>(true, var_2.c.x, var_2.c.x, false), vec4<bool>(false, false, var_2.c.x, var_2.c.x), var_2.c.x), !vec4<bool>(var_1, false, false, true), select(!vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(var_2.c.x, var_1, var_2.c.x, true), var_2.c.x || true)));
    var var_4 = Struct_2(var_2, var_2);
    var var_5 = vec4<f32>(var_4.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1096f)) + 1583f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.b * -593f) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))));
    let var_6 = func_4(~1i, all(select(!vec2<bool>(false, var_4.a.c.x), vec2<bool>(var_1, true), var_1)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_4.b.a, -42147i), abs(func_4(var_2.a, var_3.x, Struct_1(u_input.a.x, var_4.a.b, var_2.c)).a.ywy)), 902f, !var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(380f)), -1067f), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(max(-2012f, var_2.b))))));
}

