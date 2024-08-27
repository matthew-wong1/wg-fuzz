struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = u_input.c;
    var var_1 = reverseBits(vec4<i32>(var_0, var_0, firstLeadingBit(u_input.c), select(var_0, 19095i, !arg_0.a.x)));
    return var_1.xw;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_2.d.zyy;
    var var_1 = func_3(arg_2);
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-839f, -1000f, -942f, 3029f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1293f, 1f, 259f)), true)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) * var_3.x));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(select(vec3<bool>(-30147i != -arg_2.x, !(!arg_3.x), true), select(arg_3, vec3<bool>(arg_1 != arg_1, arg_1 && true, arg_0.d.d.x), !select(vec3<bool>(true, false, arg_1), arg_0.a.d.yyw, arg_0.b.d.x)), select(arg_0.b.a, !arg_0.d.d.xww, arg_3.x)), select((_wgslsmith_sub_u32(4294967295u, 7040u) ^ u_input.d) | ~(~u_input.d), _wgslsmith_add_u32(arg_0.a.b, 1u), arg_0.a.a.x), ~(_wgslsmith_sub_u32(arg_0.d.c, 1u) << (4294967295u % 32u)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(~arg_0.d.c, _wgslsmith_sub_u32(u_input.e.x, 1u)), arg_0.d.e.x) % 32u), select(!arg_0.d.d, func_2(any(vec4<bool>(arg_0.b.a.x, false, arg_3.x, true)) & true, (arg_3.x || false) && true, Struct_1(vec3<bool>(arg_0.b.a.x, false, false), ~25392u, ~0u, select(arg_0.a.d, vec4<bool>(true, arg_1, arg_1, false), arg_3.x), firstLeadingBit(u_input.e.yxw)), countOneBits(u_input.b.x)).d, !arg_0.d.d.x), arg_0.d.e);
    var var_1 = vec2<u32>(30747u, u_input.d);
    var var_2 = arg_0.d.d.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1549f, -964f)) * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1336f, _wgslsmith_f_op_f32(f32(-1f) * -568f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-304f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f - 560f))), var_0.d.x | arg_0.d.d.x))));
    var var_4 = any(vec2<bool>(all(var_0.a.zz), _wgslsmith_mult_i32(u_input.c, reverseBits(arg_2.x)) <= 40423i));
    return Struct_1(!select(select(select(vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, false), arg_0.a.a, arg_0.b.a), !var_0.a, var_0.a), select(!vec3<bool>(false, false, arg_1), !var_0.d.yww, func_2(arg_1, false, Struct_1(vec3<bool>(arg_3.x, true, true), 0u, var_1.x, arg_0.b.d, vec3<u32>(arg_0.d.c, arg_0.a.e.x, var_0.e.x)), u_input.b.x).a), !select(vec3<bool>(true, false, var_0.a.x), arg_3, arg_0.d.d.x)), 7378u, arg_0.c, var_0.d, ~(~(~(~vec3<u32>(u_input.b.x, var_0.b, 4294967295u)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -873f))) + arg_0));
    let var_1 = ~37028i;
    let var_2 = 47039i;
    var var_3 = func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), ~1u, ~17994u, vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_u32(~vec3<u32>(25208u, 66042u, 30155u), _wgslsmith_mod_vec3_u32(vec3<u32>(40906u, 64182u, u_input.e.x), u_input.e.xyx))), func_2(true, true, Struct_1(vec3<bool>(true, true, true), 1u, u_input.a.x, vec4<bool>(true, true, true, true), ~vec3<u32>(6409u, 25264u, u_input.b.x)), ~u_input.b.x & u_input.e.x), 1u, func_2(-1000f <= _wgslsmith_f_op_f32(sign(arg_0)), any(vec3<bool>(true, true, true)), func_2(any(vec3<bool>(true, false, true)), false, func_2(true, false, Struct_1(vec3<bool>(true, true, false), u_input.d, u_input.d, vec4<bool>(false, false, false, false), vec3<u32>(u_input.b.x, 41677u, u_input.a.x)), 43418u), u_input.d), ~u_input.e.x ^ u_input.b.x)), true, max(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.c), vec3<i32>(0i, var_2, 2147483647i))), vec3<i32>(-11208i, -31649i, reverseBits(u_input.c | u_input.c))), select(vec3<bool>(true, !(var_1 <= u_input.c), !any(vec2<bool>(false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), all(vec4<bool>(true, true, true, true))));
    var_3 = Struct_1(vec3<bool>(all(!vec4<bool>(true, false, var_3.a.x, var_3.d.x)), false, func_2(true, !var_3.d.x, func_2(any(var_3.d), var_3.d.x, func_4(Struct_2(Struct_1(vec3<bool>(false, var_3.d.x, false), 0u, u_input.d, vec4<bool>(var_3.a.x, false, true, true), vec3<u32>(93374u, var_3.c, u_input.a.x)), Struct_1(vec3<bool>(var_3.a.x, false, false), 38403u, var_3.c, vec4<bool>(false, var_3.d.x, var_3.a.x, true), vec3<u32>(u_input.a.x, var_3.c, var_3.e.x)), u_input.d, Struct_1(var_3.a, var_3.e.x, var_3.c, var_3.d, vec3<u32>(var_3.b, 27126u, u_input.e.x))), false, vec3<i32>(var_2, 5371i, var_2), vec3<bool>(var_3.d.x, true, var_3.a.x)), ~119554u), var_3.c).a.x), abs(var_3.e.x), _wgslsmith_add_u32(~var_3.c, 0u), select(select(select(select(var_3.d, var_3.d, var_3.d.x), vec4<bool>(false, true, true, var_3.d.x), select(vec4<bool>(true, var_3.d.x, var_3.a.x, var_3.a.x), vec4<bool>(var_3.d.x, false, false, var_3.d.x), var_3.a.x)), !var_3.d, func_2(var_3.d.x, true, func_2(var_3.d.x, var_3.a.x, Struct_1(var_3.d.xyw, var_3.c, var_3.b, var_3.d, vec3<u32>(u_input.b.x, 1u, 41620u)), var_3.b), func_2(var_3.a.x, true, Struct_1(var_3.a, u_input.d, 0u, var_3.d, vec3<u32>(var_3.c, u_input.b.x, u_input.a.x)), 41614u).c).a.x), var_3.d, false), abs(~(max(vec3<u32>(4294967295u, 38419u, u_input.b.x), u_input.e.wyy) >> (vec3<u32>(80851u, 72006u, u_input.d) % vec3<u32>(32u)))));
    return Struct_2(Struct_1(var_3.a, 0u ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.d, u_input.a.x)), _wgslsmith_sub_vec2_u32(u_input.e.wx, vec2<u32>(25119u, 56996u))), _wgslsmith_clamp_u32(21481u, 2352u, firstTrailingBit(50567u)), var_3.d, u_input.e.wyw), Struct_1(vec3<bool>(true, select(!var_3.d.x, true == var_3.d.x, func_4(Struct_2(Struct_1(var_3.d.xxx, u_input.e.x, var_3.b, var_3.d, var_3.e), Struct_1(vec3<bool>(true, var_3.d.x, var_3.d.x), u_input.a.x, 1u, var_3.d, vec3<u32>(0u, 0u, 0u)), 64115u, Struct_1(vec3<bool>(false, true, false), var_3.e.x, var_3.b, vec4<bool>(var_3.a.x, false, var_3.a.x, false), var_3.e)), var_3.d.x, vec3<i32>(1i, 41796i, var_1), vec3<bool>(var_3.d.x, true, false)).d.x), var_3.d.x), u_input.b.x, 1u, !var_3.d, vec3<u32>(_wgslsmith_clamp_u32(~1u, _wgslsmith_add_u32(24399u, 0u), _wgslsmith_clamp_u32(68042u, u_input.a.x, 1u)), 58205u, u_input.e.x)), countOneBits(_wgslsmith_sub_u32(var_3.c & var_3.b, _wgslsmith_clamp_u32(25902u, u_input.b.x | var_3.e.x, 1u))), Struct_1(vec3<bool>(var_3.a.x, false, var_3.a.x), u_input.d, abs(abs(_wgslsmith_mult_u32(89740u, 0u))), var_3.d, ~_wgslsmith_div_vec3_u32(~vec3<u32>(38546u, var_3.b, var_3.c), ~var_3.e)));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~select(arg_1, u_input.e, arg_3.x), countOneBits(~u_input.e), ~vec4<u32>(~u_input.e.x, 90712u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1619u, arg_1.x, u_input.a.x, 155308u), u_input.e) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(0u, arg_2.b.b))));
    return firstLeadingBit(func_2(!(!(!arg_3.x)), !(true || !arg_3.x), func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -653f)), arg_3.x, _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, -38799i, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(11282i, arg_0, -76341i), vec3<i32>(arg_0, 29938i, u_input.c), vec3<i32>(-10831i, 1i, u_input.c))), select(func_1(-523f).a.a, vec3<bool>(arg_3.x, true, arg_2.b.d.x), true)), _wgslsmith_clamp_u32(~(13841u ^ var_0.x), var_0.x, arg_1.x)).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec4<bool>(true, true, false, true))), ~(~4294967295u), func_5(-max(1908i, u_input.c), (vec4<u32>(0u, 36851u, 78202u, 0u) & u_input.e) << (select(vec4<u32>(u_input.d, u_input.a.x, u_input.b.x, 43715u), vec4<u32>(31603u, 35600u, u_input.b.x, 0u), false) % vec4<u32>(32u)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1890f)), func_4(func_1(352f), true, vec3<i32>(u_input.c, u_input.c, 2002i) >> (vec3<u32>(0u, 27370u, u_input.e.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)).a.xx), select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -321f)).d.d, vec4<bool>(true, any(vec2<bool>(false, true)), true, true), select(true, true, 20193u == u_input.a.x)), u_input.e.yxz), func_4(func_1(_wgslsmith_f_op_f32(select(-1177f, _wgslsmith_f_op_f32(f32(-1f) * -636f), true))), 18155u >= ~reverseBits(u_input.d), countOneBits(~vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(true, reverseBits(u_input.c) < u_input.c, func_4(Struct_2(Struct_1(vec3<bool>(false, false, false), 26265u, u_input.e.x, vec4<bool>(false, false, true, true), u_input.e.xxw), Struct_1(vec3<bool>(true, false, false), 23646u, 37072u, vec4<bool>(false, true, true, false), vec3<u32>(u_input.b.x, u_input.e.x, 0u)), 118985u, Struct_1(vec3<bool>(false, true, false), 0u, u_input.d, vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 14302u, 34960u))), any(vec4<bool>(true, true, true, true)), max(vec3<i32>(0i, 32951i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))).d.x)), firstTrailingBit(abs(_wgslsmith_mod_u32(31035u, _wgslsmith_add_u32(14154u, 1u)))), Struct_1(vec3<bool>(func_2(true, false, Struct_1(vec3<bool>(false, false, false), u_input.a.x, u_input.e.x, vec4<bool>(false, true, true, false), vec3<u32>(u_input.d, u_input.e.x, u_input.b.x)), u_input.d).a.x & func_1(-303f).b.a.x, !func_4(Struct_2(Struct_1(vec3<bool>(false, true, true), u_input.a.x, 7775u, vec4<bool>(false, true, false, false), u_input.e.zxx), Struct_1(vec3<bool>(false, false, true), 10623u, u_input.a.x, vec4<bool>(true, true, true, true), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), u_input.b.x, Struct_1(vec3<bool>(false, false, false), u_input.e.x, u_input.e.x, vec4<bool>(true, true, true, true), vec3<u32>(5187u, u_input.e.x, u_input.a.x))), false, vec3<i32>(69556i, -2147483647i, u_input.c), vec3<bool>(false, true, false)).a.x, select(true, true, false)), ~firstTrailingBit(u_input.d << (0u % 32u)), ~func_2(true, true, func_2(false, true, Struct_1(vec3<bool>(false, false, true), 37915u, u_input.d, vec4<bool>(true, true, false, true), vec3<u32>(u_input.a.x, 132313u, u_input.a.x)), u_input.e.x), 10237u).e.x, select(vec4<bool>(true, true, any(vec2<bool>(true, false)), u_input.c == u_input.c), vec4<bool>(true, false, true, true), any(vec2<bool>(true, false)) || false), vec3<u32>(~(~u_input.a.x), _wgslsmith_add_u32(1u, 1u), reverseBits(0u & u_input.a.x))));
    var var_1 = Struct_1(func_2(var_0.d.a.x, ~u_input.d < ~_wgslsmith_sub_u32(4294967295u, u_input.a.x), var_0.b, ~(~func_1(-866f).b.b)).d.xxz, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a ^ reverseBits(var_0.a.e.zz), u_input.b), 1u), _wgslsmith_div_u32(var_0.b.e.x, reverseBits(max(_wgslsmith_dot_vec2_u32(u_input.a, var_0.d.e.xz), 51139u))), var_0.d.d, max(~(~var_0.b.e), select(min(~var_0.b.e, reverseBits(var_0.a.e)), vec3<u32>(~69034u, ~4294967295u, _wgslsmith_div_u32(1u, 50515u)), !func_4(Struct_2(Struct_1(var_0.b.a, 0u, 0u, vec4<bool>(false, var_0.a.a.x, var_0.b.a.x, var_0.d.a.x), u_input.e.wxx), var_0.a, 0u, Struct_1(var_0.d.a, var_0.c, 4294967295u, var_0.b.d, vec3<u32>(u_input.b.x, u_input.b.x, 7962u))), false, vec3<i32>(u_input.c, 28842i, u_input.c), vec3<bool>(var_0.d.a.x, true, true)).d.wyy)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1329f - _wgslsmith_f_op_f32(f32(-1f) * -134f))) * _wgslsmith_f_op_f32(f32(-1f) * -1018f)), _wgslsmith_f_op_f32(-1133f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-260f, 921f)))) * _wgslsmith_f_op_f32(f32(-1f) * -738f))));
    var var_3 = ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(func_4(Struct_2(Struct_1(var_0.b.d.yyy, u_input.a.x, var_1.b, vec4<bool>(false, var_1.a.x, var_0.d.a.x, true), vec3<u32>(1u, var_1.e.x, u_input.d)), var_0.b, var_0.a.c, Struct_1(vec3<bool>(true, false, false), 125184u, var_1.c, var_0.b.d, var_0.d.e)), var_0.b.d.x, vec3<i32>(-1i, u_input.c, u_input.c), var_0.b.a).e.x, 1u, 4294967295u, 49086u ^ var_1.e.x), (vec4<u32>(u_input.a.x, 0u, var_0.a.e.x, 31526u) & u_input.e) ^ vec4<u32>(var_0.d.c, 15702u, var_1.c, var_0.d.c)));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 105f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -592f))) - -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-653f - -643f) - _wgslsmith_f_op_f32(floor(-2380f))))), true));
    var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(254f, -893f)))) - _wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(206f * -112f))))));
    var var_4 = -376f;
    var var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(~4294967295u, 1u, 0u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(var_1.e, u_input.e.xxw), vec3<u32>(var_1.c, var_3.x, 120u)) | 89258u, 1u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1368f + -567f), -1560f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 282f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f * -894f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(422f - -727f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1094f + 1085f), _wgslsmith_f_op_f32(f32(-1f) * -351f), true | var_1.d.x)), -734f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -822f)))));
}

