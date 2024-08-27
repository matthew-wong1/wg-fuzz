struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0.a;
    return Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.a.yz, ~vec2<u32>(76424u, u_input.a.x)) & ~reverseBits(var_0.a), ~u_input.c.zz));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, 1i, 67335i, arg_2.c), vec4<i32>(arg_2.c, -40828i, arg_2.c, -2475i)), _wgslsmith_sub_i32(arg_2.c, 1i)) ^ (_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_2.c), vec2<i32>(2147483647i, -15096i)), firstTrailingBit(vec2<i32>(arg_2.c, arg_2.c))) << (~(arg_1.a | arg_1.a) % vec2<u32>(32u))), vec2<i32>(arg_2.c, 0i << (1u % 32u)));
    let var_1 = select(!(!select(!vec4<bool>(true, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_2.b.b, false, false), !vec4<bool>(false, false, arg_0.x, false))), select(vec4<bool>(all(vec4<bool>(arg_2.b.b, arg_0.x, false, false)) & true, true, _wgslsmith_f_op_f32(round(-171f)) >= -1504f, false), vec4<bool>(false, arg_0.x, arg_0.x, false), select(vec4<bool>(true, false, arg_2.b.b, arg_2.b.b), !vec4<bool>(true, arg_2.b.b, arg_2.b.b, arg_2.b.b), !(!vec4<bool>(arg_0.x, false, arg_2.b.b, arg_0.x)))), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_2.b.b, false, false, true))) || arg_2.b.b);
    var_0 = firstTrailingBit(-1i);
    var_0 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(countOneBits(2147483647i), -min(-2147483647i, arg_2.c), _wgslsmith_div_i32(-55416i, -1i), ~(-2147483647i)), vec4<i32>(-68243i, -min(43866i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(17709i, arg_2.c) ^ vec2<i32>(arg_2.c, arg_2.c), ~vec2<i32>(-1i, -20575i)), _wgslsmith_add_i32(-15013i, max(13949i, -7831i))), var_1), reverseBits(-(vec4<i32>(arg_2.c, -20670i, arg_2.c, 1i) ^ vec4<i32>(2904i, arg_2.c, -14495i, arg_2.c)) | _wgslsmith_div_vec4_i32(-vec4<i32>(-35564i, arg_2.c, arg_2.c, arg_2.c), vec4<i32>(-43126i, arg_2.c, -7800i, 36585i))));
    var_0 = _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c, arg_2.c), ~vec2<i32>(arg_2.c, -17838i) | -vec2<i32>(arg_2.c, -29335i)), min(_wgslsmith_clamp_i32(-2529i, 0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-12669i, arg_2.c), vec2<i32>(1i, arg_2.c))), -28089i));
    return Struct_5(Struct_4(-1132i), func_2(arg_2), all(vec4<bool>(false, true, false, false)));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = firstTrailingBit(1026i);
    var_0 = arg_2.c;
    var var_1 = Struct_5(Struct_4(arg_0.a.a), Struct_1(~vec2<u32>(1u, _wgslsmith_mult_u32(1u, 10253u))), any(select(!(!vec2<bool>(arg_1, arg_1)), !select(vec2<bool>(false, arg_1), vec2<bool>(arg_2.b.b, false), arg_0.c), true)));
    var_0 = arg_0.a.a;
    var_1 = func_3(select(vec3<bool>(true, true, arg_2.a.a.x > u_input.a.x), vec3<bool>(true, !arg_1, true), !select(!vec3<bool>(true, arg_0.c, arg_2.b.b), vec3<bool>(arg_0.c, true, arg_2.b.b), select(vec3<bool>(var_1.c, arg_2.b.b, true), vec3<bool>(arg_2.b.b, false, false), true))), Struct_1(~var_1.b.a), arg_2);
    return arg_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = -1000f;
    let var_1 = func_4(Struct_5(func_3(vec3<bool>(true, false, any(vec2<bool>(false, true))), arg_3.a, func_4(Struct_5(Struct_4(arg_3.c), Struct_1(arg_3.b.a.yy), false), 27065u < u_input.b, Struct_3(Struct_1(vec2<u32>(25067u, u_input.b)), Struct_2(arg_3.b.a, false), 23582i))).a, arg_3.a, true), arg_3.b.b, func_4(Struct_5(Struct_4(~0i), func_2(arg_3), !arg_3.b.b), arg_3.b.b, Struct_3(Struct_1(vec2<u32>(25369u, 0u)), Struct_2(vec4<u32>(arg_2.x, arg_3.a.a.x, 5262u, arg_3.a.a.x), arg_1 & false), 1i))).b;
    var var_2 = func_4(Struct_5(func_3(vec3<bool>(func_3(vec3<bool>(true, arg_3.b.b, false), Struct_1(arg_3.a.a), arg_3).c, true, arg_1), arg_3.a, Struct_3(func_4(Struct_5(Struct_4(arg_3.c), arg_3.a, arg_3.b.b), arg_1, Struct_3(arg_3.a, Struct_2(arg_3.b.a, true), arg_3.c)).a, Struct_2(vec4<u32>(u_input.c.x, 4294967295u, var_1.a.x, u_input.a.x), false), ~1i)).a, Struct_1(vec2<u32>(max(0u, var_1.a.x), 9962u)), all(!select(vec3<bool>(var_1.b, arg_3.b.b, false), vec3<bool>(false, var_1.b, arg_1), vec3<bool>(arg_1, var_1.b, arg_3.b.b)))), false, func_4(func_3(!vec3<bool>(arg_3.b.b, false, false), Struct_1(min(arg_3.a.a, var_1.a.zy)), Struct_3(Struct_1(u_input.c.wx), func_4(Struct_5(Struct_4(arg_3.c), Struct_1(var_1.a.zz), true), arg_3.b.b, Struct_3(Struct_1(u_input.c.xz), Struct_2(vec4<u32>(16689u, 11892u, 0u, var_1.a.x), false), arg_3.c)).b, func_3(vec3<bool>(false, arg_1, true), arg_3.a, Struct_3(arg_3.a, arg_3.b, arg_3.c)).a.a)), true, func_4(Struct_5(Struct_4(arg_3.c), Struct_1(vec2<u32>(4294967295u, var_1.a.x)), !arg_3.b.b), false, arg_3)));
    let var_3 = ~abs(min(var_1.a.x, u_input.c.x));
    var_2 = Struct_3(var_2.a, func_4(Struct_5(func_3(vec3<bool>(true, true, true), func_4(Struct_5(Struct_4(-2147483647i), var_2.a, false), arg_1, Struct_3(Struct_1(vec2<u32>(1u, 222u)), Struct_2(vec4<u32>(u_input.a.x, 8440u, 9806u, arg_3.b.a.x), false), arg_3.c)).a, Struct_3(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_2(vec4<u32>(1u, var_1.a.x, 1u, 0u), arg_3.b.b), -1i)).a, func_2(Struct_3(Struct_1(arg_3.a.a), Struct_2(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 4294967295u), arg_1), arg_3.c)), arg_1), arg_1, arg_3).b, -(_wgslsmith_mult_i32(57615i, -arg_3.c) & -2147483647i));
    return ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.c.x, func_3(vec3<bool>(var_1.b, var_2.b.b, var_2.b.b), Struct_1(vec2<u32>(var_1.a.x, var_1.a.x)), arg_3).b.a.x, arg_3.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, var_2.a.a.x, var_3), vec3<u32>(arg_3.a.a.x, 0u, 4294967295u))), var_1.a));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: u32) -> Struct_5 {
    let var_0 = func_3(select(vec3<bool>(arg_0.x || (arg_0.x || arg_0.x), any(arg_0), true), !vec3<bool>(true, true | arg_0.x, any(vec4<bool>(arg_0.x, true, false, true))), !arg_0.x), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), countOneBits(u_input.a.x)), vec2<u32>(40051u, ~4294967295u))), Struct_3(func_3(!select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), true), func_2(func_4(Struct_5(Struct_4(-1i), Struct_1(u_input.c.xw), arg_0.x), arg_0.x, Struct_3(Struct_1(u_input.a.xz), Struct_2(vec4<u32>(u_input.c.x, 23661u, u_input.c.x, arg_1.x), arg_0.x), -41415i))), func_4(func_3(vec3<bool>(arg_0.x, false, arg_0.x), Struct_1(arg_1.zy), Struct_3(Struct_1(arg_1.zy), Struct_2(vec4<u32>(arg_2, 12222u, arg_2, 593u), arg_0.x), 0i)), true, func_4(Struct_5(Struct_4(-3732i), Struct_1(vec2<u32>(u_input.c.x, u_input.b)), arg_0.x), arg_0.x, Struct_3(Struct_1(vec2<u32>(arg_1.x, u_input.c.x)), Struct_2(vec4<u32>(arg_1.x, 0u, u_input.c.x, u_input.c.x), arg_0.x), 31891i)))).b, func_4(func_3(vec3<bool>(true, true, true), Struct_1(u_input.a.yz), func_4(Struct_5(Struct_4(-15987i), Struct_1(arg_1.zz), true), true, Struct_3(Struct_1(arg_1.yx), Struct_2(vec4<u32>(74894u, u_input.a.x, 25673u, arg_2), false), 8192i))), all(!arg_0.xy), Struct_3(Struct_1(arg_1.wy), func_4(Struct_5(Struct_4(9664i), Struct_1(vec2<u32>(4294967295u, u_input.c.x)), true), false, Struct_3(Struct_1(u_input.a.ww), Struct_2(arg_1, false), 1i)).b, -22997i)).b, -1i | _wgslsmith_clamp_i32(0i >> (arg_1.x % 32u), ~(-14559i), i32(-1i) * -60293i))).a;
    var var_1 = var_0;
    var_1 = Struct_4(reverseBits(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(-1i, -10709i))));
    var var_2 = var_0;
    var var_3 = arg_1.zzx;
    return Struct_5(var_0, func_3(vec3<bool>(arg_0.x, func_3(arg_0, func_2(Struct_3(Struct_1(arg_1.xw), Struct_2(arg_1, arg_0.x), var_2.a)), Struct_3(Struct_1(u_input.c.zy), Struct_2(arg_1, arg_0.x), -32853i)).c, all(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, false, false, true), true))), Struct_1(countOneBits(min(var_3.yz, vec2<u32>(arg_1.x, 35567u)))), func_4(func_3(vec3<bool>(arg_0.x, false, arg_0.x), func_4(Struct_5(Struct_4(var_0.a), Struct_1(vec2<u32>(u_input.a.x, arg_2)), true), arg_0.x, Struct_3(Struct_1(vec2<u32>(1023u, 4294967295u)), Struct_2(u_input.c, arg_0.x), var_0.a)).a, func_4(Struct_5(Struct_4(var_1.a), Struct_1(u_input.a.zy), arg_0.x), arg_0.x, Struct_3(Struct_1(u_input.a.xw), Struct_2(arg_1, arg_0.x), var_1.a))), all(vec3<bool>(arg_0.x, true, true)), func_4(Struct_5(var_0, Struct_1(vec2<u32>(4294967295u, 93196u)), false), true, Struct_3(Struct_1(vec2<u32>(arg_1.x, 1u)), Struct_2(arg_1, arg_0.x), 2265i)))).b, -1i == var_1.a);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(362f));
    var var_1 = func_6(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), false)), func_5(vec2<f32>(-1391f, var_0), true, u_input.a.zx, func_4(func_3(vec3<bool>(false, false, false), func_2(Struct_3(Struct_1(u_input.a.zz), Struct_2(u_input.a, false), 0i)), Struct_3(Struct_1(u_input.c.zz), Struct_2(u_input.c, true), 42317i)), !all(vec3<bool>(false, true, true)), Struct_3(func_3(vec3<bool>(false, false, true), Struct_1(u_input.a.zy), Struct_3(Struct_1(u_input.a.zz), Struct_2(vec4<u32>(u_input.b, u_input.a.x, u_input.c.x, u_input.a.x), true), -75772i)).b, Struct_2(vec4<u32>(u_input.c.x, 36969u, 0u, u_input.c.x), true), _wgslsmith_add_i32(0i, 2147483647i)))), func_2(Struct_3(Struct_1(u_input.c.yx), func_4(func_3(vec3<bool>(true, false, true), Struct_1(vec2<u32>(u_input.b, 71835u)), Struct_3(Struct_1(vec2<u32>(34075u, u_input.a.x)), Struct_2(u_input.a, true), -11254i)), u_input.b == 3585u, Struct_3(Struct_1(vec2<u32>(4294967295u, 110697u)), Struct_2(u_input.a, false), 2147483647i)).b, -14916i)).a.x);
    let var_2 = var_1.a;
    var var_3 = !(select(true, !(var_0 > var_0), any(!vec4<bool>(true, var_1.c, true, false))) || var_1.c);
    var var_4 = 0u;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f))), _wgslsmith_f_op_f32(abs(-1000f)), !(var_0 >= var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-202f + _wgslsmith_f_op_f32(abs(336f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1253f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(func_1()), true))))), 970f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1216f, 233f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f * 1087f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1278f, var_0.x) + vec4<f32>(-1004f, -1676f, var_0.x, 445f)) - vec4<f32>(var_0.x, 529f, 175f, -882f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -929f, -739f, -932f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(818f, 366f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, -1049f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, var_0.x, -296f, 1084f) - vec4<f32>(550f, 1221f, 211f, -866f)), func_3(vec3<bool>(false, false, false), Struct_1(u_input.a.zw), Struct_3(Struct_1(vec2<u32>(4294967295u, u_input.b)), Struct_2(vec4<u32>(1u, 1u, 1u, u_input.c.x), true), -17387i)).c)), vec4<f32>(-1225f, -903f, var_0.x, _wgslsmith_f_op_f32(var_0.x + -317f))))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, _wgslsmith_f_op_f32(ceil(-1723f)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(848f)), _wgslsmith_f_op_f32(-351f * var_0.x), _wgslsmith_f_op_f32(var_0.x - -947f), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-253f, -907f)), 1050f, _wgslsmith_f_op_f32(-870f - 1282f), 1377f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 592f, var_0.x) - vec4<f32>(var_0.x, -345f, var_0.x, 795f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2159f, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -279f, 1654f, 2320f), vec4<f32>(var_0.x, var_0.x, var_0.x, 924f), true)) - vec4<f32>(var_0.x, var_0.x, 679f, -123f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-995f, -997f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -520f, var_0.x, 1002f), vec4<f32>(-442f, -417f, -704f, var_0.x), true))), vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1462f)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x + -1467f), _wgslsmith_f_op_f32(-var_0.x)), true))));
    let var_1 = vec2<bool>(!(var_0.x > _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -305f))) < _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, all(vec4<bool>(true, false, false, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-803f, var_0.x, -1000f, -307f), vec4<f32>(var_0.x, -2583f, 747f, -1277f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(615f, -140f, -176f, var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * 1993f))), _wgslsmith_f_op_f32(-var_0.x), -517f, _wgslsmith_f_op_f32(sign(var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~func_2(func_4(Struct_5(Struct_4(-1i), Struct_1(vec2<u32>(0u, u_input.b)), var_1.x), var_1.x, Struct_3(Struct_1(vec2<u32>(0u, u_input.b)), Struct_2(vec4<u32>(u_input.a.x, u_input.c.x, 0u, u_input.a.x), false), 62455i))).a.x, 4113u));
}

