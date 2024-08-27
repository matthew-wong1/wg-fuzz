struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global1 = array<vec3<bool>, 25>();
    var var_0 = arg_0;
    var var_1 = arg_0;
    global0 = any(vec2<bool>(all(!vec3<bool>(var_0.e.x, var_0.e.x, false)), arg_0.e.x)) && (var_1.d == ~2147483647i);
    var var_2 = vec2<u32>(~(0u >> ((u_input.a.x ^ arg_0.b) % 32u)), _wgslsmith_dot_vec2_u32(~arg_0.c.xz, reverseBits(var_0.c.zw))) ^ min(~(~_wgslsmith_add_vec2_u32(var_0.c.zw, u_input.a)), firstTrailingBit(var_0.c.yw));
    return ~u_input.e;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: bool) -> vec3<bool> {
    global1 = array<vec3<bool>, 25>();
    var var_0 = arg_2;
    var_0 = ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, reverseBits(arg_0.x), ~81692u, arg_0.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(18928u, 4294967295u, arg_0.x, var_0.x), vec4<u32>(12658u, 33688u, u_input.a.x, var_0.x) | vec4<u32>(var_0.x, 26421u, 0u, u_input.d.x)) & vec4<u32>(_wgslsmith_mod_u32(var_0.x, arg_2.x), 1u, abs(var_0.x), 1889u));
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~func_3(Struct_1(vec4<f32>(852f, arg_1, -953f, -1971f), 31588u, vec4<u32>(arg_0.x, u_input.d.x, arg_2.x, arg_0.x), u_input.c, global1[_wgslsmith_index_u32(1u, 25u)])), ~firstTrailingBit(abs(arg_2.wzw))), arg_0.x, ~(~arg_0.x), u_input.a.x);
    global0 = true;
    return vec3<bool>(arg_3 || !(!any(vec4<bool>(arg_3, arg_3, arg_3, false))), arg_3, all(vec2<bool>(!any(vec2<bool>(true, arg_3)), arg_3)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~arg_0.c.yxz;
    global0 = countOneBits(arg_0.d) == 10703i;
    var var_1 = true;
    let var_2 = -vec3<i32>(u_input.b.x, reverseBits(select(~(-1i), i32(-1i) * -89006i, !arg_0.e.x)), abs(-2147483647i));
    var_0 = vec3<u32>(3658u, ~(~(~(~4294967295u))), ~abs(4294967295u));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 25>();
    var var_0 = vec2<bool>(all(vec3<bool>(true, arg_2.e.x, false)), true);
    let var_1 = arg_0;
    var var_2 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * arg_0.a), arg_2.c.x << (var_1.c.x % 32u), vec4<u32>(u_input.a.x ^ 20784u, var_1.b, abs(arg_0.b), firstLeadingBit(76031u)), max(var_1.d, 2147483647i ^ arg_2.d), vec3<bool>(true, true, true))));
    var var_3 = arg_2;
    return Struct_1(var_2.a, countOneBits(_wgslsmith_mod_u32(func_3(var_1).x, _wgslsmith_mod_u32(0u, u_input.d.x))), vec4<u32>(_wgslsmith_mod_u32(~85795u, ~_wgslsmith_div_u32(1u, var_2.b)), var_2.b, arg_2.c.x, (arg_0.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_1.c.x, var_2.b, 2886u), vec4<u32>(arg_0.c.x, var_3.c.x, var_1.c.x, 4154u)) % 32u)) | arg_0.b), func_4(arg_2).d, select(!var_1.e, vec3<bool>(true, true, var_3.d <= -1i), true));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = arg_1;
    var var_0 = arg_0;
    global0 = all(vec3<bool>(!var_0.e.x, all(var_0.e.yz), any(!func_4(arg_0).e.zx)));
    let var_1 = arg_0.c.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, _wgslsmith_f_op_f32(trunc(var_0.a.x)), -981f, _wgslsmith_f_op_f32(1163f - arg_0.a.x)))), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_0.c.zw, ~vec2<u32>(var_1, 14206u)), _wgslsmith_clamp_vec2_u32(arg_0.c.zz, _wgslsmith_sub_vec2_u32(max(arg_0.c.xy, u_input.e.yy), ~vec2<u32>(u_input.d.x, arg_0.b)), vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(0u, var_0.c.x))))), reverseBits(~(~vec4<u32>(30409u, 4294967295u, var_0.c.x, 1u))), 2147483647i, select(select(vec3<bool>(all(arg_0.e.yz), all(vec3<bool>(false, true, false)), arg_0.e.x), arg_0.e, select(!vec3<bool>(true, var_0.e.x, true), !arg_0.e, !arg_0.e)), arg_0.e, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.a.x, arg_0.a.x, arg_0.a.x) - vec4<f32>(668f, 357f, arg_0.a.x, -468f)), 4294967295u, ~var_0.c, ~2147483647i, func_5(arg_0, arg_0.a.yy, Struct_1(vec4<f32>(var_0.a.x, arg_0.a.x, var_0.a.x, arg_0.a.x), var_0.c.x, arg_0.c, 19872i, vec3<bool>(true, true, arg_1))).e)).e));
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = func_6(func_5(func_4(Struct_1(vec4<f32>(534f, -842f, -416f, -275f), 0u, ~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.e.x), u_input.b.x, func_2(vec3<u32>(56885u, 13122u, u_input.e.x), 1389f, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.d.x), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1420f, -1823f))))), Struct_1(vec4<f32>(-1893f, -260f, _wgslsmith_f_op_f32(min(994f, -830f)), _wgslsmith_f_op_f32(floor(594f))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x), ~vec3<u32>(11772u, 25460u, 30554u)), vec4<u32>(4294967295u, u_input.a.x, u_input.d.x, ~0u), abs(u_input.b.x) << (_wgslsmith_add_u32(22966u, 106391u) % 32u), !select(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)], false))), true);
    global1 = array<vec3<bool>, 25>();
    let var_1 = ~(~14266u);
    global0 = true;
    global1 = array<vec3<bool>, 25>();
    return ~reverseBits(var_1);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = true;
    global1 = array<vec3<bool>, 25>();
    var var_1 = 2147483647i;
    var var_2 = arg_0;
    var var_3 = ~_wgslsmith_dot_vec2_i32(u_input.b.wz, u_input.b.wy);
    return arg_0;
}

fn func_8(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_0.a.x, func_6(func_6(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), ~4294967295u, vec4<u32>(arg_0.c.x, 4617u, 99831u, 12119u), countOneBits(-33927i), !vec3<bool>(arg_0.e.x, arg_0.e.x, false)), arg_0.e.x), arg_0.e.x).a.x);
    global0 = arg_0.e.x;
    var var_1 = arg_0;
    global0 = any(vec3<bool>(true, true, false));
    let var_2 = 912f;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_2, arg_0.a.x, var_2)))) - func_7(Struct_1(arg_0.a, _wgslsmith_clamp_u32(arg_0.b, var_1.b, 8140u), var_1.c, -1i, arg_0.e), _wgslsmith_f_op_f32(abs(1797f)), func_2(vec3<u32>(arg_0.c.x, var_1.b, u_input.a.x) | vec3<u32>(1u, 4294967295u, u_input.a.x), _wgslsmith_f_op_f32(663f + 1192f), arg_0.c, any(arg_0.e.zx)).x).a), u_input.d.x, var_1.c, -arg_0.d, func_6(arg_0, false).e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 25>();
    let var_0 = _wgslsmith_mult_i32(~u_input.c, ~(-(~(-65644i))));
    var var_1 = func_8(func_7(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, -677f, 519f, -774f) + vec4<f32>(-171f, -143f, 1476f, -1220f)), func_1(), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(19518u, u_input.e.x, 42433u, 0u), vec4<u32>(4294967295u, 20486u, u_input.e.x, u_input.a.x))), -2147483647i, vec3<bool>(true, true, true)), _wgslsmith_div_f32(func_5(Struct_1(vec4<f32>(-202f, 1000f, -1364f, 1764f), u_input.e.x, vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), -1i, global1[_wgslsmith_index_u32(51861u, 25u)]), vec2<f32>(-1344f, 1832f), func_6(Struct_1(vec4<f32>(-1000f, 773f, 851f, -343f), 25697u, vec4<u32>(95713u, 0u, 1u, 0u), u_input.c, vec3<bool>(false, true, false)), true)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-966f)))), false), u_input.b.wy);
    var var_2 = var_1.b;
    global1 = array<vec3<bool>, 25>();
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, var_1.a.x, var_1.a.x, var_1.a.x))))), 79140u, ~vec4<u32>(1u, firstTrailingBit(36476u), 57669u, ~8281u), 25474i, vec3<bool>(all(vec3<bool>(true, true, true)), false, select(true, var_1.e.x, var_1.e.x) || true)));
    var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x + var_1.a.x))), var_1.a.x, -969f)), ~func_4(func_6(func_6(Struct_1(var_1.a, 45203u, var_1.c, var_1.d, vec3<bool>(true, var_1.e.x, true)), false), true)).c, 12698u, _wgslsmith_f_op_f32(-824f + -1537f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(185f, var_1.a.x, var_3.a.x, 868f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, -1463f, var_1.a.x) + var_1.a))) * vec4<f32>(_wgslsmith_f_op_f32(max(433f, var_3.a.x)), _wgslsmith_f_op_f32(1007f + _wgslsmith_f_op_f32(f32(-1f) * -821f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - func_5(Struct_1(vec4<f32>(-766f, 155f, var_3.a.x, -1140f), 4323u, vec4<u32>(var_1.b, u_input.d.x, 0u, 1u), var_1.d, var_1.e), vec2<f32>(var_3.a.x, var_1.a.x), Struct_1(vec4<f32>(var_1.a.x, -858f, var_3.a.x, var_3.a.x), 52837u, vec4<u32>(var_3.b, u_input.d.x, 27153u, 4294967295u), var_3.d, vec3<bool>(false, false, false))).a.x), var_3.a.x)));
}

