struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) + _wgslsmith_div_f32(-1599f, -262f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(830f, -1003f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1482f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, -311f, -402f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(698f, 1990f, 352f, -425f), vec4<f32>(-2325f, -590f, -1293f, 1084f), false)))))));
    global0 = _wgslsmith_f_op_f32(var_0.x - -1041f) >= var_0.x;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1091f * -427f))) * 606f), -472f, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -578f, _wgslsmith_f_op_f32(-var_0.x)));
    var var_1 = Struct_1(min(vec2<i32>(0i, -37534i), countOneBits(~vec2<i32>(u_input.b, u_input.b))) | vec2<i32>(abs(u_input.b), -1i), var_0.zwy, true, ~(vec2<u32>(_wgslsmith_mod_u32(4294967295u, 89909u), abs(u_input.c)) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.d) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), max(vec2<u32>(u_input.d, 1u), vec2<u32>(65253u, u_input.d)))), -48732i);
    return var_1.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<bool> {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.e.b - arg_0.a.b));
    var var_2 = 15863u;
    var var_3 = _wgslsmith_f_op_f32(func_3());
    global0 = !arg_0.a.c;
    return vec4<bool>(arg_0.e.c, any(!(!vec4<bool>(arg_0.e.c, arg_0.b.c, arg_0.c.c, false))), !(2147483647i <= u_input.b), _wgslsmith_div_f32(262f, _wgslsmith_f_op_f32(round(arg_0.e.b.x))) <= var_1.x);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = any(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true), select(func_2(Struct_2(Struct_1(vec2<i32>(9702i, -27433i), vec3<f32>(arg_1, -488f, 2370f), true, vec2<u32>(u_input.d, u_input.a), -2147483647i), Struct_1(vec2<i32>(1i, -13316i), vec3<f32>(1000f, arg_1, 984f), false, vec2<u32>(u_input.c, 33335u), u_input.b), Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<f32>(arg_1, arg_1, arg_1), true, vec2<u32>(38079u, 116156u), 68441i), 608i, Struct_1(vec2<i32>(1i, -972i), vec3<f32>(arg_1, 568f, 1314f), true, vec2<u32>(73356u, u_input.c), u_input.b)), 43552u, 2209i), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(max(37246u ^ u_input.c, u_input.d), ~u_input.c), 111198u), firstTrailingBit(u_input.c), _wgslsmith_mod_u32(0u, 4294967295u), u_input.a);
    return Struct_1(vec2<i32>(1i, 1i) | select(vec2<i32>(_wgslsmith_mult_i32(0i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), -vec2<i32>(u_input.b, 12648i) << (var_0.wx % vec2<u32>(32u)), vec2<bool>(true, 61476u == var_0.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1708f, arg_0, arg_1))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1380f, arg_0, -307f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_1, arg_1))))), vec3<f32>(122f, _wgslsmith_f_op_f32(-878f * arg_1), _wgslsmith_f_op_f32(sign(893f))), select(vec3<bool>(-17130i > u_input.b, false, func_2(Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.b), vec3<f32>(-276f, arg_1, -1441f), true, vec2<u32>(u_input.c, 4294967295u), u_input.b), Struct_1(vec2<i32>(u_input.b, -1i), vec3<f32>(101f, -1000f, -682f), true, var_0.xz, -7350i), Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<f32>(arg_1, -1207f, -896f), true, vec2<u32>(31053u, 32720u), u_input.b), 2147483647i, Struct_1(vec2<i32>(u_input.b, u_input.b), vec3<f32>(arg_1, 519f, 885f), false, var_0.zw, u_input.b)), u_input.c, -24390i).x), vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)))), all(vec4<bool>(var_0.x < 4294967295u, true, arg_0 <= -842f, false)) || (arg_0 == 152f), firstTrailingBit(var_0.wy), _wgslsmith_sub_i32(1i, -_wgslsmith_add_i32(min(u_input.b, u_input.b), 25852i >> (u_input.a % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global0 = true;
    global0 = true;
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(~_wgslsmith_sub_u32(33690u, 32867u)), max(arg_1.d.x, 4294967295u)), firstTrailingBit(~32066u));
    global0 = all(func_2(Struct_2(arg_1, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(8194i, -8370i), arg_1.a), arg_1.b, arg_1.c, vec2<u32>(1u, u_input.a), abs(arg_2.x)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1116f), 3135f), arg_2.x, func_1(_wgslsmith_f_op_f32(-arg_0.b.x), -666f)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.x, 6217u, 1u) << (vec3<u32>(46102u, 26578u, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_1.d.x, 18388u))), -6087i).wy);
    var var_1 = arg_0;
    return func_1(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(((32204i << (_wgslsmith_mult_u32(44638u, 0u) % 32u)) ^ firstTrailingBit(u_input.b)) > -1i);
    global0 = var_0;
    global0 = _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(61524u, 20959u), reverseBits(vec2<u32>(u_input.a, u_input.a)))), u_input.a) < 25457u;
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-957f, -247f, -625f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-106f, 1447f, 466f), vec3<f32>(1000f, 1414f, -1000f)))), var_0, vec2<u32>(_wgslsmith_sub_u32(0u, u_input.c), u_input.c), countOneBits(u_input.b)), func_4(func_1(-1081f, 1833f), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(0i, 2147483647i)), -vec2<i32>(u_input.b, -34036i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(346f, -329f, 706f), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, var_0)))), func_1(899f, _wgslsmith_f_op_f32(-1136f - -700f)).c, (vec2<u32>(u_input.c, 0u) << (vec2<u32>(31050u, u_input.d) % vec2<u32>(32u))) ^ min(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.a, u_input.c)), _wgslsmith_sub_i32(u_input.b, -1i) | _wgslsmith_sub_i32(u_input.b, -6249i)), vec2<i32>(u_input.b, -1i)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -15602i, _wgslsmith_mult_i32(-5031i, u_input.b)), -max(vec2<i32>(u_input.b, 1i), vec2<i32>(7858i, -1i))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(265f, -1593f))), _wgslsmith_div_f32(-424f, -523f), 822f), true, vec2<u32>(u_input.d, u_input.d), u_input.b), func_1(_wgslsmith_f_op_f32(select(-396f, -428f, max(41318u, u_input.d) > (u_input.c >> (u_input.c % 32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))).a.x, Struct_1(vec2<i32>(~(~33228i), _wgslsmith_mod_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-226f, 209f, -771f), vec3<f32>(-514f, -1306f, -950f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-737f, 1845f, 1959f), vec3<f32>(584f, -1647f, 307f))), vec3<f32>(_wgslsmith_f_op_f32(step(919f, -680f)), _wgslsmith_f_op_f32(max(839f, 1324f)), _wgslsmith_f_op_f32(ceil(1032f))), vec3<bool>(var_0, var_0, all(vec4<bool>(var_0, true, var_0, var_0))))), true, func_1(-1205f, _wgslsmith_f_op_f32(-1070f * -949f)).d << (firstTrailingBit(abs(vec2<u32>(4294967295u, u_input.c))) % vec2<u32>(32u)), func_1(_wgslsmith_f_op_f32(abs(-1150f)), _wgslsmith_f_op_f32(min(-1365f, 1000f))).e >> ((_wgslsmith_clamp_u32(1u, u_input.c, u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 44087u, 1u), vec4<u32>(24584u, u_input.c, u_input.a, 4294967295u))) % 32u)));
    let var_3 = true;
    let var_4 = var_2.a.a;
    let var_5 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(func_4(var_2.e, var_2.a, vec2<i32>(10646i, -30580i)).a.x, 0i), func_4(func_1(-1000f, 157f), Struct_1(vec2<i32>(var_4.x, var_2.c.a.x), vec3<f32>(var_2.a.b.x, 1056f, -108f), var_0, vec2<u32>(1u, 4294967295u), u_input.b), ~vec2<i32>(2147483647i, var_2.c.a.x)).e, var_2.a.a.x) << (vec3<u32>(~var_2.c.d.x, var_2.a.d.x, 6270u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.c.d.x, var_2.c.d.x), firstLeadingBit(vec4<u32>(26234u, u_input.c, var_2.e.d.x, ~u_input.c)), countOneBits(4294967295u), firstLeadingBit(vec4<i32>(func_4(var_2.a, Struct_1(vec2<i32>(21724i, 2147483647i), vec3<f32>(var_2.e.b.x, var_2.c.b.x, var_2.a.b.x), false, var_2.c.d, 15226i), _wgslsmith_mod_vec2_i32(var_5.xz, var_4)).a.x, 0i, -1i, -21680i)));
}

