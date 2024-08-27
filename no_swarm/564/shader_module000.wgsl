struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<f32> {
    return vec3<f32>(1503f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2343f + 261f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.d.b)), _wgslsmith_f_op_f32(-309f + -702f)))), arg_0.d.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(21021u, _wgslsmith_add_i32(37040i, 1i), arg_2, arg_1, firstLeadingBit(1i)), Struct_2(u_input.e, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), true, arg_1, -2147483647i), select(arg_0, vec4<bool>(true, true, arg_2, arg_2), !arg_1.c), Struct_2(18627u, firstLeadingBit(1i), false, arg_1, _wgslsmith_mult_i32(u_input.c.x, -2746i))))));
    var var_1 = vec4<bool>(all(select(select(arg_0.wyy, !vec3<bool>(arg_0.x, false, arg_1.c), false & arg_2), !arg_0.zyy, vec3<bool>(arg_0.x & arg_0.x, u_input.b.x >= u_input.b.x, false))), arg_3, true, true);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(u_input.c.xzx), ~u_input.c.yyy << (~vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u))), u_input.c.wyw) << (73572u % 32u);
    var var_3 = Struct_2(0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, ~u_input.d, reverseBits(21487u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(u_input.d, 9966u, 4294967295u)), ~vec3<u32>(u_input.d, 113711u, u_input.e))) % 32u), ~_wgslsmith_sub_i32(-1i ^ _wgslsmith_div_i32(37519i, u_input.b.x), 2147483647i), arg_2, arg_1, ~13711i);
    var var_4 = var_0.zz;
    return true;
}

fn func_4(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(u_input.d, ~u_input.b.x, !arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 198f)))), _wgslsmith_f_op_f32(1f - -696f), true, !(max(-15178i, 19935i) > u_input.b.x)), -51782i & reverseBits(u_input.a));
    let var_1 = var_0;
    return var_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = u_input.c.yyw & _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(select(20678i, u_input.c.x, false)), u_input.a, 0i), _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, u_input.b.x, -20093i), vec3<i32>(48870i, u_input.b.x, 0i), select(u_input.c.wxz, u_input.c.xyw, vec3<bool>(true, false, true))) | reverseBits(u_input.c.xww & vec3<i32>(-53921i, u_input.a, u_input.a)));
    let var_1 = func_4(select(false, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), func_2(vec4<bool>(true, false, true, false), Struct_1(arg_0.x, -1106f, false, false), false, true)))));
    let var_2 = var_1.d;
    var var_3 = abs(vec2<i32>(-1i) * -vec2<i32>(var_0.x, var_0.x ^ var_0.x));
    let var_4 = _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(31141u, var_1.a)), select(vec2<u32>(35992u << (var_1.a % 32u), countOneBits(1u)), vec2<u32>(abs(7013u), ~4294967295u), all(vec2<bool>(true, true))) >> (~(~abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_2.d;
    var_0 = !arg_2.c;
    let var_1 = firstLeadingBit(arg_0.a);
    var var_2 = 16074i;
    var var_3 = Struct_1(arg_0.d.a, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, 1042f, arg_2.b, 1648f)))).d.b, true, arg_0.c);
    return func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-820f))), var_3.a, _wgslsmith_div_f32(-271f, arg_2.b), arg_2.a) - vec4<f32>(func_4(true).d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f - -1303f)), _wgslsmith_f_op_f32(-arg_0.d.b), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, 1204f, arg_2.b, 1403f))).d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, -462f, 1722f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(647f, 133f, -465f, -1000f)))))), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), 65u == u_input.e, func_2(vec4<bool>(true, true, false, true), Struct_1(158f, 469f, true, false), true, true))), vec4<bool>(func_4(func_4(false).d.d).c, false, true, false)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-187f - 176f), _wgslsmith_f_op_f32(max(-720f, 540f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(1u, -31858i, false, Struct_1(1788f, 1146f, true, true), u_input.c.x), Struct_2(u_input.d, -1i, true, Struct_1(1000f, -1756f, false, false), -2147483647i), vec4<bool>(false, false, false, true), Struct_2(u_input.e, u_input.a, false, Struct_1(115f, -2392f, true, false), -20114i))).x, _wgslsmith_f_op_f32(f32(-1f) * -867f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f - 1000f))), false, true));
    let var_1 = any(!(!(!vec4<bool>(var_0.c, true, var_0.c, var_0.c))));
    var var_2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a) * _wgslsmith_f_op_f32(-func_5(Struct_2(var_0.a, u_input.a, var_0.d.d, var_0.d, -1i), vec4<bool>(var_1, false, true, true), var_0.d).d.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(583f + -219f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(687f, 741f)), _wgslsmith_f_op_f32(exp2(func_1(vec4<f32>(1964f, var_0.d.b, var_0.d.b, var_0.d.b)).d.b))), func_5(Struct_2(var_0.a, _wgslsmith_add_i32(-2147483647i, -1i), true, Struct_1(286f, var_0.d.a, var_1, false), u_input.c.x), vec4<bool>(true, all(vec4<bool>(true, true, var_0.c, true)), false, true), Struct_1(_wgslsmith_f_op_f32(var_0.d.b - -152f), var_0.d.b, var_0.d.c, true)).d.b)).d;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, var_2.b, var_2.a, var_0.d.b)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(ceil(162f)), var_2.b)));
    var_2 = var_0.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(var_3, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1526f - var_2.a), _wgslsmith_f_op_f32(-1123f + var_3.x), _wgslsmith_f_op_f32(-var_2.a), var_2.b))))));
    var var_5 = Struct_2(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_3 + var_3), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_3.x, -549f, var_3.x)))))).a, abs(1u)), 0i, true, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_3 - vec4<f32>(var_3.x, var_0.d.a, var_4.x, var_0.d.b)))) - var_3)).d, abs(var_0.b) >> (~(~1u) % 32u));
    let var_6 = Struct_2(select(u_input.e, ~(~1u), all(select(vec2<bool>(true, true), select(vec2<bool>(true, var_1), vec2<bool>(true, var_2.c), vec2<bool>(var_1, var_5.c)), vec2<bool>(false, true)))), -738i, !((true & var_1) && (var_0.c & var_1)) || var_2.c, var_5.d, ~(-24522i << (_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(1u, 1725u, var_5.a), max(28994u, 10680u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, -_wgslsmith_add_i32(-(~0i), -u_input.c.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3, vec4<f32>(-174f, 1000f, -905f, var_0.d.a), vec4<bool>(var_6.c, var_2.c, true, var_2.c)))) - _wgslsmith_f_op_vec4_f32(-var_3)))), i32(-1i) * -1i);
}

