struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = vec2<i32>(reverseBits(arg_0.d), -11238i & _wgslsmith_div_i32(20097i, arg_0.c.a.d.x));
    let var_1 = arg_0;
    var var_2 = true;
    var_2 = true;
    var_2 = any(!(!var_1.c.c.b.wzy));
    return select(vec4<bool>(~(~u_input.b.x) < _wgslsmith_dot_vec3_u32(select(vec3<u32>(59984u, var_1.e.x, var_1.e.x), vec3<u32>(arg_0.e.x, arg_0.e.x, 1u), var_1.c.c.b.x), ~vec3<u32>(u_input.b.x, 12860u, var_1.e.x)), true, !all(!var_1.a.d.b), true), select(vec4<bool>(all(select(vec3<bool>(false, arg_0.c.d.b.x, true), vec3<bool>(var_1.a.a.b.x, arg_0.c.a.b.x, false), var_1.c.c.b.wyz)), var_1.c.c.b.x, var_1.c.c.b.x, !var_1.c.d.b.x), vec4<bool>(!(!arg_0.a.c.b.x), true || all(var_1.a.d.b), all(vec3<bool>(false, true, true)), !var_1.c.a.b.x), var_1.a.a.b.x), var_1.a.d.b.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-844f, 700f) - -108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3033f - 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -949f)))))));
    var var_1 = !vec2<bool>(false, select(all(vec2<bool>(true, true)), false, !all(vec3<bool>(false, false, false))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1105f, 1153f, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(848f, 1473f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1712f, 1402f), vec2<f32>(905f, -1280f), vec2<bool>(true, true))), vec2<bool>(var_1.x, false))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(455f + -1456f), _wgslsmith_f_op_f32(f32(-1f) * -580f)))), true)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(472f, 259f), vec2<f32>(-785f, 590f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(793f, 1536f) - vec2<f32>(-1854f, 1921f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1258f, -193f), vec2<f32>(355f, 911f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(797f, -1569f))), select(!vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-232f, 2120f))))) - vec2<f32>(_wgslsmith_div_f32(406f, -1467f), -780f)))));
    let var_3 = reverseBits(~(-select(vec4<i32>(-33487i, u_input.a.x, 0i, -1i), u_input.d, false)));
    return Struct_2(Struct_1(var_3.x, !(!select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false)), -1i, ~vec4<i32>(-2147483647i, -var_3.x, _wgslsmith_mod_i32(u_input.d.x, -2147483647i), u_input.a.x), -38699i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -166f, var_2.x) - vec4<f32>(1879f, 554f, var_2.x, -1000f))))), Struct_1(var_3.x, func_3(Struct_4(Struct_2(Struct_1(2147483647i, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), 2147483647i, vec4<i32>(26456i, u_input.c, -1i, u_input.a.x), var_3.x), vec4<f32>(1000f, var_2.x, 901f, 764f), Struct_1(-1i, vec4<bool>(false, var_1.x, false, var_1.x), 61074i, u_input.d, var_3.x), Struct_1(u_input.c, vec4<bool>(true, true, false, true), 1i, u_input.d, var_3.x)), -vec2<i32>(22659i, var_3.x), Struct_2(Struct_1(0i, vec4<bool>(var_1.x, var_1.x, true, var_1.x), u_input.c, u_input.d, 1i), vec4<f32>(-648f, var_2.x, 998f, var_2.x), Struct_1(21792i, vec4<bool>(false, true, true, false), 2147483647i, u_input.d, 0i), Struct_1(u_input.c, vec4<bool>(false, false, var_1.x, var_1.x), -1i, var_3, -2147483647i)), 34798i | u_input.d.x, vec4<u32>(57440u, arg_0.x, u_input.b.x, arg_0.x) | arg_0)), ~9328i, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -var_3.x, 1i, var_3.x), u_input.d), (~17373i & var_3.x) >> (arg_0.x % 32u)), Struct_1(-_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), vec2<i32>(-2147483647i, 1i)), countOneBits(0i)), !(!(!vec4<bool>(var_1.x, true, var_1.x, false))), -1i, ~var_3, ~firstTrailingBit(_wgslsmith_mult_i32(u_input.c, u_input.a.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = arg_1;
    let var_1 = u_input.b.wyx;
    var var_2 = arg_1;
    var var_3 = var_2.c.e;
    var var_4 = firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(23259u), reverseBits(var_1.x)), ~_wgslsmith_clamp_u32(u_input.b.x, ~70778u, 12225u)));
    return ~(-_wgslsmith_dot_vec2_i32(var_2.a.d.xx, func_2(u_input.b).a.d.xz));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2171f, -512f))))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(abs(func_4(_wgslsmith_f_op_f32(445f - 551f), func_2(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 26910u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) - var_0))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -31230i, u_input.c), reverseBits(_wgslsmith_dot_vec3_i32(u_input.d.zyy, vec3<i32>(-17769i, u_input.d.x, 14889i))))), -_wgslsmith_add_i32(u_input.a.x << (u_input.b.x % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) ^ _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, -5475i), u_input.c), -u_input.a.x), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(~u_input.d.xzy, vec3<i32>(u_input.d.x, 4186i, 42079i))), func_2(max(select(vec4<u32>(11811u, u_input.b.x, 0u, 0u), u_input.b, true), _wgslsmith_div_vec4_u32(vec4<u32>(28351u, u_input.b.x, 78376u, 26318u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u)))).d.c));
    var var_2 = Struct_3(func_2(vec4<u32>(u_input.b.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 48583u), ~vec2<u32>(u_input.b.x, 1u)), u_input.b.x)), select(func_3(Struct_4(func_2(vec4<u32>(5082u, u_input.b.x, 4294967295u, u_input.b.x)), countOneBits(u_input.d.xz), func_2(u_input.b), _wgslsmith_dot_vec3_i32(var_1, var_1), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u))), vec4<bool>(true, -541f <= _wgslsmith_f_op_f32(-var_0.x), all(func_3(Struct_4(Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, false, false, false), 0i, vec4<i32>(-2147483647i, var_1.x, u_input.c, 0i), u_input.c), vec4<f32>(var_0.x, 1149f, -1585f, var_0.x), Struct_1(2147483647i, vec4<bool>(true, false, true, false), 78734i, u_input.d, 28955i), Struct_1(1i, vec4<bool>(true, true, true, true), 33035i, vec4<i32>(48225i, var_1.x, var_1.x, var_1.x), u_input.a.x)), var_1.zx, Struct_2(Struct_1(var_1.x, vec4<bool>(false, true, false, true), -4903i, u_input.d, 25017i), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(var_1.x, vec4<bool>(true, true, true, false), 1i, vec4<i32>(var_1.x, var_1.x, u_input.c, 8945i), u_input.d.x), Struct_1(63693i, vec4<bool>(true, true, false, true), u_input.d.x, vec4<i32>(-2147483647i, -8657i, var_1.x, 1i), -1i)), u_input.c, u_input.b)).zxy), all(vec3<bool>(true, true, true))), true), Struct_2(Struct_1(-(1i & var_1.x), vec4<bool>(true, false, false, true), var_1.x, -vec4<i32>(2147483647i, 48952i, u_input.a.x, u_input.c), min(u_input.a.x, 12314i) & reverseBits(1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * -613f), -1430f, _wgslsmith_f_op_f32(var_0.x + var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-var_0.x), -425f, 1000f)), Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-11960i, u_input.d.x, u_input.a.x, u_input.d.x), u_input.d), vec4<bool>(all(vec3<bool>(false, true, false)), var_0.x >= var_0.x, false, select(false, true, false)), _wgslsmith_mod_i32(-95714i, abs(-2147483647i)), u_input.d, u_input.c), func_2(u_input.b).c), true | ((1u & min(u_input.b.x, u_input.b.x)) < u_input.b.x), abs(5377i));
    var_2 = Struct_3(var_2.c, var_2.b, var_2.c, true & var_2.d, 0i);
    var_2 = Struct_3(func_2(countOneBits(reverseBits(vec4<u32>(22201u, u_input.b.x, 1u, 48362u) ^ u_input.b))), var_2.c.a.b, func_2(select(vec4<u32>(~2568u, u_input.b.x & u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), u_input.b, any(func_2(vec4<u32>(55930u, 1u, 29014u, u_input.b.x)).c.b.xxy))), all(vec2<bool>(false, var_2.b.x)), 10259i);
    return func_2(select(_wgslsmith_add_vec4_u32(~(u_input.b & u_input.b), vec4<u32>(1u, u_input.b.x ^ 22479u, 0u, 62750u)), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(59792u, 1u, u_input.b.x, u_input.b.x)), u_input.b), var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select((var_0.b.x >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -514f)))) || any(var_0.d.b), false, true);
    let var_2 = -abs(vec2<i32>(~1i, -2910i)) | vec2<i32>(_wgslsmith_clamp_i32(func_2(_wgslsmith_div_vec4_u32(u_input.b, u_input.b)).a.a, ~7767i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.d.x, -1i), 26530i, ~var_0.d.c)), -26582i);
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(-1059f - var_0.b.x), -388f)), var_1 & (var_0.a.b.x && any(var_0.d.b)))), Struct_1(var_2.x, vec4<bool>(false, all(var_0.c.b.xwz), !var_0.c.b.x, all(var_0.d.b.wz)), firstLeadingBit(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4225i, -21999i, 2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, var_2.x, u_input.c, 66432i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(1i), ~2147483647i, 2147483647i, u_input.a.x), var_0.a.d >> (u_input.b % vec4<u32>(32u))), 37522i), Struct_1(-40676i, var_0.c.b, -u_input.d.x, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.a.d, vec4<i32>(var_0.c.e, u_input.c, var_2.x, u_input.c)) & vec4<i32>(-1i, -49602i, u_input.c, 6490i), -u_input.d & _wgslsmith_mod_vec4_i32(vec4<i32>(7018i, u_input.c, u_input.c, 338i), vec4<i32>(-1869i, var_0.a.a, var_2.x, 8882i))), _wgslsmith_sub_i32(var_2.x, var_0.c.a)));
    var_0 = Struct_2(func_1().c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-266f, 2330f, false)))) - var_0.b.x), _wgslsmith_div_f32(-1295f, 1161f), _wgslsmith_f_op_f32(-func_1().b.x), 300f), var_0.a, Struct_1(1i, func_2(abs(u_input.b | vec4<u32>(4294967295u, u_input.b.x, 1u, 75365u))).c.b, u_input.c, var_0.a.d, ~(i32(-1i) * -2147483647i)));
    let var_3 = Struct_1(27589i, select(!var_0.c.b, func_2(u_input.b).c.b, vec4<bool>(false, var_1, true, func_2(~u_input.b).d.b.x)), var_0.c.a & (~_wgslsmith_dot_vec4_i32(var_0.c.d, var_0.a.d) | reverseBits(countOneBits(var_2.x))), var_0.c.d, var_0.a.e);
    let var_4 = (1u != u_input.b.x) || select(var_1, false, func_3(Struct_4(Struct_2(var_0.c, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), var_0.d, Struct_1(-38806i, vec4<bool>(var_3.b.x, var_0.c.b.x, var_1, true), var_2.x, u_input.d, 2147483647i)), vec2<i32>(27191i, -25282i), func_1(), -8836i, vec4<u32>(u_input.b.x, u_input.b.x, 57560u, u_input.b.x))).x);
    let var_5 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_div_i32(var_2.x, 0i)), vec4<bool>(all(var_3.b.xz), true, !var_3.b.x, var_3.b.x), u_input.c, func_1().a.d, reverseBits(max(-2147483647i, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(func_1().b, vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.b.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(628f, 788f, var_0.b.x, -1000f), _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(1272f, var_0.b.x, -1000f, -1876f))))), func_1().d, Struct_1(_wgslsmith_mult_i32(0i & var_2.x, 1i), var_0.a.b, ~(-63933i) >> (_wgslsmith_dot_vec3_u32(u_input.b.xwz, vec3<u32>(u_input.b.x, u_input.b.x, 0u)) % 32u), var_3.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_3.e), vec2<i32>(var_2.x, var_0.d.d.x)))), func_3(Struct_4(func_1(), var_3.d.yy, func_1(), 13298i << (u_input.b.x % 32u), u_input.b)), func_2(u_input.b), true, ~_wgslsmith_dot_vec2_i32(var_3.d.zy, _wgslsmith_sub_vec2_i32(-u_input.d.ww, vec2<i32>(-1i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.c, var_2.x), ~var_2.x), var_3.d.x) | vec2<i32>(firstLeadingBit(~var_2.x), _wgslsmith_mult_i32(i32(-1i) * -12490i, ~0i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(-948f, -1628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1259f + -462f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_2(u_input.b).a.c, -(~(var_3.a & abs(var_2.x))));
}

