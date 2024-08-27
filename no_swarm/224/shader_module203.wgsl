struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-249f)), -337f)), _wgslsmith_f_op_f32(f32(-1f) * -782f), -813f, _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(trunc(-440f)))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-658f, -562f) + _wgslsmith_f_op_f32(ceil(1852f))))), -1390f));
    let var_2 = Struct_2(Struct_1(60418i, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1273f * -309f), _wgslsmith_f_op_f32(-var_1.x), -504f, _wgslsmith_f_op_f32(sign(var_1.x))))), var_1.x, ~(~firstTrailingBit(vec2<i32>(9010i, u_input.b.x)))), Struct_1(u_input.d.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 335f, var_1.x) * vec4<f32>(304f, 642f, 670f, 511f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 263f, var_1.x, 220f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(var_1.x, -116f)), var_1.x), u_input.d.yx), !vec3<bool>(select(select(true, true, false), true, false), true, false), ~u_input.a);
    let var_3 = 0i;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(130f, -1470f, var_2.a.b.x, var_2.b.c))))) * vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1.x * var_2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(801f + 906f) + _wgslsmith_f_op_f32(373f - -1389f)), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.b.b.x), var_1.x, !var_2.c.x)))));
    return var_2.d;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec3<bool>(true, false, !all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_3(-13774i, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b, _wgslsmith_clamp_i32(u_input.a, 2147483647i, -2147483647i)), func_3(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 0u))), arg_0.c, 1i);
    var var_2 = arg_0.c.b;
    var var_3 = ~(~4333u);
    var_3 = ~u_input.c.x;
    return Struct_3(-2147483647i, 30563i, Struct_1(-14200i, _wgslsmith_f_op_vec4_f32(arg_0.c.b + vec4<f32>(-186f, _wgslsmith_f_op_f32(-1188f - 750f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-arg_0.c.b.x))), _wgslsmith_f_op_f32(-arg_0.c.b.x), firstTrailingBit(countOneBits(firstLeadingBit(vec2<i32>(var_1.d, -68093i))))), abs(~_wgslsmith_dot_vec3_i32(-u_input.b.wxz, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_0.c.d.x, 1i), u_input.b.wzy))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = -222f;
    var var_1 = Struct_2(func_2(func_2(func_2(func_2(Struct_3(21425i, -17326i, arg_1.c, u_input.b.x))))).c, func_2(func_2(func_2(func_2(arg_1)))).c, select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)) && true), arg_0.x >> (0u % 32u));
    var var_2 = true;
    var_2 = var_1.c.x;
    var_1 = Struct_2(var_1.a, func_2(arg_3).c, vec3<bool>(!var_1.c.x, any(vec3<bool>(true, 1i >= u_input.d.x, 53992u >= u_input.c.x)), true), -30290i);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(u_input.d, Struct_3(2147483647i, 0i, Struct_1(u_input.a, vec4<f32>(-690f, -1020f, 1044f, 1000f), -639f, u_input.b.yz), u_input.a), Struct_4(-496f), func_2(Struct_3(925i, u_input.d.x, Struct_1(u_input.d.x, vec4<f32>(306f, -837f, 1000f, 1362f), -401f, u_input.b.wx), u_input.d.x)))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -905f)))), func_2(Struct_3(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (~84428u % 32u), u_input.a, Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1581f, -614f, 1890f, -2760f)), _wgslsmith_f_op_f32(sign(-503f)), -vec2<i32>(u_input.a, u_input.d.x)), _wgslsmith_div_i32(abs(u_input.d.x), ~u_input.d.x))).c);
    var_0 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 191f)), func_2(func_2(Struct_3(var_0.b.d.x, i32(-1i) * -15546i, Struct_1(u_input.a, var_0.b.b, -432f, u_input.b.ww), -2147483647i))).c);
    var_0 = Struct_5(217f, var_0.b);
    var_0 = Struct_5(var_0.a, var_0.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b.x, _wgslsmith_f_op_f32(min(var_0.b.b.x, var_0.b.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(366f, -1078f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(939f - 120f) + -656f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-230f + 201f)))), 652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f * 225f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1440f, _wgslsmith_f_op_f32(func_1(u_input.e))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-934f - var_0.x) - _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(139f - var_0.x), 768f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), countOneBits(1u), countOneBits(u_input.e.x)))), var_0.x)));
    var var_1 = Struct_5(var_0.x, func_2(Struct_3(~(-30669i), func_2(Struct_3(u_input.b.x, u_input.b.x, Struct_1(0i, vec4<f32>(var_0.x, -1327f, -1666f, 426f), var_0.x, u_input.b.wx), u_input.d.x)).c.d.x << (u_input.c.x % 32u), Struct_1(~(-11001i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -829f), vec4<f32>(212f, -1052f, 1000f, var_0.x), vec4<bool>(true, true, false, true))), _wgslsmith_div_f32(var_0.x, 835f), select(u_input.d.zz, vec2<i32>(u_input.b.x, -32890i), false)), 2147483647i)).c);
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.b.d.x, _wgslsmith_clamp_i32(reverseBits(-3744i), _wgslsmith_div_i32(var_1.b.d.x, 49453i), reverseBits(u_input.a))), u_input.a), var_1.b.d.x, countOneBits(-(1i ^ firstTrailingBit(u_input.d.x))), var_1.b.a);
    let var_3 = vec4<bool>(false, !any(vec2<bool>(u_input.d.x == var_2.x, u_input.d.x <= var_2.x)), !any(vec3<bool>(u_input.c.x == u_input.c.x, all(vec4<bool>(false, true, true, false)), true)), true | any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))));
    let var_4 = vec4<i32>(-1i) * -u_input.b;
    let var_5 = !vec3<bool>(all(vec3<bool>(true, false && var_3.x, var_3.x)), any(select(select(var_3.xz, vec2<bool>(true, var_3.x), vec2<bool>(var_3.x, var_3.x)), select(vec2<bool>(var_3.x, true), var_3.wx, var_3.x), var_3.x)), var_3.x);
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_0.x)), -905f, _wgslsmith_f_op_f32(func_4(u_input.d, func_2(Struct_3(-22529i, var_4.x, Struct_1(u_input.d.x, vec4<f32>(var_0.x, var_1.b.c, -164f, var_1.b.b.x), -942f, vec2<i32>(-1i, -59547i)), 4819i)), Struct_4(326f), func_2(Struct_3(u_input.b.x, u_input.b.x, Struct_1(u_input.b.x, vec4<f32>(var_1.b.b.x, var_0.x, var_1.a, 514f), var_0.x, vec2<i32>(-1591i, var_4.x)), -1212i)))), _wgslsmith_f_op_f32(f32(-1f) * -1867f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b.b * vec4<f32>(var_0.x, -711f, var_0.x, -554f))))) + _wgslsmith_f_op_vec4_f32(-var_1.b.b))));
    var_1 = Struct_5(-396f, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a)))), 1658f)), _wgslsmith_add_u32(4948u, firstLeadingBit(max(u_input.c.x, u_input.e.x) & u_input.e.x)));
}

