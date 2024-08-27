struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = Struct_2(-924f, _wgslsmith_f_op_f32(-arg_2.c.x), select(!(!vec2<bool>(var_0.a, arg_2.a)), select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a), vec2<bool>(arg_1.a, true), !arg_2.a), select(select(vec2<bool>(arg_1.a, global0.x), vec2<bool>(false, true), vec2<bool>(false, arg_1.a)), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), false), false)), select(select(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, false), vec2<bool>(global0.x, true)), select(vec2<bool>(var_0.a, global0.x), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(false, var_0.a)), any(vec3<bool>(false, false, arg_1.a))), !select(vec2<bool>(false, arg_2.a), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), false)));
    let var_2 = arg_0;
    global0 = vec2<bool>(arg_1.a, all(select(select(!vec3<bool>(false, global0.x, arg_2.a), select(vec3<bool>(arg_2.a, false, true), vec3<bool>(global0.x, var_0.a, arg_1.a), true), vec3<bool>(true, true, true)), select(vec3<bool>(arg_2.a, arg_1.a, true), select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.a, true), vec3<bool>(false, false, var_1.c.x)), vec3<bool>(true, true, true)), var_0.a || all(vec4<bool>(global0.x, arg_2.a, global0.x, false)))));
    let var_3 = Struct_3(-1047f, u_input.a.xw);
    return vec4<bool>(!(countOneBits(_wgslsmith_add_i32(u_input.d, 1i)) <= _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, var_2), var_2)), true, true, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-2956f)), arg_1.a)), _wgslsmith_f_op_f32(1406f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1784f + arg_1.a))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    var var_0 = arg_2.c;
    var var_1 = Struct_3(-751f, ~(~u_input.a.zw) >> ((vec2<u32>(_wgslsmith_sub_u32(32800u, 27419u), firstTrailingBit(1u)) & u_input.a.wz) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(func_3(76245i, Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.c.x, arg_3.a, 309f) * vec3<f32>(306f, arg_3.b, 526f))), arg_2.c.c), Struct_1(var_1.a <= arg_2.b.c.x, vec3<f32>(_wgslsmith_f_op_f32(var_1.a + -513f), -1069f, -1835f), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), 1f, 859f))), Struct_3(var_1.a, max(var_1.b, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x) >> (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(13667u, 1u) ^ u_input.a.wz)))));
    let var_3 = 1i;
    var_1 = Struct_3(-1599f, firstLeadingBit(u_input.a.yw));
    return arg_3;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    global0 = vec2<bool>(true, u_input.a.x < u_input.b);
    let var_0 = Struct_1(arg_1.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -777f, arg_0) + vec3<f32>(1954f, -1191f, 431f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b * arg_0), _wgslsmith_f_op_f32(1154f + arg_1.a), -484f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, -358f, arg_0))))));
    var var_1 = false;
    var_1 = global0.x;
    let var_2 = vec4<u32>(u_input.c, u_input.a.x & 0u, ~(~u_input.b), countOneBits(50034u));
    return vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(~u_input.d, -2147483647i)) | 36193i, 2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.d, 0i), countOneBits(u_input.d)), vec2<i32>(1i, 1i)), u_input.d);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = all(select(!vec4<bool>(true, true, any(vec2<bool>(false, global0.x)), global0.x), vec4<bool>(global0.x, true, any(!vec4<bool>(global0.x, false, global0.x, global0.x)), all(!vec4<bool>(global0.x, global0.x, false, false))), !vec4<bool>(!global0.x, global0.x & true, !global0.x, true)));
    global0 = select(vec2<bool>(any(vec2<bool>(!var_0, true)), func_2(!(!vec2<bool>(var_0, true)), ~(-2221i), Struct_4(~64134u, Struct_1(global0.x, vec3<f32>(-493f, arg_1.a, arg_1.a), vec3<f32>(-375f, -315f, arg_1.a)), Struct_1(false, vec3<f32>(-1000f, arg_1.a, arg_1.a), vec3<f32>(arg_1.a, arg_1.a, arg_1.a)), arg_0.yy), Struct_2(285f, arg_1.a, vec2<bool>(true, true))).c.x), select(vec2<bool>(global0.x, false), !(!select(vec2<bool>(false, var_0), vec2<bool>(false, false), vec2<bool>(global0.x, var_0))), global0.x), any(!vec2<bool>(global0.x, -46475i >= arg_0.x)));
    global0 = !(!(!(!func_3(0i, Struct_1(var_0, vec3<f32>(447f, -498f, -1909f), vec3<f32>(arg_1.a, -580f, -360f)), Struct_1(global0.x, vec3<f32>(-513f, arg_1.a, 938f), vec3<f32>(-1210f, -1289f, 807f))).zy)));
    global0 = !select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(global0.x, true, false, var_0)), true), global0.x), vec2<bool>(var_0 | false, all(vec4<bool>(global0.x, global0.x, false, var_0))), select(vec2<bool>(true, arg_1.a != 1396f), vec2<bool>(true, true), false));
    let var_1 = 1000f;
    return Struct_4(70496u, Struct_1(~firstTrailingBit(61896u) > max(_wgslsmith_mult_u32(arg_2.x, arg_2.x), ~51526u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-129f, 642f, -1511f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 965f, 1298f) * vec3<f32>(151f, -1620f, arg_1.a)), vec3<bool>(global0.x, false, var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 523f) - vec3<f32>(1305f, arg_1.a, var_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(745f, -1000f, var_1) + vec3<f32>(274f, var_1, 1442f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-519f, 2360f, 253f), vec3<f32>(-131f, 742f, arg_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1540f, var_1, arg_1.a)))))), Struct_1(!any(vec3<bool>(var_0, true, false)) && false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 143f, 1562f), vec3<f32>(-342f, -999f, 1218f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, arg_1.a, var_1))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-225f)), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(var_1 * var_1)))), vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -143f)), 1000f)), vec2<i32>(_wgslsmith_add_i32(1i, -1i), countOneBits(arg_0.x)) ^ max(arg_0.xy, arg_0.yx));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_4 {
    global0 = vec2<bool>(true, all(vec4<bool>(true, select(global0.x, false, global0.x), !global0.x, global0.x)));
    var var_0 = func_6(_wgslsmith_div_vec3_i32(func_5(-1341f, func_2(vec2<bool>(global0.x, global0.x), u_input.d, Struct_4(19556u, Struct_1(false, vec3<f32>(1000f, 180f, 568f), vec3<f32>(2613f, arg_1, arg_1)), Struct_1(global0.x, vec3<f32>(arg_1, arg_0, -361f), vec3<f32>(arg_0, arg_1, -416f)), vec2<i32>(u_input.d, u_input.d)), Struct_2(arg_1, 200f, vec2<bool>(true, global0.x)))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 3032u), ~u_input.a.wzw) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d >> (u_input.b % 32u), ~0i, u_input.d), firstLeadingBit(-vec3<i32>(u_input.d, u_input.d, -7104i)))), Struct_3(740f, ~vec2<u32>(121932u >> (u_input.c % 32u), reverseBits(14044u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b & 63841u, firstLeadingBit(u_input.c), ~7980u), _wgslsmith_sub_vec3_u32(u_input.a.yzy >> (u_input.a.zyy % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.a.xxw, vec3<u32>(u_input.a.x, 34170u, u_input.c)))));
    var_0 = func_6(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, firstLeadingBit(u_input.d), ~var_0.d.x), vec3<i32>(_wgslsmith_mod_i32(0i, var_0.d.x), -10225i, ~19598i), firstLeadingBit(-vec3<i32>(-17824i, 19812i, u_input.d))), Struct_3(1104f, vec2<u32>(43860u, ~96526u >> (1u % 32u))), _wgslsmith_div_vec3_u32(~countOneBits(min(vec3<u32>(var_0.a, var_0.a, var_0.a), u_input.a.zyy)), ~vec3<u32>(0u, ~35171u, ~1u)));
    global0 = select(vec2<bool>(true, any(vec4<bool>(!var_0.c.a, var_0.c.a || global0.x, true | global0.x, true))), !(!(!(!vec2<bool>(var_0.c.a, global0.x)))), !func_2(select(!vec2<bool>(global0.x, true), vec2<bool>(false, var_0.b.a), var_0.b.a), ~_wgslsmith_div_i32(-2147483647i, var_0.d.x), Struct_4(u_input.a.x ^ 4294967295u, Struct_1(var_0.b.a, var_0.b.b, vec3<f32>(arg_0, var_0.b.c.x, -304f)), func_6(vec3<i32>(u_input.d, var_0.d.x, var_0.d.x), Struct_3(1266f, u_input.a.yx), u_input.a.yzz).b, ~var_0.d), Struct_2(_wgslsmith_f_op_f32(1000f - -624f), _wgslsmith_f_op_f32(arg_0 - var_0.b.b.x), func_3(7539i, var_0.b, Struct_1(true, var_0.b.b, var_0.c.c)).zz)).c);
    var var_1 = any(!(!(!select(vec4<bool>(true, true, var_0.b.a, var_0.c.a), vec4<bool>(var_0.c.a, var_0.b.a, false, false), vec4<bool>(false, false, global0.x, false)))));
    return func_6(_wgslsmith_mult_vec3_i32(vec3<i32>(12885i, var_0.d.x | var_0.d.x, -1i), vec3<i32>(~1i, 64096i, var_0.d.x)) >> (~u_input.a.zxy % vec3<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * arg_0)), vec2<u32>(u_input.c, ~var_0.a)), vec3<u32>(~(~(~var_0.a)), 0u, ~0u));
}

fn func_7(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = vec4<i32>(7376i, -arg_1.x, func_5(arg_3.b.c.x, Struct_2(arg_3.c.b.x, arg_3.c.c.x, !func_2(vec2<bool>(false, global0.x), arg_2.x, Struct_4(arg_3.a, Struct_1(arg_3.c.a, vec3<f32>(arg_3.c.b.x, 417f, arg_3.b.c.x), arg_3.b.c), arg_3.c, arg_0), Struct_2(arg_3.c.c.x, -1539f, vec2<bool>(true, arg_3.c.a))).c)).x, 1i);
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(~u_input.a.wwx), u_input.a.xwz), u_input.a.wxz ^ (vec3<u32>(arg_3.a, u_input.a.x, 4294967295u) >> (u_input.a.wzx % vec3<u32>(32u)))), ~(~(~(~u_input.a.xxx))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x);
    var var_3 = vec3<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3635u, var_1.x), vec2<u32>(arg_3.a, 4294967295u)), var_1.x >> (4294967295u % 32u), ~1u) ^ ((~u_input.b & (arg_3.a & arg_3.a)) << ((_wgslsmith_div_u32(arg_3.a, 25194u) ^ countOneBits(0u)) % 32u)), _wgslsmith_add_u32(u_input.a.x | 39585u, 0u), 1u);
    global0 = !func_3(-32051i, arg_3.b, func_6(_wgslsmith_add_vec3_i32(-var_0.xyx, var_0.zyx), Struct_3(-1000f, max(var_3.yy, vec2<u32>(1773u, arg_3.a))), abs(vec3<u32>(arg_3.a, 1207u, arg_3.a))).c).yz;
    return !vec2<bool>(!(true & arg_3.c.a), ~var_3.x < reverseBits(arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~16384i;
    global0 = !func_7(vec2<i32>(~(28169i | var_0), 6252i), ~(-(~vec3<i32>(u_input.d, -11914i, u_input.d))), vec3<i32>(-1745i, 1i, -u_input.d << (~u_input.c % 32u)), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(930f, -1430f)))), 1487f));
    var var_1 = Struct_4(~u_input.c, func_6(vec3<i32>(~(-2147483647i), u_input.d | 24644i, ~countOneBits(u_input.d)), Struct_3(-1000f, vec2<u32>(firstTrailingBit(u_input.b), 4294967295u)), vec3<u32>(~858u, u_input.b, u_input.a.x)).b, func_6(-min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 0i, 62318i), vec3<i32>(-16796i, var_0, 0i)), ~vec3<i32>(-1321i, u_input.d, u_input.d)), Struct_3(-1000f, u_input.a.xx), ~reverseBits(u_input.a.xzz)).c, _wgslsmith_clamp_vec2_i32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1369f)) + _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(global0.x, global0.x, true, false), Struct_3(-598f, vec2<u32>(u_input.a.x, 0u)))).x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -733f), _wgslsmith_f_op_f32(f32(-1f) * -269f), func_3(var_0, Struct_1(global0.x, vec3<f32>(-585f, -1579f, -1582f), vec3<f32>(-647f, -1219f, 246f)), Struct_1(global0.x, vec3<f32>(1328f, 1363f, -364f), vec3<f32>(829f, 436f, 1027f))).zw)).yz, abs(select(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(var_0, u_input.d)), vec2<i32>(-2147483647i, u_input.d) << (u_input.a.wx % vec2<u32>(32u)), global0.x)), -_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0, -57075i), vec2<i32>(-18394i, u_input.d))));
    var var_2 = global0.x;
    var var_3 = abs(func_1(_wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.c.x)) * _wgslsmith_f_op_f32(floor(var_1.b.b.x))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(31425i, -var_0, 678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

