struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(u_input.c, select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, false, false)), -2147483647i > u_input.a, any(vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(0i, u_input.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1601f, 122f, 848f, 1000f) - vec4<f32>(774f, 344f, -890f, -254f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-752f, -1501f, 705f, -122f) - vec4<f32>(1705f, -1000f, 878f, 1801f))), _wgslsmith_mult_i32(-u_input.a, 1i), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(123f, -529f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(false, false)), true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -u_input.d, 19731i), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(u_input.b, u_input.c.x)), _wgslsmith_mult_i32(u_input.d, 25772i), min(29174i, -1i)))));
    var var_1 = -abs(u_input.c.zyx);
    var var_2 = _wgslsmith_div_i32(var_1.x, -(~1i));
    var var_3 = vec3<u32>(41340u, ~(~_wgslsmith_add_u32(_wgslsmith_mult_u32(61767u, 24285u), ~4294967295u)), 0u << (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(54875u, 0u, 40214u, 0u), vec4<u32>(1u, 1u, 1u, 1u), select(var_0.a.d, var_0.a.d, var_0.a.b.x)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(8561u, 1u, 1u, 1u), vec4<u32>(10458u, 5201u, 4294967295u, 1u)))) % 32u));
    var_3 = ~vec3<u32>(~_wgslsmith_div_u32(4294967295u, var_3.x), ~var_3.x ^ countOneBits(1u), 4294967295u) >> (~(vec3<u32>(~38281u, var_3.x, 40874u) & abs(~vec3<u32>(4294967295u, 1u, var_3.x))) % vec3<u32>(32u));
    return select(select(!vec2<bool>(442f > var_0.a.c.e.x, true), vec2<bool>(var_0.a.c.d, true), vec2<bool>(true, var_0.a.c.d)), !select(!vec2<bool>(var_0.a.c.d, false), !select(vec2<bool>(false, var_0.a.c.d), var_0.a.b.xy, var_0.a.b.x), select(!var_0.a.b.x, var_3.x != var_3.x, var_0.a.d.x)), select(select(var_0.a.b.xz, var_0.a.b.yy, !(-1466f >= var_0.a.c.b.x)), !vec2<bool>(!var_0.a.d.x, any(var_0.a.d)), !all(select(var_0.a.d.ww, vec2<bool>(true, var_0.a.b.x), false))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = !select(func_3(), vec2<bool>(all(arg_2.xy), false), arg_2.x);
    let var_1 = arg_3.a;
    var_0 = var_1.b.yy;
    var var_2 = Struct_3(Struct_2(~var_1.a, vec3<bool>(true, arg_2.x, all(select(arg_3.a.d.yyz, vec3<bool>(true, true, false), true))), var_1.c, vec4<bool>(true, arg_3.a.d.x, arg_3.a.d.x, arg_0.d || arg_3.a.b.x)), vec3<i32>(_wgslsmith_mod_i32(~6579i, arg_3.a.a.x), -23035i | _wgslsmith_mult_i32(arg_3.b.x | 62063i, reverseBits(arg_3.a.c.c)), u_input.c.x));
    var var_3 = arg_0.e.x;
    return arg_3;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_2(u_input.c, vec3<bool>(!arg_1.a.d.x, arg_1.a.d.x, false), Struct_1(~_wgslsmith_mult_i32(firstTrailingBit(arg_1.a.c.c), 0i), arg_1.a.c.b, 38350i, true || arg_1.a.c.d, arg_1.a.c.b.yy), !(!(!vec4<bool>(arg_1.a.c.d, true, true, arg_1.a.c.d))));
    var_0 = Struct_2(var_0.a, !arg_1.a.b, func_2(Struct_1(-arg_1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-293f, arg_0, -275f, 1137f) * vec4<f32>(var_0.c.e.x, -339f, var_0.c.b.x, arg_1.a.c.b.x))), max(2147483647i, arg_1.b.x & u_input.a), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-688f, 1985f) - var_0.c.b.yx))), var_0.c.b.x, vec4<bool>(reverseBits(var_0.c.c) >= ~arg_1.b.x, var_0.c.d & true, arg_1.a.d.x, any(!vec2<bool>(var_0.c.d, var_0.b.x))), func_2(Struct_1(min(-3910i, 2147483647i), func_2(Struct_1(var_0.c.a, vec4<f32>(-1317f, 149f, -302f, -2056f), 0i, false, var_0.c.b.zw), -1809f, vec4<bool>(false, true, arg_1.a.b.x, var_0.c.d), arg_1).a.c.b, _wgslsmith_sub_i32(arg_1.a.a.x, 18047i), var_0.c.d, _wgslsmith_f_op_vec2_f32(floor(arg_1.a.c.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.e.x)) - _wgslsmith_f_op_f32(select(arg_0, -1000f, true))), arg_1.a.d, func_2(Struct_1(37145i, vec4<f32>(arg_0, 665f, -988f, arg_1.a.c.e.x), arg_1.b.x, var_0.b.x, vec2<f32>(var_0.c.b.x, 1640f)), -490f, !arg_1.a.d, Struct_3(arg_1.a, vec3<i32>(-2429i, u_input.c.x, -44014i))))).a.c, arg_1.a.d);
    let var_1 = Struct_4(func_2(func_2(Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 803f, arg_1.a.c.b.x, 1000f))), var_0.a.x, func_3().x, vec2<f32>(arg_1.a.c.b.x, -146f)), arg_1.a.c.e.x, arg_1.a.d, Struct_3(Struct_2(var_0.a, arg_1.a.d.yzw, arg_1.a.c, vec4<bool>(false, arg_1.a.b.x, true, false)), var_0.a.wyw)).a.c, var_0.c.e.x, !vec4<bool>(true, arg_1.a.b.x, true, arg_1.a.d.x & false), func_2(func_2(Struct_1(2147483647i, vec4<f32>(134f, -163f, var_0.c.b.x, arg_0), -1i, var_0.b.x, vec2<f32>(1710f, 1000f)), arg_0, arg_1.a.d, Struct_3(Struct_2(u_input.c, var_0.d.wxw, Struct_1(24419i, vec4<f32>(1000f, arg_0, 1281f, 1000f), arg_1.b.x, false, var_0.c.e), vec4<bool>(var_0.d.x, true, true, false)), var_0.a.yxy)).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f - var_0.c.e.x)), !arg_1.a.d, Struct_3(Struct_2(u_input.c, arg_1.a.d.ywy, Struct_1(arg_1.b.x, vec4<f32>(-465f, 168f, arg_1.a.c.e.x, var_0.c.e.x), arg_1.a.a.x, arg_1.a.b.x, arg_1.a.c.e), var_0.d), ~var_0.a.zyy))).a, _wgslsmith_clamp_i32(2147483647i, u_input.d, func_2(arg_1.a.c, -930f, select(var_0.d, var_0.d, !var_0.d.x), func_2(var_0.c, arg_1.a.c.e.x, vec4<bool>(false, var_0.b.x, arg_1.a.b.x, var_0.d.x), func_2(Struct_1(-2147483647i, vec4<f32>(-365f, arg_1.a.c.e.x, var_0.c.e.x, arg_1.a.c.e.x), var_0.a.x, arg_1.a.b.x, var_0.c.b.xz), arg_0, var_0.d, Struct_3(arg_1.a, var_0.a.yxx)))).b.x), any(func_3()), func_2(arg_1.a.c, arg_0, !select(vec4<bool>(var_0.c.d, arg_1.a.c.d, arg_1.a.c.d, false), vec4<bool>(true, var_0.c.d, true, var_0.d.x), vec4<bool>(false, true, arg_1.a.c.d, arg_1.a.d.x)), arg_1), !(!any(vec4<bool>(false, var_0.c.d, arg_1.a.d.x, true))));
    return 1u;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(arg_0.x, arg_0.x), _wgslsmith_sub_u32(0u, arg_0.x), func_4(_wgslsmith_f_op_f32(891f - _wgslsmith_f_op_f32(step(1472f, 753f))), func_2(Struct_1(0i, vec4<f32>(-512f, -666f, -1074f, -1503f), -5263i, false, vec2<f32>(846f, -318f)), -405f, vec4<bool>(true, true, true, true), Struct_3(Struct_2(u_input.c, vec3<bool>(true, true, false), Struct_1(u_input.d, vec4<f32>(337f, -839f, 579f, 161f), 0i, true, vec2<f32>(164f, -725f)), vec4<bool>(false, true, false, false)), u_input.c.wxy))) | _wgslsmith_add_u32(~(~4294967295u), arg_0.x));
    var var_1 = vec3<i32>(u_input.a, u_input.c.x, func_2(func_2(func_2(func_2(Struct_1(u_input.d, vec4<f32>(582f, -300f, 544f, -493f), -2147483647i, true, vec2<f32>(843f, 355f)), -867f, vec4<bool>(false, true, true, true), Struct_3(Struct_2(vec4<i32>(40352i, u_input.b, 49445i, u_input.c.x), vec3<bool>(false, true, true), Struct_1(14964i, vec4<f32>(-314f, 1221f, -400f, 2376f), 13897i, false, vec2<f32>(-901f, 153f)), vec4<bool>(true, false, true, false)), u_input.c.wzz)).a.c, _wgslsmith_f_op_f32(829f * 1149f), vec4<bool>(true, true, true, true), Struct_3(Struct_2(vec4<i32>(30149i, u_input.b, u_input.c.x, u_input.a), vec3<bool>(false, false, true), Struct_1(1i, vec4<f32>(-2689f, -337f, 1991f, 1291f), 1i, false, vec2<f32>(676f, -2758f)), vec4<bool>(true, false, true, true)), vec3<i32>(u_input.c.x, u_input.b, 1i))).a.c, 1384f, vec4<bool>(true, true, true, false), func_2(func_2(Struct_1(-1i, vec4<f32>(1846f, 442f, -896f, -675f), 0i, true, vec2<f32>(246f, 137f)), 1736f, vec4<bool>(true, true, false, true), Struct_3(Struct_2(u_input.c, vec3<bool>(false, false, true), Struct_1(1i, vec4<f32>(205f, -522f, 259f, 2815f), u_input.c.x, false, vec2<f32>(-172f, 1000f)), vec4<bool>(true, false, true, false)), u_input.c.yzx)).a.c, _wgslsmith_f_op_f32(step(1597f, -1943f)), vec4<bool>(false, true, true, false), func_2(Struct_1(u_input.b, vec4<f32>(-146f, -1314f, 1195f, 528f), 0i, false, vec2<f32>(1096f, 601f)), -416f, vec4<bool>(true, true, true, false), Struct_3(Struct_2(u_input.c, vec3<bool>(true, true, false), Struct_1(u_input.a, vec4<f32>(-603f, -1039f, -1000f, 132f), -64533i, false, vec2<f32>(1000f, 663f)), vec4<bool>(true, false, true, true)), vec3<i32>(u_input.b, 32752i, u_input.b))))).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 709f))), vec4<bool>(true, true, false, !func_3().x), Struct_3(Struct_2(vec4<i32>(-2147483647i, 1i, 2147483647i, u_input.c.x), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), Struct_1(u_input.a, vec4<f32>(255f, -249f, 245f, -1369f), 2147483647i, false, vec2<f32>(636f, -1061f)), vec4<bool>(true, true, true, true)), (vec3<i32>(0i, 1i, u_input.c.x) << (arg_0 % vec3<u32>(32u))) << (select(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(var_0.x, 80722u, var_0.x), vec3<bool>(true, true, true)) % vec3<u32>(32u)))).a.a.x);
    var_1 = u_input.c.zxy;
    var var_2 = Struct_1(_wgslsmith_mult_i32(abs(-6254i & var_1.x), u_input.c.x) ^ _wgslsmith_dot_vec2_i32(~u_input.c.yz, vec2<i32>(func_2(Struct_1(u_input.b, vec4<f32>(-710f, -735f, -884f, -497f), var_1.x, false, vec2<f32>(-1098f, -269f)), -1005f, vec4<bool>(false, false, false, true), Struct_3(Struct_2(u_input.c, vec3<bool>(true, true, false), Struct_1(2147483647i, vec4<f32>(-401f, -2687f, -634f, -1459f), 26013i, false, vec2<f32>(-2301f, 1158f)), vec4<bool>(false, false, false, false)), vec3<i32>(-2147483647i, u_input.c.x, 2147483647i))).a.a.x, 10396i << (arg_0.x % 32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1895f, 474f, 1000f, -248f))))))), ~0i, true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_div_f32(2346f, -399f)))));
    var var_3 = Struct_2(select(~reverseBits(u_input.c), u_input.c, vec4<bool>(!all(vec2<bool>(var_2.d, var_2.d)), var_1.x < ~(-23221i), any(select(vec2<bool>(false, var_2.d), vec2<bool>(var_2.d, false), vec2<bool>(false, false))), countOneBits(var_0.x) <= var_0.x)), !(!func_2(func_2(Struct_1(var_2.c, var_2.b, 1559i, var_2.d, vec2<f32>(var_2.e.x, 1279f)), var_2.e.x, vec4<bool>(false, var_2.d, var_2.d, var_2.d), Struct_3(Struct_2(u_input.c, vec3<bool>(true, var_2.d, var_2.d), Struct_1(0i, var_2.b, var_2.c, var_2.d, vec2<f32>(var_2.b.x, var_2.b.x)), vec4<bool>(var_2.d, var_2.d, false, true)), u_input.c.yxw)).a.c, -2394f, !vec4<bool>(var_2.d, var_2.d, true, var_2.d), func_2(Struct_1(u_input.d, var_2.b, -1i, true, vec2<f32>(-356f, var_2.e.x)), 360f, vec4<bool>(var_2.d, var_2.d, var_2.d, false), Struct_3(Struct_2(vec4<i32>(0i, 16976i, 23560i, 0i), vec3<bool>(var_2.d, true, var_2.d), Struct_1(var_2.a, var_2.b, var_2.a, var_2.d, var_2.b.wx), vec4<bool>(false, false, var_2.d, var_2.d)), vec3<i32>(-2147483647i, -1i, var_1.x)))).a.b), func_2(func_2(Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, 756f, var_2.b.x, -1955f)), 0i, true, _wgslsmith_f_op_vec2_f32(trunc(var_2.b.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), vec4<bool>(var_2.d, false, var_2.d, true), Struct_3(Struct_2(vec4<i32>(var_2.a, u_input.c.x, var_2.a, var_2.a), vec3<bool>(var_2.d, var_2.d, var_2.d), Struct_1(-2147483647i, vec4<f32>(var_2.e.x, var_2.b.x, -1217f, 721f), -35205i, true, var_2.e), vec4<bool>(false, true, false, var_2.d)), ~u_input.c.yyw)).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -626f) * _wgslsmith_f_op_f32(abs(-247f)))), !vec4<bool>(var_2.d, true, true, !var_2.d), Struct_3(func_2(Struct_1(10188i, vec4<f32>(658f, -927f, -1550f, var_2.e.x), u_input.b, var_2.d, var_2.b.yy), 178f, func_2(Struct_1(-25832i, vec4<f32>(-916f, var_2.e.x, var_2.e.x, var_2.e.x), 6374i, var_2.d, var_2.b.xx), var_2.b.x, vec4<bool>(var_2.d, true, true, false), Struct_3(Struct_2(vec4<i32>(-50665i, u_input.b, u_input.c.x, 1i), vec3<bool>(false, true, var_2.d), Struct_1(0i, vec4<f32>(522f, var_2.b.x, var_2.b.x, -165f), var_1.x, var_2.d, var_2.e), vec4<bool>(var_2.d, var_2.d, true, false)), u_input.c.yzy)).a.d, func_2(Struct_1(1i, vec4<f32>(var_2.e.x, var_2.b.x, var_2.b.x, var_2.b.x), var_1.x, true, vec2<f32>(var_2.e.x, -152f)), var_2.b.x, vec4<bool>(true, var_2.d, var_2.d, true), Struct_3(Struct_2(vec4<i32>(1i, var_1.x, 2147483647i, 2147483647i), vec3<bool>(var_2.d, var_2.d, false), Struct_1(2147483647i, var_2.b, u_input.c.x, true, vec2<f32>(555f, var_2.b.x)), vec4<bool>(var_2.d, var_2.d, var_2.d, var_2.d)), vec3<i32>(var_2.c, 2147483647i, 1i)))).a, u_input.c.xwz)).a.c, vec4<bool>(!(!(var_2.b.x >= var_2.e.x)), var_2.d, !var_2.d != all(!vec3<bool>(var_2.d, var_2.d, var_2.d)), (any(vec3<bool>(var_2.d, var_2.d, true)) | true) | true));
    return i32(-1i) * -13039i;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> Struct_3 {
    var var_0 = func_2(Struct_1(1i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-528f, _wgslsmith_f_op_f32(-1063f - -274f), 360f, _wgslsmith_f_op_f32(1400f - -819f)))), arg_0.x ^ (min(arg_0.x, 63722i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_0.x, 1i), vec4<i32>(1i, 1i, -9319i, u_input.a))), false, vec2<f32>(_wgslsmith_f_op_f32(-1000f + -1428f), -388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1019f))), func_2(func_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-181f, -301f, 599f, 833f))), u_input.b, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-998f, 1000f) - vec2<f32>(-420f, -1478f))), _wgslsmith_f_op_f32(ceil(1000f)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true), func_2(Struct_1(arg_0.x, vec4<f32>(-475f, -668f, -874f, 1000f), arg_0.x, true, vec2<f32>(416f, -1337f)), _wgslsmith_f_op_f32(floor(1003f)), vec4<bool>(false, false, true, true), Struct_3(Struct_2(arg_0, vec3<bool>(true, false, false), Struct_1(0i, vec4<f32>(-854f, 779f, 1529f, -533f), 2147483647i, false, vec2<f32>(-314f, 1185f)), vec4<bool>(false, false, false, true)), u_input.c.xzz))).a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1860f + _wgslsmith_f_op_f32(round(-502f)))), !vec4<bool>(func_3().x, any(vec4<bool>(true, false, true, true)), true, true), func_2(Struct_1(u_input.b, vec4<f32>(-220f, -392f, -553f, -2627f), -21503i, all(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2189f, 702f) * vec2<f32>(848f, 265f))), _wgslsmith_f_op_f32(round(-478f)), vec4<bool>(true, true, true, true), Struct_3(func_2(Struct_1(3445i, vec4<f32>(-607f, -583f, 1000f, -1000f), 1i, true, vec2<f32>(-1833f, 1037f)), 1717f, vec4<bool>(false, false, true, true), Struct_3(Struct_2(arg_0, vec3<bool>(true, true, true), Struct_1(-1i, vec4<f32>(671f, 1000f, 481f, 1487f), 1i, true, vec2<f32>(1292f, 2823f)), vec4<bool>(false, false, true, true)), vec3<i32>(-1i, arg_0.x, arg_0.x))).a, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, arg_0.x), arg_0.www)))).a.d, func_2(func_2(func_2(Struct_1(arg_0.x, vec4<f32>(297f, 1961f, -455f, 691f), arg_0.x, true, vec2<f32>(-398f, 105f)), -908f, vec4<bool>(true, true, true, true), Struct_3(Struct_2(arg_0, vec3<bool>(false, true, false), Struct_1(u_input.a, vec4<f32>(-237f, -1000f, 919f, -502f), u_input.a, false, vec2<f32>(-560f, -674f)), vec4<bool>(true, false, false, true)), vec3<i32>(u_input.c.x, 25615i, 1i))).a.c, _wgslsmith_f_op_f32(sign(-314f)), vec4<bool>(false, all(vec3<bool>(true, true, false)), true, true), func_2(func_2(Struct_1(arg_0.x, vec4<f32>(676f, 1000f, -929f, 635f), arg_0.x, true, vec2<f32>(-730f, -192f)), -405f, vec4<bool>(true, false, true, false), Struct_3(Struct_2(vec4<i32>(u_input.a, -30554i, u_input.a, -3626i), vec3<bool>(true, true, false), Struct_1(35227i, vec4<f32>(-1156f, 108f, -1000f, 1111f), 34401i, false, vec2<f32>(-404f, -556f)), vec4<bool>(true, false, false, true)), vec3<i32>(arg_0.x, arg_0.x, u_input.c.x))).a.c, 1784f, vec4<bool>(true, true, true, true), Struct_3(Struct_2(vec4<i32>(35348i, u_input.d, u_input.c.x, 1i), vec3<bool>(true, false, false), Struct_1(33260i, vec4<f32>(-179f, 1611f, 981f, 526f), 21182i, true, vec2<f32>(450f, -578f)), vec4<bool>(false, false, false, true)), vec3<i32>(u_input.b, 1i, arg_0.x)))).a.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-544f)))), vec4<bool>(true, any(vec3<bool>(true, true, true)), -286f <= func_2(Struct_1(arg_0.x, vec4<f32>(-551f, -757f, -815f, -655f), arg_0.x, false, vec2<f32>(376f, -339f)), 675f, vec4<bool>(false, false, true, true), Struct_3(Struct_2(u_input.c, vec3<bool>(true, false, false), Struct_1(20082i, vec4<f32>(-1000f, 577f, -350f, 1120f), 0i, true, vec2<f32>(-1576f, 571f)), vec4<bool>(true, false, true, true)), u_input.c.zxz)).a.c.b.x, 1u <= arg_1), func_2(Struct_1(func_2(Struct_1(u_input.d, vec4<f32>(1858f, 659f, -1300f, 873f), 1i, false, vec2<f32>(-902f, -1215f)), -892f, vec4<bool>(false, false, false, false), Struct_3(Struct_2(vec4<i32>(37574i, -1i, u_input.a, -1i), vec3<bool>(true, true, false), Struct_1(1i, vec4<f32>(890f, -224f, -462f, -1074f), u_input.d, false, vec2<f32>(314f, 363f)), vec4<bool>(true, false, true, true)), arg_0.xyy)).b.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-755f, -1355f, -974f, -1181f), vec4<f32>(884f, -1066f, 944f, -135f))), arg_0.x, arg_1 < arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, -427f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1152f)), -1000f)), vec4<bool>(true, true, true, true), func_2(Struct_1(2147483647i, vec4<f32>(432f, -1000f, 1000f, -1041f), arg_0.x, true, vec2<f32>(409f, 160f)), -1099f, func_2(Struct_1(-8027i, vec4<f32>(-244f, -1000f, 1691f, 1494f), -2147483647i, true, vec2<f32>(-1000f, 1470f)), 544f, vec4<bool>(false, true, true, false), Struct_3(Struct_2(vec4<i32>(arg_0.x, u_input.b, -6620i, 11698i), vec3<bool>(false, true, false), Struct_1(0i, vec4<f32>(-281f, 1021f, -517f, 1666f), 0i, false, vec2<f32>(1611f, 661f)), vec4<bool>(true, true, true, true)), arg_0.zzx)).a.d, Struct_3(Struct_2(u_input.c, vec3<bool>(false, true, true), Struct_1(-1i, vec4<f32>(-738f, 585f, 528f, -130f), arg_0.x, true, vec2<f32>(1323f, -967f)), vec4<bool>(false, false, false, false)), arg_0.xxz))))).a.c;
    let var_1 = ~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(59415u, 4687u, arg_1) ^ vec3<u32>(1u, arg_1, arg_1), reverseBits(vec3<u32>(arg_1, 0u, 0u))), _wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_add_u32(15163u, 39003u))), arg_1);
    var_0 = func_2(Struct_1(_wgslsmith_div_i32(-2147483647i, -56897i), var_0.b, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(0i, var_0.c, -41110i, u_input.a), vec4<i32>(u_input.a, 13446i, 444i, -18406i), false), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 3470i, u_input.a, 11406i), ~arg_0)), true, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(-273f - 218f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_0.b.x))))))), select(select(vec4<bool>(!var_0.d, any(vec2<bool>(var_0.d, var_0.d)), var_1.x <= var_1.x, var_0.d), func_2(func_2(Struct_1(arg_0.x, var_0.b, var_0.c, var_0.d, vec2<f32>(var_0.e.x, 259f)), var_0.e.x, vec4<bool>(var_0.d, var_0.d, false, false), Struct_3(Struct_2(vec4<i32>(var_0.a, arg_0.x, var_0.a, arg_0.x), vec3<bool>(var_0.d, false, var_0.d), Struct_1(-23974i, vec4<f32>(795f, var_0.e.x, 502f, 562f), arg_0.x, var_0.d, vec2<f32>(var_0.e.x, var_0.e.x)), vec4<bool>(true, true, false, var_0.d)), vec3<i32>(u_input.d, 0i, -1i))).a.c, -155f, vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), func_2(Struct_1(3012i, vec4<f32>(-1341f, var_0.b.x, var_0.e.x, var_0.b.x), -1i, false, vec2<f32>(-1683f, -1570f)), 3140f, vec4<bool>(false, var_0.d, var_0.d, false), Struct_3(Struct_2(vec4<i32>(7495i, u_input.a, 6207i, arg_0.x), vec3<bool>(true, var_0.d, var_0.d), Struct_1(u_input.a, vec4<f32>(var_0.b.x, var_0.b.x, var_0.e.x, var_0.e.x), arg_0.x, true, var_0.e), vec4<bool>(false, false, false, var_0.d)), vec3<i32>(-2147483647i, var_0.c, 9163i)))).a.d, vec4<bool>(true, var_0.d, var_0.d, true)), vec4<bool>(false, var_0.d, var_1.x > 34848u, !var_0.d), any(vec4<bool>(true, select(var_0.d, var_0.d, false), var_0.d, false))), Struct_3(Struct_2(_wgslsmith_div_vec4_i32(arg_0, abs(arg_0)), !(!vec3<bool>(true, true, var_0.d)), Struct_1(~u_input.b, vec4<f32>(-317f, var_0.e.x, 998f, var_0.b.x), min(-6273i, -1i), var_0.d, vec2<f32>(var_0.b.x, 971f)), vec4<bool>(var_0.d, true, func_3().x, false)), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 25641i, u_input.c.x), arg_0), arg_0 | vec4<i32>(arg_0.x, 7959i, var_0.a, 2147483647i)), arg_0.x, -1i))).a.c;
    let var_2 = var_0.d;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(abs(var_0.b)), ~(~min(u_input.a, -1i)), var_0.d, var_0.e);
    return Struct_3(Struct_2(-arg_0, vec3<bool>(!all(vec2<bool>(false, true)), var_0.d, var_0.d), func_2(func_2(Struct_1(7010i, var_0.b, 21160i, var_0.d, vec2<f32>(var_0.e.x, 863f)), -791f, vec4<bool>(true, false, var_0.d, false), Struct_3(Struct_2(u_input.c, vec3<bool>(var_0.d, var_0.d, true), Struct_1(u_input.d, vec4<f32>(1000f, var_0.b.x, -1108f, var_0.e.x), u_input.c.x, var_0.d, vec2<f32>(313f, var_0.e.x)), vec4<bool>(var_0.d, var_0.d, true, var_0.d)), u_input.c.yyw)).a.c, 148f, func_2(func_2(Struct_1(-2147483647i, var_0.b, arg_0.x, true, var_0.e), -1130f, vec4<bool>(var_0.d, true, true, false), Struct_3(Struct_2(arg_0, vec3<bool>(false, false, false), Struct_1(-27084i, vec4<f32>(var_0.b.x, var_0.e.x, 947f, var_0.e.x), u_input.d, var_0.d, var_0.b.xw), vec4<bool>(var_0.d, var_0.d, var_0.d, true)), vec3<i32>(-1i, 0i, 0i))).a.c, _wgslsmith_f_op_f32(trunc(1012f)), !vec4<bool>(false, true, var_0.d, var_0.d), Struct_3(Struct_2(vec4<i32>(782i, var_0.a, -39941i, var_0.c), vec3<bool>(true, var_0.d, var_0.d), Struct_1(-38384i, var_0.b, -1i, var_0.d, var_0.e), vec4<bool>(true, false, false, var_0.d)), vec3<i32>(arg_0.x, 2147483647i, -9368i))).a.d, func_2(func_2(Struct_1(var_0.a, var_0.b, 1i, var_0.d, vec2<f32>(-803f, 810f)), -129f, vec4<bool>(false, var_0.d, var_0.d, false), Struct_3(Struct_2(u_input.c, vec3<bool>(false, true, var_0.d), Struct_1(-1i, vec4<f32>(var_0.b.x, -696f, 365f, 161f), u_input.c.x, var_0.d, vec2<f32>(-1683f, var_0.e.x)), vec4<bool>(false, true, var_0.d, true)), vec3<i32>(arg_0.x, var_0.c, u_input.c.x))).a.c, _wgslsmith_f_op_f32(min(var_0.b.x, -1872f)), vec4<bool>(false, var_0.d, var_0.d, false), Struct_3(Struct_2(arg_0, vec3<bool>(true, var_0.d, true), Struct_1(13066i, vec4<f32>(-1033f, 303f, 454f, var_0.b.x), var_0.a, var_0.d, var_0.e), vec4<bool>(true, true, false, false)), vec3<i32>(1i, -27102i, -1223i)))).a.c, select(vec4<bool>(true, false | var_0.d, any(vec4<bool>(true, var_0.d, true, var_0.d)), false), func_2(func_2(Struct_1(25995i, vec4<f32>(var_0.b.x, var_0.b.x, 1594f, var_0.e.x), arg_0.x, true, vec2<f32>(var_0.e.x, -1420f)), -2849f, vec4<bool>(true, var_0.d, var_0.d, var_0.d), Struct_3(Struct_2(vec4<i32>(1i, 6955i, arg_0.x, 2147483647i), vec3<bool>(false, true, true), Struct_1(9686i, vec4<f32>(-1170f, 1000f, var_0.e.x, -208f), arg_0.x, true, vec2<f32>(var_0.e.x, -161f)), vec4<bool>(var_0.d, false, var_0.d, true)), vec3<i32>(var_0.c, -2147483647i, -21722i))).a.c, var_0.e.x, vec4<bool>(true, true, true, true), Struct_3(Struct_2(u_input.c, vec3<bool>(false, var_0.d, false), Struct_1(u_input.c.x, var_0.b, 3944i, var_0.d, vec2<f32>(1416f, 1000f)), vec4<bool>(true, var_0.d, true, true)), vec3<i32>(var_0.c, arg_0.x, -54617i))).a.d, !func_2(Struct_1(0i, vec4<f32>(var_0.b.x, var_0.e.x, -316f, -238f), 26182i, var_0.d, vec2<f32>(var_0.b.x, var_0.e.x)), 644f, vec4<bool>(true, var_0.d, true, var_0.d), Struct_3(Struct_2(arg_0, vec3<bool>(false, var_0.d, var_0.d), Struct_1(-2147483647i, var_0.b, 23210i, var_0.d, var_0.e), vec4<bool>(true, var_0.d, false, var_0.d)), vec3<i32>(arg_0.x, u_input.c.x, var_0.a))).a.d)), abs(arg_0.yww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(abs(vec2<u32>(max(70353u, firstLeadingBit(33591u)), 31063u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, 487f) * vec2<f32>(-1233f, -1070f))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-546f * -261f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(204f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1212f, -719f), vec2<f32>(1210f, 1355f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1325f), -1211f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_2 = func_5(vec4<i32>(func_1(~min(vec3<u32>(58074u, 0u, 1u), vec3<u32>(var_0.x, 1u, var_0.x))), u_input.a ^ _wgslsmith_div_i32(u_input.d, _wgslsmith_mod_i32(u_input.a, u_input.b)), -10280i, _wgslsmith_div_i32(-(~u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), vec2<i32>(2147483647i, u_input.a)))), var_0.x);
    var var_3 = func_5(var_2.a.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x & var_0.x, ~135188u, var_0.x)), select(vec4<u32>(42695u, var_0.x << (4294967295u % 32u), ~4294967295u, 25844u), ~vec4<u32>(var_0.x, var_0.x, 1u, 0u) ^ min(vec4<u32>(0u, var_0.x, var_0.x, var_0.x), vec4<u32>(38702u, 17310u, 4294967295u, var_0.x)), false)));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c.e, -1000f, 4294967295u);
}

