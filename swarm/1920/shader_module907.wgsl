struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec2<i32>(max(-firstTrailingBit(u_input.c), u_input.c), 16155i);
    var var_1 = -1795f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1486f, -434f), vec2<f32>(1202f, 215f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-910f, -1230f)))))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, ~u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, _wgslsmith_sub_i32(u_input.c, u_input.c) | -9250i, ~1i << (u_input.a % 32u)), vec3<i32>(select(u_input.c, u_input.c, false), -10892i, -4431i) << (vec3<u32>(abs(u_input.a), u_input.b.x << (0u % 32u), ~u_input.d.x) % vec3<u32>(32u))));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(844f - _wgslsmith_f_op_f32(-1f))));
    var var_3 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true))));
    var var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -45751i, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_1, 15537i), vec4<i32>(var_1, u_input.c, -2147483647i, var_1)), var_0.x | -20417i, 0i)), var_0.xx);
    return Struct_4(Struct_1(9160u, !select(!vec3<bool>(var_3.x, false, var_3.x), !vec3<bool>(var_3.x, true, true), true), select(vec4<bool>(false, var_3.x, false, true), vec4<bool>(any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3.x, var_3.x, var_3.x), vec4<bool>(!var_3.x, var_2 < var_2, var_3.x, var_3.x | false)), vec3<u32>(u_input.a, u_input.b.x, 33903u) << (~countOneBits(u_input.b.yzw) % vec3<u32>(32u))), var_2, _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * 132f), Struct_2(var_3.x, u_input.b.yyx));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(456f, -1000f);
    var var_1 = 1i;
    var_1 = -max(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.c, -1i), -34038i), 1i), 1i);
    var var_2 = func_2().a.b.yz;
    var var_3 = select(!arg_3.b.xx, vec2<bool>(!arg_2.b.x, arg_0.x), all(select(vec4<bool>(func_2().e.a, arg_0.x, false || arg_0.x, var_2.x), arg_3.c, any(vec2<bool>(var_2.x, true)))));
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~abs(-firstLeadingBit(-69729i));
    let var_1 = ~(~(~(u_input.b.zw ^ vec2<u32>(20578u, arg_1)) << (~select(vec2<u32>(u_input.b.x, u_input.b.x), arg_0.a.d.xy, arg_3.e) % vec2<u32>(32u))));
    var var_2 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(-329f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.c.x)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-527f, 450f), arg_3.d.x))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1593f, -162f) - 319f) - arg_3.c)), func_4(arg_0.a.b.yz, func_4(vec2<bool>(arg_3.d.x <= arg_0.c.x, all(arg_0.a.c)), arg_0, func_4(func_2().a.b.yy, arg_0, Struct_1(0u, arg_0.a.b, arg_0.a.c, arg_0.e.b), Struct_1(u_input.d.x, arg_0.a.b, vec4<bool>(arg_3.e, arg_3.e, arg_0.e.a, arg_0.e.a), vec3<u32>(u_input.a, arg_0.a.a, 9288u))).a, arg_0.a), arg_0.a, func_2().a).e);
    var_2 = arg_0;
    var var_3 = arg_3;
    return func_2().e;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> f32 {
    let var_0 = ~vec4<u32>(~(~(91148u | u_input.d.x)), _wgslsmith_add_u32(~u_input.b.x >> (~1u % 32u), 0u), 4294967295u, max(31355u, select(min(83032u, 49417u), _wgslsmith_add_u32(1u, 0u), true)));
    let var_1 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(select(u_input.b | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), u_input.b, arg_2.x), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 20403u, 1u), ~vec4<u32>(38194u, 91564u, var_0.x, 19448u))), select(!select(arg_0, vec3<bool>(arg_3.x, arg_2.x, arg_0.x), arg_0), arg_0, false), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, arg_1.x, arg_2.x), arg_3.x), !vec4<bool>(true, true, true, arg_1.x), !vec4<bool>(arg_3.x, arg_2.x, arg_3.x, false)), _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.d.x, 4294967295u, 86855u), vec3<u32>(u_input.a, 1u, 1u)), ~u_input.b.xww)), 1006f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1934f, 776f)) - _wgslsmith_div_f32(-957f, 697f)), -1279f)), 1754f, func_5(func_4(arg_3, func_2(), Struct_1(9518u, !arg_0, func_2().a.c, abs(vec3<u32>(u_input.b.x, 4294967295u, 28395u))), Struct_1(4294967295u, arg_0, vec4<bool>(true, true, true, true), vec3<u32>(u_input.d.x, 48584u, u_input.a))), u_input.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(404f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, -519f)))))), Struct_3(-min(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, 4299i)), vec4<i32>(29312i, u_input.c, u_input.c, firstLeadingBit(u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -917f), func_4(arg_0.xz, func_4(arg_0.xz, Struct_4(Struct_1(u_input.d.x, vec3<bool>(false, true, arg_0.x), vec4<bool>(arg_3.x, arg_1.x, arg_1.x, arg_3.x), vec3<u32>(0u, 0u, 7698u)), 1803f, vec2<f32>(2286f, -1000f), 466f, Struct_2(arg_0.x, vec3<u32>(1u, var_0.x, u_input.d.x))), Struct_1(var_0.x, vec3<bool>(arg_2.x, false, arg_2.x), vec4<bool>(arg_1.x, arg_1.x, false, true), var_0.ywz), Struct_1(u_input.a, vec3<bool>(arg_3.x, true, false), vec4<bool>(arg_2.x, true, arg_0.x, true), u_input.b.wwx)), Struct_1(var_0.x, arg_2, vec4<bool>(arg_2.x, arg_3.x, false, false), u_input.b.zxx), Struct_1(u_input.b.x, vec3<bool>(arg_0.x, arg_2.x, true), vec4<bool>(arg_3.x, false, false, arg_3.x), vec3<u32>(4294967295u, 6598u, 0u))).c, func_4(func_2().a.b.yx, Struct_4(Struct_1(78719u, vec3<bool>(true, arg_2.x, arg_0.x), vec4<bool>(arg_1.x, arg_2.x, true, false), u_input.b.xwx), -182f, vec2<f32>(511f, 689f), -374f, Struct_2(arg_2.x, vec3<u32>(var_0.x, 24444u, var_0.x))), Struct_1(46365u, vec3<bool>(true, arg_2.x, false), vec4<bool>(true, true, true, arg_1.x), vec3<u32>(u_input.a, var_0.x, var_0.x)), func_4(vec2<bool>(false, arg_3.x), Struct_4(Struct_1(var_0.x, arg_2, vec4<bool>(arg_3.x, arg_0.x, arg_2.x, arg_0.x), vec3<u32>(u_input.d.x, 92261u, 22421u)), 437f, vec2<f32>(387f, -315f), -1298f, Struct_2(arg_3.x, var_0.yzw)), Struct_1(0u, arg_0, vec4<bool>(arg_1.x, arg_0.x, arg_1.x, false), vec3<u32>(3843u, u_input.b.x, 17410u)), Struct_1(32013u, arg_2, vec4<bool>(true, arg_0.x, false, true), u_input.b.zzy)).a).e.a)));
    let var_2 = var_0.x;
    let var_3 = select(!select(arg_0, !func_2().a.b, var_1.a.c.wwx), func_4(func_2().a.b.yy, var_1, Struct_1(~(~1u), arg_2, select(var_1.a.c, vec4<bool>(arg_2.x, false, var_1.e.a, arg_0.x), true), u_input.b.wwx), var_1.a).a.c.yzw, all(func_4(vec2<bool>(func_5(var_1, u_input.d.x, vec2<f32>(1242f, var_1.c.x), Struct_3(vec3<i32>(15915i, 45517i, -1i), vec4<i32>(323i, u_input.c, 0i, u_input.c), var_1.b, var_1.c, true)).a, !arg_3.x), Struct_4(func_4(vec2<bool>(arg_2.x, true), Struct_4(Struct_1(var_1.e.b.x, arg_2, var_1.a.c, var_1.e.b), -511f, var_1.c, var_1.b, var_1.e), Struct_1(38092u, vec3<bool>(var_1.a.b.x, arg_3.x, arg_3.x), vec4<bool>(var_1.a.b.x, false, true, false), u_input.b.xzy), var_1.a).a, _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x), var_1.c, var_1.c.x, var_1.e), var_1.a, func_2().a).a.c));
    var var_4 = max(-vec3<i32>(-1i, firstLeadingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 5025i, 2147483647i), firstLeadingBit(vec4<i32>(54014i, u_input.c, -55473i, -2958i)))), (vec3<i32>(-1i) * -min(vec3<i32>(-1i, u_input.c, 0i), vec3<i32>(15743i, u_input.c, u_input.c))) & ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, 2147483647i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(337f))) * 1380f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec2<bool>(true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false))))) + _wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -265f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_3(max(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, u_input.c, 2134i)), abs(select(vec3<i32>(-32014i, 1i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), true))), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -29989i, 1i), vec3<i32>(0i, u_input.c, 0i)))), countOneBits(vec4<i32>(-(~u_input.c), ~(~u_input.c), 0i, _wgslsmith_sub_i32(40742i, 2147483647i))), _wgslsmith_f_op_f32(func_1(vec3<bool>(!all(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false)), select(true, true, true)), vec2<bool>(false, true), func_2().a.c.zxy, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(u_input.b.x == 34667u, u_input.c > 2147483647i), Struct_4(func_4(vec2<bool>(false, true), Struct_4(Struct_1(u_input.d.x, vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 25058u, u_input.b.x)), -2265f, vec2<f32>(1000f, 1625f), var_0, Struct_2(true, vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_1(u_input.a, vec3<bool>(false, false, true), vec4<bool>(false, true, true, false), u_input.b.zxz), Struct_1(14943u, vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), u_input.b.yxy)).a, _wgslsmith_f_op_f32(ceil(464f)), vec2<f32>(-1079f, var_0), _wgslsmith_f_op_f32(ceil(-1000f)), Struct_2(true, u_input.b.yzy)), func_4(vec2<bool>(true, true), func_4(vec2<bool>(true, false), Struct_4(Struct_1(u_input.b.x, vec3<bool>(true, true, false), vec4<bool>(false, true, false, false), u_input.b.zxy), var_0, vec2<f32>(var_0, var_0), -260f, Struct_2(false, u_input.b.xzx)), Struct_1(12986u, vec3<bool>(false, true, false), vec4<bool>(true, false, false, true), vec3<u32>(u_input.d.x, u_input.b.x, u_input.d.x)), Struct_1(u_input.b.x, vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), u_input.b.xxw)), func_4(vec2<bool>(true, true), Struct_4(Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), u_input.b.wxx), -441f, vec2<f32>(var_0, var_0), 1366f, Struct_2(true, u_input.b.xzx)), Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), u_input.b.xzy), Struct_1(u_input.b.x, vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), u_input.b.wxz)).a, func_2().a).a, Struct_1(~u_input.d.x, vec3<bool>(true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), u_input.b.zyz)).c + vec2<f32>(732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-173f, var_0, false))))), false);
    let var_2 = Struct_1(42065u, !(!func_2().a.c.zyx), !(!(!func_2().a.c)), u_input.b.zyw);
    let var_3 = func_5(Struct_4(Struct_1(u_input.a, vec3<bool>(false, true, false), var_2.c, vec3<u32>(u_input.b.x, ~6129u, countOneBits(29557u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1108f)) - 1f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.d.x + var_0), var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-151f, -1309f)) - _wgslsmith_div_f32(-648f, var_1.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) - -928f)), Struct_2(var_2.b.x, vec3<u32>(abs(0u), 90576u ^ var_2.a, u_input.d.x & 57880u))), func_4(vec2<bool>(true, !(var_2.b.x || var_1.e)), Struct_4(Struct_1(~4294967295u, var_2.c.wyy, var_2.c, _wgslsmith_sub_vec3_u32(u_input.b.yzy, vec3<u32>(0u, 65501u, var_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_div_f32(var_1.d.x, -1542f), Struct_2(true, select(vec3<u32>(29715u, 58585u, 1u), u_input.b.xxz, vec3<bool>(var_2.c.x, var_1.e, var_2.c.x)))), func_4(vec2<bool>(var_2.c.x, true), func_4(vec2<bool>(false, false), func_4(var_2.c.yx, Struct_4(Struct_1(var_2.d.x, vec3<bool>(var_2.c.x, true, true), var_2.c, vec3<u32>(var_2.a, 1u, 0u)), var_1.c, vec2<f32>(var_0, var_1.c), 2493f, Struct_2(false, vec3<u32>(u_input.d.x, 0u, 1u))), Struct_1(4294967295u, var_2.b, var_2.c, vec3<u32>(31934u, u_input.b.x, u_input.a)), var_2), Struct_1(4294967295u, var_2.c.yyz, var_2.c, vec3<u32>(var_2.d.x, 90432u, var_2.a)), func_2().a), var_2, var_2).a, var_2).e.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.d)))))), var_1);
    var var_4 = vec2<bool>(select(false, var_3.a, true), _wgslsmith_f_op_f32(trunc(func_2().d)) == -303f);
    var var_5 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_1.b.x), vec2<i32>(_wgslsmith_mod_i32(~(-51535i) ^ max(var_1.b.x, var_1.a.x), countOneBits(-var_1.a.x)), u_input.c));
    var_4 = vec2<bool>(func_4(!var_2.c.zz, func_2(), Struct_1(max(~0u, _wgslsmith_clamp_u32(11486u, var_3.b.x, 28451u)), select(!var_2.c.zxy, !var_2.b, true), var_2.c, var_2.d), func_2().a).a.b.x, false);
    let var_6 = vec2<u32>(abs(~(u_input.d.x >> (~1u % 32u))), _wgslsmith_mult_u32(min(~(~1u), firstLeadingBit(_wgslsmith_add_u32(var_2.a, 1u))), select(45342u, _wgslsmith_add_u32(~4294967295u, firstTrailingBit(var_3.b.x)), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~17468u);
}

