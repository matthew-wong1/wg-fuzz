struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_5(select(select(arg_0.wz, arg_0.yw, arg_0.x), !vec2<bool>(arg_0.x, !arg_0.x), !select(arg_0.zx, select(arg_0.xz, vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x)), arg_0.x)), Struct_1(vec4<u32>(_wgslsmith_add_u32(~u_input.d, reverseBits(4294967295u)), _wgslsmith_mult_u32(~32345u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(45092u, _wgslsmith_mod_u32(u_input.d, 35478u)), min(~73122u, ~u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(913f, 323f) + vec2<f32>(310f, 507f)))), select(!arg_0, arg_0, arg_0), any(select(!arg_0.zz, !vec2<bool>(arg_0.x, false), arg_0.x)), arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1296f - 2750f), 2565f, -774f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 406f, -673f) + vec3<f32>(-539f, -398f, 1698f)) + vec3<f32>(-224f, 1371f, -953f)))))), _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(-1i, -u_input.c.x)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, -701f, _wgslsmith_div_f32(var_0.b.b.x, var_0.c.x), var_0.b.b.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, 302f, var_0.c.x, -2039f) + vec4<f32>(-533f, var_0.c.x, var_0.c.x, var_0.b.b.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.b.x - -562f))), var_0.b), var_0.b, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 51948u, 4294967295u), var_0.b.a.yzz), ~var_0.b.a.x, firstLeadingBit(14738u)), vec4<u32>(u_input.a.x, max(var_0.b.a.x, u_input.d), ~var_0.b.a.x, u_input.b)), _wgslsmith_f_op_vec2_f32(max(var_0.b.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.c.zx - vec2<f32>(-411f, 951f)))))), var_0.b.e, all(select(vec4<bool>(true, var_0.b.e.x, var_0.b.d, true), var_0.b.c, select(vec4<bool>(false, true, var_0.b.e.x, arg_0.x), var_0.b.c, vec4<bool>(true, false, true, arg_0.x)))), var_0.b.e), var_0.b);
    var var_2 = Struct_5(vec2<bool>(true, true || (false && select(var_0.b.c.x, true, var_0.a.x))), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.b.b.x) + vec2<f32>(var_0.c.x, 1000f)))), var_0.b.e, any(var_0.b.e.wx), !(!vec4<bool>(arg_0.x, false, false, var_0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a.a.wyx, vec3<f32>(-647f, 1025f, var_0.b.b.x))))), min(_wgslsmith_div_i32(-u_input.c.x, _wgslsmith_clamp_i32(~13755i, -1i, abs(var_0.d))), 44995i));
    let var_3 = Struct_1(var_0.b.a, vec2<f32>(_wgslsmith_f_op_f32(177f + 677f), -269f), !var_1.c.e, var_0.b.e.x, !(!vec4<bool>(true, arg_0.x, var_2.a.x, any(var_2.b.e))));
    let var_4 = vec4<bool>(!select(_wgslsmith_f_op_f32(select(var_0.b.b.x, var_2.b.b.x, var_1.d.d)) != _wgslsmith_f_op_f32(-var_1.c.b.x), all(var_2.b.c), any(var_3.e.xwy)), select(_wgslsmith_mod_u32(~var_0.b.a.x, _wgslsmith_mult_u32(var_0.b.a.x, 68165u)) >= ~var_2.b.a.x, true, false), -48319i >= (_wgslsmith_dot_vec4_i32(~u_input.c, u_input.c) << (countOneBits(min(var_1.c.a.x, var_2.b.a.x)) % 32u)), var_0.a.x);
    return var_0.d;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_3(!(!select(arg_0.b.c, arg_0.c.c, vec4<bool>(true, true, true, false)))) | 19701i;
    global0 = ~(~(~u_input.a.x));
    global0 = 4294967295u;
    var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.c.b.x))), _wgslsmith_f_op_f32(abs(arg_0.d.b.x)))), _wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2392f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b.x, arg_0.d.b.x, arg_0.c.b.x, _wgslsmith_f_op_f32(min(-1163f, _wgslsmith_f_op_f32(sign(303f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-571f)), _wgslsmith_div_f32(-1000f, -1867f), arg_0.a.b, _wgslsmith_f_op_f32(sign(-1348f))))));
    return arg_0.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_4(vec4<bool>(true, any(select(arg_1.c, vec4<bool>(true, arg_1.c.x, arg_1.c.x, false), func_2(Struct_3(Struct_2(vec4<f32>(-443f, -304f, 1233f, arg_0), -593f, arg_1), arg_1, Struct_1(arg_1.a, arg_1.b, arg_1.c, arg_1.c.x, vec4<bool>(true, false, false, true)), arg_1)).c.x)), any(select(func_2(Struct_3(Struct_2(vec4<f32>(arg_0, arg_0, -847f, 734f), -1000f, arg_1), Struct_1(u_input.a, vec2<f32>(-1000f, arg_1.b.x), vec4<bool>(true, true, arg_1.e.x, true), arg_1.e.x, arg_1.c), arg_1, Struct_1(vec4<u32>(u_input.b, arg_1.a.x, u_input.b, 1u), arg_1.b, arg_1.c, arg_1.c.x, arg_1.c))).c, func_2(Struct_3(Struct_2(vec4<f32>(arg_1.b.x, -316f, arg_1.b.x, arg_1.b.x), arg_0, Struct_1(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.b), arg_1.b, vec4<bool>(arg_1.c.x, true, true, arg_1.c.x), arg_1.c.x, vec4<bool>(false, arg_1.e.x, arg_1.d, arg_1.e.x))), Struct_1(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, 1u), vec2<f32>(arg_0, -1241f), vec4<bool>(false, arg_1.d, true, arg_1.e.x), false, arg_1.c), arg_1, Struct_1(vec4<u32>(1u, arg_1.a.x, arg_1.a.x, u_input.b), vec2<f32>(arg_1.b.x, arg_0), vec4<bool>(arg_1.d, arg_1.e.x, arg_1.e.x, arg_1.d), true, vec4<bool>(arg_1.e.x, arg_1.e.x, true, arg_1.d)))).c, false)), true), Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 111f), vec2<f32>(arg_1.b.x, arg_1.b.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b - arg_1.b))), !arg_1.c, !any(arg_1.e), select(arg_1.c, !select(vec4<bool>(true, false, false, true), arg_1.c, true), arg_1.e)), Struct_1(~countOneBits(vec4<u32>(arg_1.a.x, 60440u, 4294967295u, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, arg_1.b.x)), arg_1.b) + arg_1.b), func_2(Struct_3(Struct_2(vec4<f32>(2372f, arg_1.b.x, arg_0, arg_1.b.x), arg_0, arg_1), Struct_1(vec4<u32>(arg_1.a.x, 1u, 39974u, arg_1.a.x), arg_1.b, arg_1.c, arg_1.e.x, arg_1.c), arg_1, func_2(Struct_3(Struct_2(vec4<f32>(arg_1.b.x, arg_1.b.x, arg_0, arg_1.b.x), -297f, arg_1), Struct_1(vec4<u32>(arg_1.a.x, 25831u, 105161u, 4981u), vec2<f32>(-826f, arg_1.b.x), arg_1.e, arg_1.e.x, arg_1.c), arg_1, arg_1)))).c, !arg_1.d, !arg_1.e), true);
    var var_1 = false;
    var var_2 = u_input.c.x & u_input.c.x;
    var var_3 = ~abs(select(select(u_input.c.xyw, u_input.c.wzy, arg_1.c.wzw), vec3<i32>(66643i, u_input.c.x, u_input.c.x), vec3<bool>(arg_1.c.x, false, true)) ^ u_input.c.zyz);
    let var_4 = abs(vec4<i32>(-_wgslsmith_div_i32(u_input.c.x, -41339i) & -2032i, abs(max(-1i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), (u_input.c.x >> (~4294967295u % 32u)) << ((firstTrailingBit(u_input.b) ^ 25119u) % 32u), _wgslsmith_add_i32(var_3.x, 1120i) << (((36563u >> (1u % 32u)) | ~var_0.b.a.x) % 32u)));
    return arg_1.e.zx;
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = !vec4<bool>(true, select(true, true, true), false, all(func_4(_wgslsmith_f_op_f32(-arg_0), func_2(Struct_3(Struct_2(vec4<f32>(arg_0, 571f, -1000f, arg_0), arg_0, Struct_1(vec4<u32>(47900u, u_input.a.x, u_input.b, u_input.a.x), vec2<f32>(-545f, 708f), vec4<bool>(false, false, false, false), true, vec4<bool>(false, false, false, true))), Struct_1(u_input.a, vec2<f32>(-1630f, arg_0), vec4<bool>(false, false, false, true), true, vec4<bool>(true, false, false, true)), Struct_1(u_input.a, vec2<f32>(-735f, 213f), vec4<bool>(true, false, false, false), true, vec4<bool>(true, true, true, false)), Struct_1(u_input.a, vec2<f32>(arg_0, arg_0), vec4<bool>(true, true, false, true), false, vec4<bool>(false, false, false, false)))))));
    var var_2 = var_1.xz;
    var var_3 = Struct_4(!vec4<bool>(all(var_1.zz), true, all(vec2<bool>(var_2.x, var_2.x)), all(vec2<bool>(var_2.x, var_1.x))), Struct_1(~(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))), vec4<bool>(!var_2.x, all(!var_1.zw), false, var_1.x), true, vec4<bool>(any(func_2(Struct_3(Struct_2(vec4<f32>(arg_0, -267f, arg_0, arg_0), -992f, Struct_1(vec4<u32>(u_input.a.x, 45316u, 0u, 4294967295u), vec2<f32>(arg_0, arg_0), vec4<bool>(true, true, true, var_2.x), var_2.x, vec4<bool>(true, var_2.x, var_2.x, var_2.x))), Struct_1(u_input.a, vec2<f32>(arg_0, -591f), vec4<bool>(false, var_1.x, var_1.x, true), var_2.x, vec4<bool>(true, true, false, var_1.x)), Struct_1(vec4<u32>(u_input.d, u_input.d, 0u, 1u), vec2<f32>(-1000f, arg_0), vec4<bool>(var_1.x, var_1.x, true, false), true, vec4<bool>(var_1.x, var_1.x, true, var_1.x)), Struct_1(vec4<u32>(u_input.b, 17294u, u_input.d, 38255u), vec2<f32>(871f, arg_0), vec4<bool>(true, var_2.x, true, var_2.x), true, vec4<bool>(var_2.x, var_1.x, var_1.x, var_1.x)))).c.zyx), any(vec3<bool>(var_1.x, true, true)), var_2.x, false)), func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, arg_0, -2808f, arg_0)), _wgslsmith_f_op_f32(-1047f * arg_0), func_2(Struct_3(Struct_2(vec4<f32>(arg_0, -1585f, 763f, -477f), arg_0, Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.b, 1244u), vec2<f32>(arg_0, arg_0), vec4<bool>(var_2.x, true, false, var_2.x), var_2.x, vec4<bool>(false, var_1.x, false, var_2.x))), Struct_1(vec4<u32>(43122u, u_input.a.x, u_input.d, 0u), vec2<f32>(arg_0, -427f), vec4<bool>(true, var_1.x, var_1.x, false), var_2.x, vec4<bool>(true, false, true, var_2.x)), Struct_1(u_input.a, vec2<f32>(arg_0, -131f), vec4<bool>(true, true, false, var_1.x), var_1.x, vec4<bool>(var_2.x, var_2.x, false, true)), Struct_1(vec4<u32>(u_input.d, 80014u, u_input.b, u_input.d), vec2<f32>(arg_0, arg_0), vec4<bool>(var_2.x, var_1.x, var_1.x, false), true, vec4<bool>(var_1.x, var_2.x, false, var_1.x))))), Struct_1(u_input.a, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -613f), vec2<f32>(arg_0, 1000f)), func_2(Struct_3(Struct_2(vec4<f32>(arg_0, -1305f, arg_0, arg_0), arg_0, Struct_1(u_input.a, vec2<f32>(arg_0, arg_0), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_1.x, vec4<bool>(false, false, var_2.x, true))), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.d), vec2<f32>(arg_0, arg_0), vec4<bool>(var_1.x, var_1.x, true, false), var_1.x, vec4<bool>(var_1.x, true, false, var_2.x)), Struct_1(u_input.a, vec2<f32>(-1438f, -657f), vec4<bool>(var_2.x, var_2.x, var_1.x, var_1.x), false, vec4<bool>(var_1.x, var_2.x, var_2.x, true)), Struct_1(vec4<u32>(u_input.d, 2962u, u_input.d, 79314u), vec2<f32>(arg_0, arg_0), vec4<bool>(var_2.x, false, false, false), var_1.x, vec4<bool>(var_1.x, false, var_2.x, var_2.x)))).e, true, !vec4<bool>(true, var_2.x, var_2.x, var_2.x)), func_2(Struct_3(Struct_2(vec4<f32>(974f, -149f, arg_0, 1564f), arg_0, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.d, u_input.d), vec2<f32>(193f, arg_0), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true, vec4<bool>(true, var_1.x, false, true))), Struct_1(u_input.a, vec2<f32>(arg_0, 127f), vec4<bool>(true, var_2.x, var_1.x, var_2.x), true, vec4<bool>(var_1.x, true, false, var_1.x)), Struct_1(u_input.a, vec2<f32>(-838f, arg_0), vec4<bool>(false, var_1.x, false, true), var_2.x, vec4<bool>(var_1.x, var_1.x, false, var_2.x)), Struct_1(u_input.a, vec2<f32>(210f, 1791f), vec4<bool>(false, var_2.x, var_1.x, true), true, vec4<bool>(true, var_2.x, true, var_1.x)))), func_2(Struct_3(Struct_2(vec4<f32>(arg_0, -1411f, arg_0, arg_0), arg_0, Struct_1(vec4<u32>(40673u, u_input.b, 5720u, u_input.b), vec2<f32>(-1019f, arg_0), vec4<bool>(var_2.x, true, var_2.x, true), true, vec4<bool>(false, false, var_1.x, true))), Struct_1(vec4<u32>(45337u, 1u, 58677u, 11455u), vec2<f32>(arg_0, arg_0), vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x, vec4<bool>(var_2.x, var_2.x, var_2.x, var_1.x)), Struct_1(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, u_input.a.x), vec2<f32>(arg_0, -168f), vec4<bool>(true, false, var_1.x, var_2.x), var_1.x, vec4<bool>(true, var_1.x, true, true)), Struct_1(vec4<u32>(u_input.b, u_input.d, 0u, 4294967295u), vec2<f32>(arg_0, arg_0), vec4<bool>(true, var_1.x, false, var_2.x), false, vec4<bool>(var_1.x, var_1.x, true, false)))))), false);
    let var_4 = Struct_1(min(vec4<u32>(var_3.b.a.x, ~var_3.c.a.x, _wgslsmith_sub_u32(u_input.b, u_input.a.x), 22197u), var_3.c.a) | vec4<u32>(0u, var_3.b.a.x << (_wgslsmith_dot_vec3_u32(u_input.a.yyz, vec3<u32>(u_input.d, 0u, 24220u)) % 32u), _wgslsmith_add_u32(var_3.b.a.x, 1u), var_3.c.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_3.c.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_3.b.b.x)), func_2(Struct_3(Struct_2(vec4<f32>(arg_0, 941f, var_3.b.b.x, 781f), -879f, var_3.c), Struct_1(u_input.a, vec2<f32>(782f, var_3.b.b.x), vec4<bool>(true, true, var_3.b.c.x, var_1.x), true, vec4<bool>(var_1.x, var_2.x, var_1.x, false)), var_3.b, var_3.c)).c.zx))))), func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, var_3.b.b.x, var_3.c.b.x, var_3.c.b.x) * vec4<f32>(var_3.b.b.x, 436f, 1594f, var_3.c.b.x)), _wgslsmith_f_op_f32(-arg_0), var_3.b), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(2394u, var_3.c.a.x, 61603u, u_input.b), var_3.b.a), vec2<f32>(var_3.c.b.x, -770f), vec4<bool>(var_1.x, false, false, true), true, !vec4<bool>(true, true, var_1.x, var_3.b.d)), var_3.b, func_2(Struct_3(Struct_2(vec4<f32>(1133f, -606f, var_3.b.b.x, 559f), -493f, var_3.b), Struct_1(u_input.a, var_3.b.b, var_3.b.e, true, vec4<bool>(var_1.x, var_2.x, false, false)), var_3.b, var_3.c)))).e, all(func_2(Struct_3(Struct_2(vec4<f32>(-531f, var_3.b.b.x, -1000f, -286f), var_3.c.b.x, var_3.c), var_3.b, Struct_1(vec4<u32>(37681u, u_input.b, 16684u, var_3.c.a.x), var_3.c.b, var_3.a, var_2.x, vec4<bool>(var_1.x, false, true, false)), Struct_1(vec4<u32>(var_3.b.a.x, var_3.b.a.x, var_3.b.a.x, 36625u), vec2<f32>(-121f, var_3.c.b.x), vec4<bool>(true, true, false, var_1.x), true, var_3.b.e))).e), var_3.c.e);
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_4(vec4<bool>(arg_0, arg_0, false, arg_0), Struct_1(select(~_wgslsmith_div_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, countOneBits(0u), ~u_input.a.x, ~7864u), arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2)) * _wgslsmith_f_op_vec2_f32(arg_2 * vec2<f32>(373f, arg_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(arg_2.x, arg_1), vec2<bool>(false, arg_0))))), vec4<bool>(func_2(Struct_3(Struct_2(vec4<f32>(arg_2.x, -1469f, arg_1, arg_2.x), -978f, Struct_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, 18866u), vec2<f32>(362f, 974f), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0, vec4<bool>(arg_0, arg_0, false, false))), Struct_1(vec4<u32>(1u, u_input.d, 104307u, 4294967295u), arg_2, vec4<bool>(arg_0, false, true, arg_0), false, vec4<bool>(true, arg_0, arg_0, arg_0)), Struct_1(u_input.a, vec2<f32>(arg_2.x, arg_2.x), vec4<bool>(false, true, true, arg_0), arg_0, vec4<bool>(true, arg_0, arg_0, arg_0)), Struct_1(vec4<u32>(4294967295u, u_input.d, 75414u, u_input.b), arg_2, vec4<bool>(arg_0, false, arg_0, arg_0), arg_0, vec4<bool>(true, true, arg_0, true)))).e.x, !arg_0, false, true), !any(func_2(Struct_3(Struct_2(vec4<f32>(828f, 1000f, -791f, 404f), arg_2.x, Struct_1(vec4<u32>(22438u, 19067u, u_input.a.x, u_input.a.x), arg_2, vec4<bool>(false, true, true, arg_0), false, vec4<bool>(arg_0, arg_0, true, false))), Struct_1(vec4<u32>(97730u, u_input.b, u_input.d, 36602u), vec2<f32>(-712f, -425f), vec4<bool>(arg_0, true, false, true), false, vec4<bool>(true, true, true, arg_0)), Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec2<f32>(arg_1, arg_2.x), vec4<bool>(arg_0, arg_0, arg_0, false), true, vec4<bool>(arg_0, arg_0, arg_0, arg_0)), Struct_1(vec4<u32>(4294967295u, 32590u, u_input.b, u_input.d), arg_2, vec4<bool>(arg_0, false, arg_0, false), arg_0, vec4<bool>(arg_0, arg_0, arg_0, arg_0)))).c), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0, false, arg_0, true), arg_0), vec4<bool>(all(vec4<bool>(arg_0, false, arg_0, arg_0)), false, func_4(-1129f, Struct_1(vec4<u32>(u_input.b, u_input.d, 12258u, u_input.b), vec2<f32>(-229f, 336f), vec4<bool>(arg_0, arg_0, arg_0, true), true, vec4<bool>(arg_0, false, arg_0, true))).x, true), true)), func_2(Struct_3(Struct_2(vec4<f32>(arg_2.x, 807f, arg_1, 829f), _wgslsmith_f_op_f32(sign(641f)), func_2(Struct_3(Struct_2(vec4<f32>(1000f, arg_1, arg_2.x, arg_1), arg_2.x, Struct_1(u_input.a, vec2<f32>(arg_2.x, arg_2.x), vec4<bool>(arg_0, true, false, arg_0), false, vec4<bool>(arg_0, true, arg_0, true))), Struct_1(u_input.a, arg_2, vec4<bool>(arg_0, false, false, arg_0), false, vec4<bool>(arg_0, arg_0, arg_0, true)), Struct_1(vec4<u32>(u_input.d, u_input.a.x, 1u, 1u), vec2<f32>(arg_2.x, -1301f), vec4<bool>(arg_0, false, true, true), arg_0, vec4<bool>(arg_0, false, false, arg_0)), Struct_1(u_input.a, arg_2, vec4<bool>(arg_0, arg_0, false, true), arg_0, vec4<bool>(arg_0, false, true, false))))), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 6177u, 28626u), _wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(-441f, 1000f)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), !arg_0, func_2(Struct_3(Struct_2(vec4<f32>(595f, arg_1, 139f, 1337f), arg_2.x, Struct_1(vec4<u32>(u_input.a.x, u_input.d, u_input.d, 72011u), arg_2, vec4<bool>(true, false, arg_0, false), false, vec4<bool>(true, true, false, arg_0))), Struct_1(u_input.a, vec2<f32>(arg_2.x, -576f), vec4<bool>(arg_0, false, false, true), true, vec4<bool>(false, arg_0, false, false)), Struct_1(vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.b), vec2<f32>(535f, arg_2.x), vec4<bool>(arg_0, arg_0, false, false), false, vec4<bool>(arg_0, arg_0, true, false)), Struct_1(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d), arg_2, vec4<bool>(arg_0, arg_0, false, arg_0), false, vec4<bool>(true, false, arg_0, false)))).c), Struct_1(vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, arg_1) + arg_2), !vec4<bool>(arg_0, arg_0, false, true), func_2(Struct_3(Struct_2(vec4<f32>(-884f, -310f, arg_2.x, arg_2.x), arg_2.x, Struct_1(u_input.a, vec2<f32>(-146f, -163f), vec4<bool>(true, true, arg_0, false), arg_0, vec4<bool>(true, true, arg_0, arg_0))), Struct_1(u_input.a, vec2<f32>(2598f, arg_1), vec4<bool>(arg_0, arg_0, true, false), arg_0, vec4<bool>(arg_0, true, true, true)), Struct_1(u_input.a, vec2<f32>(290f, arg_2.x), vec4<bool>(arg_0, true, arg_0, false), arg_0, vec4<bool>(arg_0, arg_0, arg_0, arg_0)), Struct_1(vec4<u32>(88969u, u_input.b, u_input.a.x, 54209u), vec2<f32>(arg_1, arg_2.x), vec4<bool>(arg_0, true, arg_0, false), true, vec4<bool>(arg_0, false, arg_0, false)))).e.x, func_2(Struct_3(Struct_2(vec4<f32>(192f, 201f, 1878f, 265f), arg_2.x, Struct_1(u_input.a, vec2<f32>(arg_2.x, 612f), vec4<bool>(arg_0, true, true, arg_0), arg_0, vec4<bool>(arg_0, arg_0, false, true))), Struct_1(vec4<u32>(u_input.d, 13991u, 41232u, u_input.b), arg_2, vec4<bool>(false, arg_0, arg_0, true), arg_0, vec4<bool>(false, false, arg_0, false)), Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.d, 1u), vec2<f32>(340f, -207f), vec4<bool>(true, arg_0, true, false), arg_0, vec4<bool>(arg_0, arg_0, arg_0, false)), Struct_1(vec4<u32>(0u, u_input.b, 33883u, u_input.a.x), arg_2, vec4<bool>(false, arg_0, arg_0, true), arg_0, vec4<bool>(true, arg_0, arg_0, arg_0)))).e), Struct_1(func_2(Struct_3(Struct_2(vec4<f32>(-1359f, arg_2.x, 994f, arg_1), arg_2.x, Struct_1(u_input.a, vec2<f32>(arg_2.x, arg_1), vec4<bool>(true, arg_0, false, false), true, vec4<bool>(true, arg_0, arg_0, false))), Struct_1(u_input.a, arg_2, vec4<bool>(arg_0, false, true, false), false, vec4<bool>(false, arg_0, true, arg_0)), Struct_1(u_input.a, vec2<f32>(arg_2.x, arg_1), vec4<bool>(true, arg_0, false, false), false, vec4<bool>(arg_0, true, arg_0, false)), Struct_1(u_input.a, arg_2, vec4<bool>(false, arg_0, true, arg_0), true, vec4<bool>(true, arg_0, arg_0, arg_0)))).a, vec2<f32>(arg_2.x, arg_2.x), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), false, func_2(Struct_3(Struct_2(vec4<f32>(1000f, arg_1, -354f, 387f), 1000f, Struct_1(u_input.a, arg_2, vec4<bool>(arg_0, arg_0, arg_0, true), arg_0, vec4<bool>(false, true, false, arg_0))), Struct_1(vec4<u32>(u_input.d, u_input.b, u_input.b, u_input.b), arg_2, vec4<bool>(true, false, true, arg_0), arg_0, vec4<bool>(arg_0, arg_0, true, arg_0)), Struct_1(u_input.a, arg_2, vec4<bool>(true, false, arg_0, arg_0), true, vec4<bool>(false, arg_0, false, arg_0)), Struct_1(u_input.a, vec2<f32>(-1000f, arg_1), vec4<bool>(true, true, arg_0, false), arg_0, vec4<bool>(true, arg_0, false, arg_0)))).c))), false);
    var_1 = Struct_4(var_1.a, var_1.b, func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.b.x, var_1.c.b.x, -1000f, arg_1)), _wgslsmith_f_op_f32(-arg_2.x), var_1.b), var_1.c, var_1.b, func_2(Struct_3(Struct_2(vec4<f32>(-275f, var_1.c.b.x, arg_1, var_1.c.b.x), arg_1, var_1.c), var_1.c, var_1.b, Struct_1(vec4<u32>(7527u, var_1.b.a.x, 16512u, u_input.b), vec2<f32>(arg_1, -679f), var_1.c.c, var_1.d, vec4<bool>(true, arg_0, var_1.a.x, true)))))), arg_0);
    var_1 = Struct_4(!select(!vec4<bool>(true, arg_0, arg_0, arg_0), func_2(Struct_3(Struct_2(vec4<f32>(748f, 900f, -347f, 1282f), arg_2.x, var_1.c), var_1.c, Struct_1(var_1.c.a, arg_2, vec4<bool>(var_1.c.d, false, arg_0, true), var_1.d, vec4<bool>(arg_0, false, false, var_1.d)), Struct_1(vec4<u32>(4294967295u, u_input.b, 0u, 33171u), vec2<f32>(-222f, arg_2.x), var_1.b.e, var_1.c.e.x, var_1.b.c))).e, select(true, u_input.b >= 32958u, var_1.d != arg_0)), func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1107f, -518f, var_1.b.b.x, arg_1)), _wgslsmith_f_op_f32(-arg_2.x), func_2(Struct_3(Struct_2(vec4<f32>(1332f, 795f, 2229f, 446f), var_1.b.b.x, var_1.c), var_1.b, var_1.b, Struct_1(vec4<u32>(u_input.d, 1u, u_input.a.x, 1u), vec2<f32>(1459f, 578f), vec4<bool>(arg_0, arg_0, false, true), true, vec4<bool>(var_1.d, arg_0, var_1.a.x, var_1.b.e.x))))), var_1.c, Struct_1(_wgslsmith_add_vec4_u32(u_input.a, var_1.c.a), _wgslsmith_f_op_vec2_f32(-arg_2), !var_1.a, !arg_0, var_1.b.e), var_1.b)), func_2(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 2142f, var_1.c.b.x) * vec4<f32>(-1138f, arg_2.x, -660f, var_1.c.b.x)), arg_2.x, func_2(Struct_3(Struct_2(vec4<f32>(-753f, 1000f, arg_2.x, arg_1), -634f, var_1.c), var_1.c, Struct_1(u_input.a, arg_2, vec4<bool>(false, true, false, true), false, var_1.b.c), Struct_1(vec4<u32>(u_input.a.x, 0u, 78350u, 1u), var_1.b.b, vec4<bool>(true, var_1.a.x, false, var_1.b.e.x), false, var_1.b.c)))), func_2(Struct_3(Struct_2(vec4<f32>(-1379f, var_1.b.b.x, var_1.c.b.x, -953f), 423f, Struct_1(u_input.a, var_1.c.b, vec4<bool>(var_1.b.d, false, true, arg_0), true, var_1.b.e)), Struct_1(vec4<u32>(20563u, var_1.b.a.x, 1u, 4294967295u), vec2<f32>(-720f, 603f), var_1.a, false, var_1.b.c), Struct_1(vec4<u32>(var_1.b.a.x, 53305u, u_input.d, 1u), var_1.b.b, var_1.c.e, var_1.a.x, vec4<bool>(arg_0, true, arg_0, false)), var_1.b)), func_2(Struct_3(Struct_2(vec4<f32>(1103f, -160f, -992f, arg_2.x), var_1.b.b.x, Struct_1(vec4<u32>(var_1.c.a.x, u_input.a.x, 4294967295u, 0u), vec2<f32>(arg_1, arg_2.x), var_1.b.e, var_1.d, vec4<bool>(false, var_1.c.d, true, var_1.d))), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), arg_2, vec4<bool>(var_1.a.x, true, false, arg_0), arg_0, vec4<bool>(var_1.a.x, false, var_1.c.e.x, var_1.d)), Struct_1(vec4<u32>(u_input.a.x, var_1.b.a.x, 77349u, var_1.c.a.x), vec2<f32>(-1217f, var_1.b.b.x), var_1.a, arg_0, var_1.c.e), var_1.b)), Struct_1(u_input.a, vec2<f32>(-1855f, var_1.c.b.x), select(var_1.c.c, vec4<bool>(true, false, var_1.b.d, false), vec4<bool>(var_1.c.c.x, true, arg_0, arg_0)), all(var_1.b.e.xzw), vec4<bool>(var_1.c.e.x, arg_0, false, arg_0)))), var_1.d);
    var var_2 = Struct_5(vec2<bool>(((i32(-1i) * -2147483647i) >> (0u % 32u)) < abs(u_input.c.x), any(!func_2(Struct_3(Struct_2(vec4<f32>(arg_2.x, -727f, arg_2.x, arg_2.x), 134f, Struct_1(vec4<u32>(4978u, 1u, u_input.d, 4294967295u), vec2<f32>(440f, arg_2.x), vec4<bool>(false, true, true, true), false, var_1.c.c)), var_1.c, var_1.b, Struct_1(vec4<u32>(0u, 65983u, var_1.b.a.x, var_1.b.a.x), arg_2, vec4<bool>(var_1.d, false, false, true), var_1.c.d, var_1.c.c))).c.zxz)), func_2(Struct_3(Struct_2(vec4<f32>(arg_1, arg_1, -763f, -781f), _wgslsmith_f_op_f32(f32(-1f) * -497f), func_2(Struct_3(Struct_2(vec4<f32>(-845f, var_1.b.b.x, arg_1, arg_1), -1137f, Struct_1(vec4<u32>(7009u, var_1.b.a.x, 83156u, u_input.a.x), arg_2, vec4<bool>(var_1.c.e.x, var_1.a.x, var_1.a.x, var_1.b.c.x), true, var_1.c.e)), var_1.c, Struct_1(vec4<u32>(30501u, 4294967295u, 0u, 15598u), var_1.c.b, vec4<bool>(arg_0, var_1.d, true, true), var_1.c.e.x, var_1.a), Struct_1(var_1.c.a, vec2<f32>(-593f, -2214f), vec4<bool>(arg_0, true, true, var_1.c.c.x), arg_0, vec4<bool>(true, arg_0, var_1.d, false))))), func_2(Struct_3(Struct_2(vec4<f32>(774f, 437f, -426f, -792f), -908f, var_1.b), var_1.c, Struct_1(vec4<u32>(u_input.b, 1u, 18791u, 78982u), var_1.c.b, var_1.a, var_1.b.c.x, vec4<bool>(false, var_1.a.x, false, false)), Struct_1(vec4<u32>(u_input.b, var_1.b.a.x, 64146u, 1u), vec2<f32>(1568f, arg_2.x), vec4<bool>(var_1.a.x, arg_0, true, arg_0), arg_0, vec4<bool>(false, var_1.c.c.x, true, false)))), func_2(Struct_3(Struct_2(vec4<f32>(var_1.c.b.x, 1049f, 394f, arg_2.x), -1673f, Struct_1(var_1.c.a, vec2<f32>(var_1.c.b.x, 1810f), var_1.a, var_1.d, vec4<bool>(arg_0, false, var_1.b.e.x, arg_0))), Struct_1(vec4<u32>(var_1.c.a.x, 61307u, 56450u, var_1.c.a.x), vec2<f32>(arg_2.x, -4176f), var_1.b.e, var_1.d, var_1.b.e), Struct_1(u_input.a, vec2<f32>(arg_1, arg_2.x), vec4<bool>(arg_0, true, arg_0, var_1.a.x), arg_0, var_1.b.e), Struct_1(vec4<u32>(var_1.b.a.x, u_input.b, var_1.c.a.x, var_1.c.a.x), vec2<f32>(574f, arg_2.x), vec4<bool>(true, false, arg_0, var_1.b.e.x), arg_0, var_1.a))), func_2(Struct_3(Struct_2(vec4<f32>(arg_1, -210f, -346f, arg_2.x), -334f, Struct_1(vec4<u32>(0u, var_1.c.a.x, var_1.c.a.x, 37609u), vec2<f32>(arg_2.x, -949f), vec4<bool>(true, arg_0, false, true), true, var_1.b.c)), Struct_1(vec4<u32>(var_1.b.a.x, u_input.b, 64651u, 4294967295u), vec2<f32>(arg_1, 293f), var_1.c.c, true, vec4<bool>(true, true, arg_0, true)), var_1.c, Struct_1(vec4<u32>(u_input.b, 1u, 4294967295u, var_1.c.a.x), vec2<f32>(arg_2.x, var_1.b.b.x), vec4<bool>(var_1.b.c.x, var_1.d, false, false), arg_0, vec4<bool>(false, var_1.d, var_1.b.d, true)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(f32(-1f) * -2439f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_1, var_1.b.b.x), vec3<f32>(-1000f, 1331f, arg_1), arg_0)))), vec3<bool>(true, true, var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b.x, -231f, arg_1) + vec3<f32>(arg_2.x, -291f, arg_1))) * vec3<f32>(var_1.c.b.x, arg_1, -1339f)))), 2147483647i);
    return 30336u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(98130u, _wgslsmith_mod_u32((u_input.d ^ u_input.b) ^ 9883u, func_5(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1511f + 1933f))), vec2<f32>(_wgslsmith_f_op_f32(266f - -1653f), _wgslsmith_f_op_f32(func_1(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(Struct_3(Struct_2(vec4<f32>(1989f, -1765f, 961f, -300f), -1149f, Struct_1(u_input.a, vec2<f32>(-406f, -281f), vec4<bool>(false, true, false, true), false, vec4<bool>(false, false, false, false))), Struct_1(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.a.x), vec2<f32>(1746f, 411f), vec4<bool>(false, true, true, false), true, vec4<bool>(false, false, false, true)), Struct_1(vec4<u32>(u_input.b, 4294967295u, u_input.b, 44207u), vec2<f32>(297f, -948f), vec4<bool>(false, false, false, false), false, vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec2<f32>(101f, -867f), vec4<bool>(true, false, false, false), true, vec4<bool>(false, false, false, true)))).b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-571f - -780f)))))), ~_wgslsmith_sub_vec2_u32(func_2(Struct_3(Struct_2(vec4<f32>(1000f, 496f, 448f, -1000f), -129f, Struct_1(vec4<u32>(87594u, u_input.a.x, u_input.d, u_input.a.x), vec2<f32>(476f, -546f), vec4<bool>(true, false, true, false), false, vec4<bool>(true, true, true, false))), Struct_1(u_input.a, vec2<f32>(-1857f, -854f), vec4<bool>(true, false, false, true), true, vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), vec2<f32>(1470f, 1245f), vec4<bool>(false, false, true, false), true, vec4<bool>(true, false, false, true)), Struct_1(u_input.a, vec2<f32>(-828f, 1262f), vec4<bool>(false, true, false, false), false, vec4<bool>(true, true, true, false)))).a.yw, ~vec2<u32>(37504u, 19674u)));
}

