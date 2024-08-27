struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_u32(select(~reverseBits(~u_input.c.wyy), u_input.c.yyz, vec3<bool>(true, true, !(u_input.a < u_input.c.x))), ~select(u_input.c.xzw ^ (u_input.c.zxz ^ u_input.c.zyx), ~(~vec3<u32>(26743u, u_input.c.x, u_input.a)), arg_2.x));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~abs(44981u), 35110u | (0u & u_input.c.x)), countOneBits(~(~var_0.x))), abs(countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)) << (vec2<u32>(_wgslsmith_div_u32(1u, 3868u), max(u_input.c.x, 58116u)) % vec2<u32>(32u))));
    var_1 = firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(~1u | u_input.a, ~(u_input.a | var_1.x)), ~(1u | _wgslsmith_mod_u32(var_0.x, var_1.x))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-220f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 1152f), true))))), -808f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))) >= 1779f));
    let var_3 = all(vec3<bool>(any(arg_2) || false, !(!(!arg_0)), arg_2.x));
    return firstLeadingBit(_wgslsmith_add_i32(25484i, min(-u_input.b.x, u_input.b.x))) | -43883i;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)))) - _wgslsmith_f_op_f32(round(469f))));
    var var_1 = u_input.b;
    let var_2 = vec2<i32>(func_3((_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (_wgslsmith_div_u32(4294967295u, u_input.c.x) % 32u)) <= u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -968f), 1000f, _wgslsmith_f_op_f32(-3044f + -1384f), -521f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(150f, 908f, 543f, 934f))))), !vec4<bool>(!arg_3, select(arg_2, true, arg_0.c), any(vec4<bool>(arg_3, arg_0.c, arg_3, true)), true)), ~(~var_1.x));
    var_0 = _wgslsmith_f_op_f32(sign(1016f));
    var var_3 = u_input.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2269f, -416f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, 695f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(120f, -2219f) + vec2<f32>(-642f, 616f))))), -539f, Struct_1(var_1.x, arg_0.e, false, -countOneBits(0i), reverseBits(1u)), arg_0, countOneBits(_wgslsmith_div_vec3_i32(u_input.b.yyy, vec3<i32>(_wgslsmith_mult_i32(arg_0.d, 31969i), var_2.x, -12053i | var_1.x))));
}

fn func_1(arg_0: Struct_5, arg_1: i32) -> vec2<f32> {
    let var_0 = firstLeadingBit(~1u);
    var var_1 = func_2(arg_0.a, var_0, true, all(vec3<bool>(false, true, false)));
    let var_2 = select(vec2<bool>(!any(vec2<bool>(var_1.d.c, true)), var_1.c.c), select(select(select(vec2<bool>(false, arg_0.a.c), vec2<bool>(var_1.c.c, arg_0.a.c), false), vec2<bool>(all(vec2<bool>(arg_0.a.c, var_1.d.c)), !var_1.d.c), vec2<bool>(false, var_1.d.c)), select(!vec2<bool>(arg_0.a.c, true), select(select(vec2<bool>(false, true), vec2<bool>(var_1.d.c, false), vec2<bool>(false, var_1.d.c)), !vec2<bool>(false, arg_0.e.c), arg_0.b.b < u_input.c.x), select(select(vec2<bool>(var_1.d.c, true), vec2<bool>(arg_0.e.c, var_1.d.c), vec2<bool>(arg_0.d.d.c, var_1.c.c)), vec2<bool>(false, var_1.d.c), select(vec2<bool>(false, true), vec2<bool>(arg_0.a.c, true), var_1.d.c))), !(!(!vec2<bool>(var_1.c.c, true)))), !func_2(func_2(func_2(Struct_1(arg_1, 811u, arg_0.d.d.c, 32162i, 23051u), 1u, true, arg_0.a.c).d, u_input.c.x, true, true).c, var_0, false, arg_0.d.c.c).c.c);
    var var_3 = Struct_5(Struct_1(~(arg_0.b.d & abs(-1i)), 38133u, !(!var_1.c.c & func_2(Struct_1(11261i, u_input.c.x, arg_0.d.c.c, 64322i, u_input.a), u_input.a, false, arg_0.b.c).c.c), (-32711i ^ ~arg_1) | u_input.d.x, min(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.c.e, var_1.d.b, u_input.c.x), firstTrailingBit(4294967295u), abs(77960u)), _wgslsmith_dot_vec3_u32(max(u_input.c.wxw, arg_0.c.b), arg_0.c.b))), func_2(var_1.d, 8192u, true, false).d, arg_0.c, func_2(func_2(Struct_1(min(u_input.b.x, -16015i), _wgslsmith_mod_u32(0u, var_0), true, arg_1, u_input.c.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, arg_0.a.b), vec2<u32>(var_1.c.e, 49168u)), u_input.a), min(var_0, var_0) >= 1u, var_1.c.b >= countOneBits(74092u)).d, arg_0.a.b | _wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(var_0, u_input.c.x)), var_1.d.c, var_2.x), arg_0.d.c);
    var var_4 = max(~(0u | var_3.c.b.x) & ~0u, var_3.e.e) & arg_0.b.b;
    return arg_0.c.a.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, 395f))), vec2<f32>(-775f, _wgslsmith_f_op_f32(f32(-1f) * -1821f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-598f, -352f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_5(Struct_1(2147483647i, u_input.c.x, true, u_input.b.x, u_input.c.x), Struct_1(u_input.b.x, u_input.a, false, 2147483647i, u_input.c.x), Struct_3(vec3<f32>(418f, -450f, 258f), vec3<u32>(13434u, u_input.a, u_input.a)), Struct_2(vec2<f32>(-810f, -1236f), 732f, Struct_1(u_input.b.x, u_input.c.x, true, 0i, 0u), Struct_1(u_input.d.x, 59054u, false, u_input.b.x, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, 1604i)), Struct_1(u_input.d.x, u_input.a, true, u_input.d.x, 4294967295u)), -3711i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1338f, 1690f))))), -190f, Struct_1(-19378i, 56512u >> (_wgslsmith_mult_u32(u_input.c.x, 71387u) % 32u), any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false)), ~(~u_input.d.x), _wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(~u_input.c.x, u_input.a))), func_2(Struct_1(abs(-1i), u_input.c.x, ~(-1i) <= (u_input.b.x & u_input.b.x), u_input.b.x, 45186u), 1u, true, all(vec2<bool>(true, any(vec3<bool>(true, false, true))))).d, vec3<i32>(~23117i, 7199i, u_input.b.x));
    let var_1 = -2157f;
    let var_2 = var_0.a;
    var var_3 = abs(_wgslsmith_sub_i32(min(-_wgslsmith_dot_vec4_i32(vec4<i32>(-14550i, -10189i, 1i, u_input.d.x), vec4<i32>(2147483647i, -52526i, -22177i, 27760i)), ~(-23027i)), _wgslsmith_div_i32(-49654i, _wgslsmith_add_i32(var_0.e.x, ~u_input.d.x))));
    var_3 = func_3(var_0.d.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f * -505f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, var_2.x))), -1944f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * _wgslsmith_f_op_f32(sign(448f))), var_1, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1411f)), _wgslsmith_div_f32(-1143f, var_0.a.x))), !vec4<bool>(var_0.c.c, true, any(!vec2<bool>(false, var_0.d.c)), var_0.d.c));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, ~(min(~u_input.c.zx, vec2<u32>(1u, 1u)) >> (u_input.c.zx % vec2<u32>(32u))), -1766f);
}

