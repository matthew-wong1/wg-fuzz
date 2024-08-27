struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25349u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global0 = ~0u;
    var var_0 = Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), vec3<bool>(select(true, true, false), true, any(vec2<bool>(true, false))), false)), false, vec3<f32>(-559f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(1f, 1513f, true)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(478f, 1400f)))))));
    global0 = u_input.b.x;
    let var_1 = Struct_1(var_0.a, all(!vec4<bool>(var_0.b, var_0.b, false || var_0.a.x, select(var_0.b, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec3_f32(round(var_0.c)));
    let var_2 = Struct_2(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(275f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.c.zx + var_1.c.xx), var_1.c.zz)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c.x, -186f), var_0.c.zy))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(max(906f, 1560f))), !select(var_1.a.xx, select(vec2<bool>(false, var_0.a.x), vec2<bool>(true, var_0.a.x), vec2<bool>(var_1.b, true)), vec2<bool>(var_0.b, var_1.b)))));
    return select(false, var_1.b, true);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.zx;
    global0 = (_wgslsmith_sub_u32(~4294967295u, u_input.a.x) & ~4294967295u) >> (30471u % 32u);
    var var_1 = !func_3();
    var var_2 = Struct_2(Struct_1(!vec3<bool>(select(true, true, false), false, true), any(vec3<bool>(true, true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f * -1310f), _wgslsmith_f_op_f32(ceil(1818f)), _wgslsmith_f_op_f32(f32(-1f) * -410f)), vec3<f32>(_wgslsmith_f_op_f32(496f * -141f), -210f, 991f))), -643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-706f - _wgslsmith_f_op_f32(select(772f, -958f, false)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1993f, -844f) + vec2<f32>(-1000f, -1000f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1557f)), _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f - -279f))))));
    global0 = ~46074u;
    return Struct_1(vec3<bool>(_wgslsmith_sub_i32(-u_input.e, u_input.c) >= abs(~(-2147483647i)), !all(!var_2.a.a.xy), false), 4294967295u == u_input.a.x, vec3<f32>(-364f, _wgslsmith_f_op_f32(sign(684f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-926f, arg_1.c.x)))) + _wgslsmith_f_op_f32(min(arg_1.c.x, _wgslsmith_f_op_f32(845f - -125f)))));
    let var_1 = -(vec2<i32>(-abs(2147483647i), min(reverseBits(2147483647i), countOneBits(arg_0))) >> (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, 4294967295u)), u_input.b.yz) % vec2<u32>(32u)));
    var var_2 = vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(min(13205i, _wgslsmith_dot_vec2_i32(var_1, vec2<i32>(var_1.x, var_1.x))), max(-31818i, var_1.x))), _wgslsmith_sub_i32(1i, arg_0) | u_input.c, -24261i, -2147483647i);
    var var_3 = Struct_2(Struct_1(arg_2.xyx, false, vec3<f32>(_wgslsmith_f_op_f32(step(-298f, arg_1.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(293f)), _wgslsmith_f_op_f32(max(arg_1.c.x, var_0)), all(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x)))), 1000f, _wgslsmith_f_op_f32(ceil(-203f)), func_2().c.xz);
    var var_4 = countOneBits(-var_1.x);
    return var_3.a;
}

fn func_1(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_2(func_4(-u_input.e, func_2(), !(!(!vec4<bool>(false, arg_0, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(floor(-685f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) - -339f), 114f)));
    let var_1 = func_4(u_input.e, func_4(-_wgslsmith_dot_vec2_i32(min(vec2<i32>(-4340i, 1224i), vec2<i32>(u_input.c, u_input.e)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.e, 0i))), Struct_1(vec3<bool>(!arg_0, var_0.a.b, false), var_0.a.b, var_0.a.c), !(!vec4<bool>(false, arg_0, var_0.a.b, arg_0))), vec4<bool>(arg_0, !func_3(), var_0.a.b, arg_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1209f))), 817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.d.x))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_0.a.c))))));
    var_0 = Struct_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-422f, -2440f)), _wgslsmith_f_op_f32(min(var_2.x, func_4(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.c, u_input.e, u_input.c)), vec3<i32>(u_input.e, -5772i, 53366i)), var_0.a, vec4<bool>(true, true, false, true)).c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.c.zx)) - _wgslsmith_f_op_vec2_f32(select(func_2().c.yx, vec2<f32>(_wgslsmith_f_op_f32(1091f + 1000f), var_0.b), any(var_1.a.zz)))));
    var var_3 = min(u_input.e, u_input.e);
    return _wgslsmith_f_op_vec3_f32(-var_0.a.c);
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_2(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x))), -829f, arg_0.zz);
    global0 = 1u;
    global0 = u_input.a.x;
    global0 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(abs(u_input.b.xy)), u_input.a.xy), ~_wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x)), min(u_input.b.x, max(_wgslsmith_div_u32(1u, 1u), reverseBits(u_input.b.x))));
    var var_1 = true;
    return !select(!vec4<bool>(true, arg_2, true, var_0.a.b), select(select(!vec4<bool>(false, arg_2, false, false), select(vec4<bool>(true, var_0.a.a.x, arg_2, var_0.a.b), vec4<bool>(var_0.a.b, false, true, true), vec4<bool>(arg_2, false, false, arg_2)), select(vec4<bool>(var_0.a.a.x, arg_2, true, arg_2), vec4<bool>(true, var_0.a.b, var_0.a.a.x, false), false)), vec4<bool>(false, !arg_2, !var_0.a.b, var_0.a.a.x), _wgslsmith_f_op_f32(trunc(var_0.b)) < -449f), select(vec4<bool>(true, true, !arg_2, !var_0.a.a.x), vec4<bool>(true, var_0.a.a.x, func_4(2147483647i, Struct_1(vec3<bool>(true, var_0.a.a.x, arg_2), var_0.a.b, vec3<f32>(arg_0.x, 974f, var_0.a.c.x)), vec4<bool>(arg_2, var_0.a.b, true, true)).b, !arg_2), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(firstTrailingBit(countOneBits(~1u)) | _wgslsmith_mult_u32(u_input.b.x, 24573u));
    global0 = u_input.d.x;
    let var_1 = true || all(select(func_5(_wgslsmith_f_op_vec3_f32(func_1(true)), reverseBits(0i), false, countOneBits(vec2<i32>(u_input.e, u_input.c))), func_5(vec3<f32>(748f, -1159f, 1899f), ~0i, true, _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.e), vec2<i32>(-24250i, 2147483647i))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, -1000f, -251f) * vec3<f32>(661f, -1057f, -1483f)), firstTrailingBit(2147483647i), true, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.e, 0i))).x));
    let var_2 = reverseBits(_wgslsmith_mult_u32(max(_wgslsmith_div_u32(u_input.a.x, ~1u), _wgslsmith_dot_vec3_u32(u_input.d.xxz, u_input.a)), abs(_wgslsmith_sub_u32(2068u, ~4294967295u))));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    var var_4 = Struct_1(!select(select(!vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, false)), !var_1), vec3<bool>(func_3(), !var_1, func_3()), vec3<bool>(var_1, true, var_1 | true)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, _wgslsmith_f_op_f32(-var_3), -202f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3, var_3) - vec3<f32>(var_3, 1000f, var_3)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3, var_3, var_3), vec3<f32>(-952f, 222f, var_3), var_1))))));
    var var_5 = select(-select(firstTrailingBit(vec3<i32>(0i, -10197i, 21272i)) & max(vec3<i32>(-42342i, u_input.c, 6524i), vec3<i32>(u_input.c, u_input.e, 2147483647i)), ~(~vec3<i32>(18894i, u_input.e, 1i)), select(select(var_4.a, vec3<bool>(true, true, var_1), false), !var_4.a, var_4.a)), ~(-vec3<i32>(-34235i, _wgslsmith_sub_i32(u_input.c, 1i), 48358i)), var_4.a);
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, var_3, vec3<i32>(var_5.x, _wgslsmith_clamp_i32(38396i, _wgslsmith_mult_i32(54276i, _wgslsmith_mod_i32(u_input.e, -23790i)), -countOneBits(u_input.c)), -14947i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1240f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.c.xz - _wgslsmith_f_op_vec2_f32(-func_4(u_input.e, Struct_1(vec3<bool>(false, var_1, false), var_4.a.x, var_4.c), vec4<bool>(var_6.x, false, var_1, var_6.x)).c.yx)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), -649f), func_2().c.xx))));
}

