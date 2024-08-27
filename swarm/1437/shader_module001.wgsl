struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec4<bool> {
    var var_0 = u_input.b;
    var var_1 = ~u_input.a;
    var_0 = u_input.b;
    var var_2 = vec3<bool>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 62809u, 13493u), ~vec3<u32>(49904u, 1u, u_input.a))) > u_input.a, !((arg_1 & (true || arg_0.x)) != false), all(!vec3<bool>(true, arg_1, true)));
    var_1 = u_input.a;
    return select(select(select(!(!vec4<bool>(false, arg_0.x, var_2.x, arg_1)), select(select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(true, var_2.x, var_2.x, arg_0.x)), !vec4<bool>(false, true, false, arg_1), arg_0.x), vec4<bool>(false, true, any(vec4<bool>(true, true, false, false)), true)), !(!vec4<bool>(arg_0.x, false, false, true)), select(!select(vec4<bool>(arg_1, false, arg_1, var_2.x), vec4<bool>(true, true, arg_1, true), vec4<bool>(true, true, false, arg_0.x)), !(!vec4<bool>(arg_0.x, false, true, false)), vec4<bool>(true, all(vec3<bool>(true, arg_1, false)), all(vec4<bool>(true, true, arg_0.x, false)), arg_0.x))), vec4<bool>(any(!vec4<bool>(arg_0.x, arg_1, false, false)), (_wgslsmith_f_op_f32(1000f + 178f) > _wgslsmith_f_op_f32(ceil(-1634f))) || arg_0.x, false & any(select(vec2<bool>(var_2.x, true), arg_0, true)), true), -1691f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-193f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(arg_1.a, arg_1.c, arg_1.b, 8778i, ~arg_1.e);
    let var_1 = Struct_2(arg_1, arg_1);
    var_0 = Struct_1(countOneBits(_wgslsmith_sub_vec4_u32(~var_0.a, select(countOneBits(var_1.b.a), vec4<u32>(0u, 49488u, 13237u, var_0.a.x) & arg_1.a, !arg_0))), _wgslsmith_f_op_f32(abs(289f)), -880f, max(-2147483647i, var_0.d), ~arg_1.e);
    var_0 = arg_1;
    let var_2 = arg_1;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a.wy & var_0.a.wz, vec2<u32>(~(~u_input.a), ~var_0.a.x)), u_input.a, ~var_0.a.x, var_1.b.a.x);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, -1328f, arg_1))))) - vec3<f32>(_wgslsmith_f_op_f32(min(242f, _wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-1890f + -736f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + -631f)))));
    let var_1 = ~(-arg_2.e);
    let var_2 = Struct_2(arg_2, Struct_1(~func_4(func_3(vec2<bool>(false, false), true), arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - 244f))), arg_1, ~select(-u_input.c, -1i, true), abs(vec2<i32>(~2147483647i, u_input.b))));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, vec4<u32>(u_input.a, arg_0.a.x, u_input.a, u_input.a))) ^ vec4<u32>(func_2(u_input.d, arg_0.c, Struct_1(arg_0.a, arg_0.b, arg_0.b, 25088i, arg_0.e)).a.x, u_input.a, ~arg_0.a.x, 24323u), vec4<u32>(8967u, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, 0u), 0u), _wgslsmith_add_u32(func_2(arg_0.e.x, 1244f, Struct_1(arg_0.a, arg_0.c, -429f, 33083i, vec2<i32>(arg_0.d, -22500i))).a.x, 4294967295u), arg_0.a.x)), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1276f), func_2(arg_0.e.x << (u_input.a % 32u), _wgslsmith_f_op_f32(floor(827f)), arg_0).d, _wgslsmith_mod_vec2_i32(firstLeadingBit(arg_0.e), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.e | vec2<i32>(arg_0.e.x, -2147483647i), -vec2<i32>(arg_0.d, u_input.c)), arg_0.e)));
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-562f, _wgslsmith_div_f32(arg_0.b, arg_0.c))), arg_0.b, arg_0.d, vec2<i32>(~min(arg_1, -8509i), _wgslsmith_mult_i32(-arg_1, arg_0.e.x & u_input.c))), arg_0);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -541f);
    var var_3 = Struct_2(arg_0, func_2(func_2(33668i, arg_0.b, func_5(Struct_1(arg_0.a, var_0.a.b, 1099f, arg_0.d, vec2<i32>(18723i, arg_1)))).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-2147483647i, 700f, var_0.b).c + var_0.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -2993f)), Struct_1(~vec4<u32>(arg_0.a.x, 4294967295u, u_input.a, arg_0.a.x), -875f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-1522f + var_0.a.b), true)), _wgslsmith_div_i32(select(arg_0.e.x, 26772i, false), reverseBits(0i)), func_5(Struct_1(vec4<u32>(0u, 55006u, arg_0.a.x, 22150u), var_0.b.b, arg_0.b, arg_1, vec2<i32>(-18320i, u_input.b))).e)));
    var_0 = Struct_2(func_2(countOneBits(var_3.a.d >> (abs(var_0.b.a.x) % 32u)), _wgslsmith_f_op_f32(floor(1835f)), var_3.a), func_5(Struct_1(var_3.a.a, 442f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f), 1911f), _wgslsmith_clamp_i32(abs(u_input.c), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, arg_1), vec3<i32>(1i, arg_0.e.x, -2147483647i))), countOneBits(arg_0.e) ^ var_0.b.e)));
    return 9773u;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_1(vec4<u32>(func_6(func_5(func_2(u_input.c, var_0, Struct_1(vec4<u32>(4294967295u, 56655u, u_input.a, u_input.a), 1035f, 271f, u_input.b, vec2<i32>(2147483647i, u_input.c)))), u_input.d), reverseBits(u_input.a & 44328u), u_input.a, ~(~(~u_input.a))), var_0, var_0, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), 1i, _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(-1i, u_input.d)), countOneBits(~vec2<i32>(u_input.d, u_input.b)))), min(vec2<i32>(u_input.c, -max(-28868i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-17515i, u_input.c) | abs(vec2<i32>(u_input.d, u_input.c)), vec2<i32>(u_input.d, u_input.b) ^ vec2<i32>(u_input.d, u_input.d))));
    let var_2 = var_1;
    let var_3 = -116f;
    let var_4 = ~vec3<i32>(func_5(Struct_1(vec4<u32>(16714u, var_2.a.x, u_input.a, 0u), -230f, var_3, -2147483647i, vec2<i32>(var_2.d, -2147483647i))).d, u_input.d, -u_input.d);
    return func_3(func_3(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, false))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1004f) + -630f) <= _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(f32(-1f) * -372f))).wy, any(vec2<bool>(true, !(var_2.b != var_3)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = -select(0i, -2147483647i, !var_0 | true);
    var var_2 = func_1();
    var var_3 = vec4<i32>(max(-18590i, -33943i) << ((u_input.a & _wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u), u_input.c, firstLeadingBit(1i), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1793i, u_input.b), vec2<i32>(1i, u_input.c))) & -1i) ^ ~vec4<i32>(func_2(-u_input.d, -119f, func_5(Struct_1(vec4<u32>(652u, u_input.a, u_input.a, u_input.a), -364f, -655f, u_input.b, vec2<i32>(u_input.b, u_input.d)))).e.x, _wgslsmith_add_i32(u_input.d, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c, -2147483647i, 1i), ~vec4<i32>(1i, u_input.d, u_input.c, 15450i)), 38828i);
    var var_4 = ~(-firstLeadingBit(var_3.x));
    let var_5 = all(vec2<bool>(false, var_3.x > ~(-var_3.x)));
    var_1 = _wgslsmith_div_i32(func_5(Struct_1(func_5(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a), 218f, -395f, 1i, vec2<i32>(34343i, 17530i))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f) + _wgslsmith_f_op_f32(ceil(226f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1086f)), _wgslsmith_f_op_f32(639f - -966f)), _wgslsmith_add_i32(func_5(Struct_1(vec4<u32>(6741u, u_input.a, 1u, u_input.a), 586f, -590f, 13382i, var_3.zz)).e.x, ~u_input.d), ~(var_3.yw ^ vec2<i32>(u_input.d, u_input.b)))).d, -16297i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1316f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))), 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(836f, -138f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1012f, -997f))))), reverseBits(vec2<i32>(i32(-1i) * -2147483647i, 7932i)));
}

