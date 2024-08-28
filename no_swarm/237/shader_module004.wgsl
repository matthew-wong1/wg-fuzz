struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -74917i;

var<private> global1: i32 = -38810i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> u32 {
    global1 = ~min(_wgslsmith_div_i32(1i, -2147483647i ^ arg_1.x), arg_1.x);
    var var_0 = ~countOneBits(0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b.b, 605f, arg_2.b.b, 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, 564f, arg_2.b.a.x, -624f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.x, arg_2.b.a.x, arg_2.b.a.x, -369f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(arg_2.b.a.x + arg_2.b.b), _wgslsmith_f_op_f32(step(-462f, arg_2.b.b)), -1196f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.x, arg_2.b.a.x, -945f, -609f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1767f, arg_2.b.b, -336f, arg_2.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, arg_2.b.a.x, arg_2.b.a.x, 433f)) + vec4<f32>(1631f, arg_2.b.b, arg_2.b.b, 548f)))));
    let var_2 = !arg_2.c;
    let var_3 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, ~0u, ~arg_2.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 15927u), u_input.b))), vec4<u32>(reverseBits(arg_2.a.x), ~_wgslsmith_clamp_u32(~arg_2.a.x, reverseBits(arg_2.a.x), ~arg_2.a.x), ~(~1u), u_input.e.x));
    return ~abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_3.yy << (var_3.wy % vec2<u32>(32u)), arg_2.a.xz & var_3.xz), 28908u, ~arg_2.a.x & ~arg_2.a.x));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> vec4<i32> {
    global1 = 1i;
    global0 = 0i ^ arg_2.x;
    let var_0 = !(!arg_1);
    global1 = (-u_input.a.x << (func_3(any(vec3<bool>(false, true, false)), vec2<i32>(-7379i, arg_2.x), Struct_3(_wgslsmith_div_vec3_u32(u_input.e.yzx, vec3<u32>(u_input.d.x, 22219u, 1u)), Struct_1(vec2<f32>(122f, 1329f), -1059f, false), false, _wgslsmith_sub_i32(u_input.c, u_input.a.x), vec2<i32>(arg_2.x, u_input.c))) % 32u)) | -1i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -856f), vec2<f32>(-476f, 1000f), vec2<bool>(var_0, false)))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2530f, 1000f)), var_0), Struct_1(vec2<f32>(313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(703f)) - _wgslsmith_f_op_f32(step(-1399f, 805f)))), 153f, _wgslsmith_add_i32(~1i, _wgslsmith_dot_vec3_i32(arg_2, u_input.a.zyy)) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 24055i, -8428i, -2147483647i), u_input.a), vec4<i32>(-1i, 0i, -11021i, 1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1482f), -1589f)), _wgslsmith_f_op_f32(step(-2235f, _wgslsmith_f_op_f32(step(-359f, _wgslsmith_f_op_f32(-1000f - -687f))))), false));
    return u_input.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32) -> vec2<u32> {
    global1 = ~(-((-13041i | arg_1.x) ^ arg_1.x) | u_input.c);
    global1 = firstLeadingBit(i32(-1i) * -(~(-2147483647i)));
    let var_0 = min(_wgslsmith_clamp_u32(30505u, min(~(~u_input.d.x), select(7021u, ~u_input.d.x, true)), 1u), u_input.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, -589f), vec2<f32>(arg_2, arg_2)))))), arg_2, !all(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -667f))), ~min(u_input.b.x, u_input.b.x) < ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0, 0u), ~var_0));
    return reverseBits(vec2<u32>(~u_input.e.x, _wgslsmith_div_u32(reverseBits(var_0), func_3(var_1.c, vec2<i32>(-30771i, arg_0.x), Struct_3(vec3<u32>(26828u, u_input.e.x, 61290u), Struct_1(var_1.a, arg_2, true), var_1.c, -15601i, vec2<i32>(arg_0.x, 2147483647i))))) & u_input.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = false;
    global0 = 69395i | (~arg_0.x | min(_wgslsmith_div_i32(~1i, -50658i), u_input.a.x));
    let var_1 = _wgslsmith_add_vec3_i32(arg_0, abs(vec3<i32>(u_input.a.x, -15866i, ~_wgslsmith_add_i32(arg_0.x, 34484i))));
    let var_2 = Struct_1(arg_2.zy, 157f, false);
    let var_3 = Struct_3(_wgslsmith_mod_vec3_u32(u_input.e.yyw, vec3<u32>(arg_1.x, 4294967295u, _wgslsmith_clamp_u32(u_input.d.x, ~u_input.e.x, max(u_input.e.x, arg_1.x)))), Struct_1(vec2<f32>(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, -1000f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1524f, 116f) * -449f)), all(!vec2<bool>(false, var_2.c)) || var_2.c), false != (select(true, any(vec2<bool>(false, true)), u_input.c <= 0i) || !all(vec4<bool>(true, var_2.c, var_0, var_0))), ~(1i << (~_wgslsmith_dot_vec3_u32(u_input.e.yxz, u_input.e.wxx) % 32u)), -(vec2<i32>(-1i) * -vec2<i32>(var_1.x, u_input.a.x)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 571f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))), select((u_input.d.x == u_input.d.x) | (var_2.a.x != var_2.b), true | (var_3.a.x > 1u), false) && ((any(vec4<bool>(true, var_3.c, false, var_0)) || true) | (_wgslsmith_f_op_f32(-var_3.b.b) <= -2619f)));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = ~(~(-27840i));
    global1 = -2147483647i;
    var var_0 = Struct_3(abs(vec3<u32>(_wgslsmith_add_u32(17034u, 1u) | _wgslsmith_mod_u32(10094u, u_input.e.x), 0u, ~1u)), func_5(u_input.a.zyx, abs(~u_input.e.zx), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)), _wgslsmith_f_op_f32(-1200f * arg_1.b), _wgslsmith_f_op_f32(-853f - arg_1.b))))), true, i32(-1i) * -13359i, ~vec2<i32>(~(i32(-1i) * -1i), max(u_input.a.x, u_input.a.x)));
    global0 = -2147483647i;
    var var_1 = ~u_input.b;
    return Struct_1(arg_1.a, _wgslsmith_f_op_f32(abs(var_0.b.a.x)), true);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_6(!select(vec4<bool>(false, false, u_input.c != u_input.a.x, true), vec4<bool>(true, true, true, true), !all(vec4<bool>(true, true, true, false))), func_5(select(u_input.a.yyy, u_input.a.yzz, select(false, true, false)) ^ ~reverseBits(vec3<i32>(u_input.a.x, -26879i, u_input.a.x)), func_4(_wgslsmith_add_vec4_i32(max(u_input.a, vec4<i32>(29346i, -8065i, -2147483647i, 0i)), func_2(28128u, false, vec3<i32>(0i, u_input.a.x, u_input.a.x))), u_input.a.zyy >> (abs(u_input.d.wzz) % vec3<u32>(32u)), 339f), vec3<f32>(-1315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-905f)) - 229f), -195f)));
    let var_1 = select(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.c)), vec2<bool>(!var_0.c & true, true | var_0.c), select(select(vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.c), true), select(select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, false)), !vec2<bool>(var_0.c, var_0.c), arg_0 <= 22511u), !(!vec2<bool>(var_0.c, var_0.c)))), vec2<bool>(var_0.c && var_0.c, false), select(vec2<bool>(false, (u_input.a.x >> (u_input.e.x % 32u)) == _wgslsmith_add_i32(u_input.c, 18164i)), vec2<bool>(true, true), true));
    global1 = u_input.a.x;
    global0 = -(~(~(-u_input.c) >> ((_wgslsmith_add_u32(arg_0, arg_0) << (countOneBits(4294967295u) % 32u)) % 32u)));
    global0 = -2147483647i;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0.a.x, !any(select(vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, false, var_0.c), var_1.x))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b)))), -147f, u_input.c >= countOneBits(46195i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(782f, var_0.b) + var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(637f, -1183f))), !var_0.c));
}

fn func_7(arg_0: Struct_2) -> f32 {
    global1 = _wgslsmith_dot_vec4_i32(u_input.a, ~(~vec4<i32>(-u_input.a.x, 2147483647i, ~6787i, u_input.a.x | -1i)));
    global1 = 0i;
    let var_0 = func_5(_wgslsmith_mod_vec3_i32(u_input.a.yxz & min(u_input.a.ywx, u_input.a.zyz), u_input.a.yzx) >> (abs(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.d.x, u_input.e.x), ~1u)) % vec3<u32>(32u)), u_input.d.xw, vec3<f32>(_wgslsmith_f_op_f32(max(-987f, arg_0.a.b)), -1294f, 1f));
    let var_1 = select(select(vec2<bool>(false, arg_0.c.c), select(vec2<bool>(true, var_0.c != arg_0.b.c), vec2<bool>(select(true, true, arg_0.a.c), false), vec2<bool>(!arg_0.a.c, false)), !all(select(vec3<bool>(false, var_0.c, true), vec3<bool>(var_0.c, arg_0.c.c, var_0.c), vec3<bool>(arg_0.a.c, false, true)))), vec2<bool>(var_0.c, true), vec2<bool>(!var_0.c | var_0.c, !select(func_1(4294967295u).c.c, var_0.c, all(vec3<bool>(true, false, var_0.c)))));
    global1 = -1i | -_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), -u_input.a.x), _wgslsmith_add_vec2_i32(u_input.a.zz << (u_input.b % vec2<u32>(32u)), u_input.a.wz));
    return arg_0.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.d.xzw, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1286f, -668f) * _wgslsmith_f_op_f32(142f + 2084f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1171f)) + _wgslsmith_f_op_f32(1137f * 969f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-133f, 118f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f - 384f) + 486f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(677f, -2114f) * _wgslsmith_div_f32(768f, 981f)) <= _wgslsmith_f_op_f32(func_7(func_1(u_input.e.x)))), true, u_input.c, vec2<i32>(1i, 102468i));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -252f);
    let var_2 = var_0;
    let var_3 = var_0.b.b;
    global0 = var_2.e.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1609f, -2053f, var_2.b.b, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_3, -711f, -496f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, var_3, var_2.b.b, -910f))))));
    var var_5 = var_2.a;
    let var_6 = u_input.d;
    global0 = 32104i & _wgslsmith_mod_i32(~(~var_2.d) >> (~var_0.a.x % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, firstLeadingBit(1i)), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, var_0.d, _wgslsmith_f_op_vec2_f32(var_4.wy * var_2.b.a), vec4<f32>(var_4.x, 1472f, _wgslsmith_f_op_f32(-var_2.b.b), -1071f));
}

