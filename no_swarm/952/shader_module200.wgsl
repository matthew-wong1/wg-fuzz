struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = 0u;
    var_0 = 0u;
    let var_1 = arg_1.c;
    let var_2 = arg_1.c.c.d.x;
    let var_3 = var_1.d.x;
    return select(vec2<bool>(~(~arg_0) > ~49938i, true), var_1.c.d.xy, arg_1.b.e);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = vec4<bool>(arg_0.c.d.x || false, any(!arg_0.d.ww), all(vec4<bool>(false, true, all(vec2<bool>(arg_0.b.d.x, arg_0.b.d.x)), arg_0.e)), all(vec3<bool>(all(arg_0.d), all(func_3(0i, Struct_4(arg_0.b.d.x, Struct_3(arg_1, arg_0.c, Struct_1(arg_0.c.c.x, vec4<f32>(arg_1, 1739f, 713f, arg_0.a), vec3<i32>(u_input.e, 1i, -39292i), arg_0.b.d), arg_0.b.d, true), Struct_2(arg_0.c.d.zwy, vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), arg_0.c, u_input.b.zy)))), true)));
    var var_1 = Struct_4(var_0.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1561f) - 1000f)), arg_0.c, Struct_1(_wgslsmith_div_i32(57741i, -u_input.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 1177f, -1000f, -223f)), abs(u_input.b.zzy), !(!vec4<bool>(var_0.x, arg_0.d.x, false, false))), var_0, var_0.x), Struct_2(select(!var_0.wyw, vec3<bool>(arg_0.e, true, !arg_0.b.d.x), all(!vec4<bool>(arg_0.c.d.x, false, true, false))), _wgslsmith_div_vec4_u32(countOneBits(min(vec4<u32>(u_input.a, 4294967295u, u_input.a, 43949u), vec4<u32>(45836u, u_input.a, 1u, u_input.a))), vec4<u32>(~u_input.a, reverseBits(11492u), abs(u_input.a), ~0u)), Struct_1(-6843i, vec4<f32>(arg_1, _wgslsmith_f_op_f32(trunc(-1076f)), arg_1, _wgslsmith_f_op_f32(arg_2 + arg_2)), ~vec3<i32>(arg_0.b.c.x, 0i, u_input.c.x), !select(var_0, vec4<bool>(false, true, arg_0.e, true), false)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-7890i, arg_0.b.a), -vec2<i32>(arg_0.b.a, 11721i))));
    var_1 = Struct_4(!all(!vec2<bool>(var_1.a, var_1.a)) || (!(!var_0.x) | true), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0.a) + arg_2), Struct_1(_wgslsmith_mod_i32(var_1.c.c.a, 23829i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.b.b))), u_input.b.zxx, vec4<bool>(true, true, true, true)), Struct_1(-36361i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_1.c.c.b.x, arg_2, 472f)), vec3<i32>(u_input.e ^ arg_0.c.a, 0i & var_1.c.d.x, firstTrailingBit(0i)), vec4<bool>(true, true, false, true)), vec4<bool>(var_1.a, true, select(true, false, true), var_1.c.a.x), true), Struct_2(arg_0.b.d.zwy, ~abs(abs(vec4<u32>(50125u, 31437u, u_input.a, u_input.a))), var_1.c.c, vec2<i32>(firstTrailingBit(-37150i), _wgslsmith_mod_i32(-40814i, arg_0.c.c.x) | 0i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.c.b.xw);
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c & var_1.b.b.c, reverseBits(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.c.x, -12432i), vec3<i32>(-2147483647i, var_1.c.c.c.x, arg_0.c.a)))), arg_0.c.c);
    return any(vec3<bool>(true, var_0.x, var_2.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.b.x)))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_3(arg_0, Struct_1(8454i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1132f), arg_3.x, _wgslsmith_f_op_f32(arg_3.x * arg_3.x), 1239f)), vec3<i32>((u_input.d >> (0u % 32u)) | -1i, -u_input.c.x, -16070i), !select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, true), !vec4<bool>(arg_2.x, true, false, arg_2.x))), Struct_1(~0i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.x, 1018f, -2070f, arg_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -330f, arg_0, -305f) + vec4<f32>(-513f, -1000f, -479f, 2163f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(929f, arg_3.x, arg_3.x, arg_0))))), _wgslsmith_add_vec3_i32(vec3<i32>(min(u_input.d, -2147483647i), -23937i, u_input.e), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.d, 0i), u_input.c, vec3<i32>(2147483647i, u_input.c.x, 34544i))), vec4<bool>(true, all(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), !any(vec4<bool>(true, false, arg_2.x, arg_2.x)), any(select(arg_2.yy, vec2<bool>(arg_2.x, arg_2.x), arg_2.x)))), vec4<bool>(true, false, false, any(vec3<bool>(arg_2.x != arg_2.x, arg_2.x, !arg_2.x))), !arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1429f))), Struct_1(28897i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.c.b - _wgslsmith_f_op_vec4_f32(abs(var_0.b.b))))), var_0.c.c, select(var_0.c.d, !var_0.b.d, !all(vec3<bool>(false, arg_2.x, arg_2.x)))), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.c.zy, _wgslsmith_mult_vec2_i32(u_input.b.yw, var_0.c.c.zz)), var_0.c.c.yx), vec4<f32>(1171f, 1095f, _wgslsmith_f_op_f32(max(852f, _wgslsmith_f_op_f32(abs(var_0.a)))), 991f), countOneBits(var_0.b.c), var_0.d), select(!vec4<bool>(var_0.c.d.x, !var_0.d.x, !var_0.c.d.x, 5431i < var_0.c.c.x), var_0.d, var_0.b.d), var_0.c.d.x);
    var_0 = Struct_3(-312f, Struct_1(max(_wgslsmith_mod_i32(0i, 1i), u_input.b.x) & _wgslsmith_clamp_i32(var_0.c.c.x << (0u % 32u), _wgslsmith_clamp_i32(u_input.c.x, var_0.c.a, -1i), u_input.c.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.b - vec4<f32>(var_0.c.b.x, var_0.c.b.x, 217f, -1669f))))), vec3<i32>(u_input.b.x, var_0.b.a | var_0.c.c.x, 22889i) << (max(max(vec3<u32>(9750u, arg_1, u_input.a), vec3<u32>(24480u, 51079u, 0u)), ~vec3<u32>(0u, 0u, 5574u)) % vec3<u32>(32u)), !var_0.c.d), Struct_1(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(1i, var_0.c.a), countOneBits(firstLeadingBit(-1i))), var_0.b.b, -(~firstTrailingBit(var_0.c.c)), vec4<bool>(true, arg_2.x, var_0.d.x, true)), select(vec4<bool>(false, arg_2.x, !func_3(var_0.b.a, Struct_4(true, Struct_3(708f, var_0.b, Struct_1(6906i, var_0.b.b, vec3<i32>(-1i, u_input.b.x, var_0.b.c.x), vec4<bool>(var_0.d.x, var_0.b.d.x, true, false)), vec4<bool>(false, true, var_0.e, var_0.e), true), Struct_2(vec3<bool>(false, false, var_0.e), vec4<u32>(32686u, 1u, 23454u, 33078u), var_0.b, vec2<i32>(65776i, u_input.b.x)))).x, var_0.b.d.x), select(vec4<bool>(true, true, -18860i < var_0.b.c.x, var_0.d.x), select(!vec4<bool>(true, true, var_0.c.d.x, var_0.e), vec4<bool>(false, true, false, false), var_0.a > -759f), var_0.b.d.x & !var_0.e), vec4<bool>(true & !arg_2.x, func_3(1i, Struct_4(var_0.b.d.x, Struct_3(var_0.c.b.x, Struct_1(0i, vec4<f32>(588f, 769f, 1000f, -259f), vec3<i32>(-8506i, var_0.c.c.x, -1i), vec4<bool>(var_0.c.d.x, var_0.e, false, var_0.d.x)), Struct_1(var_0.c.c.x, var_0.c.b, u_input.c, vec4<bool>(false, var_0.c.d.x, arg_2.x, arg_2.x)), vec4<bool>(true, false, true, false), var_0.b.d.x), Struct_2(arg_2, vec4<u32>(arg_1, u_input.a, arg_1, 2178u), Struct_1(-1i, var_0.c.b, vec3<i32>(1i, var_0.b.a, var_0.b.c.x), var_0.d), vec2<i32>(var_0.b.c.x, var_0.b.c.x)))).x, true, select(!var_0.b.d.x, select(false, var_0.c.d.x, var_0.c.d.x), var_0.e))), arg_2.x);
    let var_2 = Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(false, arg_2.x, false, true)), true, (18952i == u_input.b.x) || func_2(Struct_3(var_1, Struct_1(1i, vec4<f32>(115f, var_1, var_0.a, 305f), var_0.c.c, vec4<bool>(false, true, true, true)), Struct_1(u_input.b.x, vec4<f32>(-1026f, arg_0, -1300f, arg_3.x), var_0.c.c, vec4<bool>(arg_2.x, true, var_0.d.x, true)), var_0.c.d, arg_2.x), -161f, -332f)), var_0.c.d.wxw), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, min(4294967295u, u_input.a), 1u, ~u_input.a), ~vec4<u32>(arg_1, arg_1, arg_1, 4475u)), Struct_1(_wgslsmith_div_i32(u_input.c.x, -4236i) ^ (~var_0.c.a | ~38146i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_0.a, 1162f, 532f)))), var_0.c.c, vec4<bool>(arg_2.x, false & (arg_2.x & var_0.d.x), var_0.b.d.x, false)), u_input.c.yz);
    return Struct_2(!select(select(select(vec3<bool>(true, true, arg_2.x), vec3<bool>(false, true, true), vec3<bool>(var_0.d.x, arg_2.x, var_0.e)), select(var_0.d.xzw, vec3<bool>(false, false, true), var_2.c.d.x), var_2.a), arg_2, select(vec3<bool>(arg_2.x, false, false), var_0.b.d.www, !vec3<bool>(var_0.e, false, false))), min(_wgslsmith_add_vec4_u32(var_2.b, vec4<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(var_2.b, var_2.b), 34843u, _wgslsmith_clamp_u32(u_input.a, u_input.a, var_2.b.x))), abs(vec4<u32>(~u_input.a, 1u, var_2.b.x, ~1u))), var_2.c, u_input.b.zw);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), min(1u, arg_1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(false, true)), !all(vec2<bool>(false, true))), true), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1028f, arg_0.x) + vec3<f32>(arg_0.x, 780f, arg_0.x)))), vec3<bool>(true, func_2(Struct_3(-1123f, Struct_1(2147483647i, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -369f), u_input.c, vec4<bool>(true, true, true, true)), Struct_1(-31540i, vec4<f32>(arg_0.x, arg_0.x, -926f, arg_0.x), vec3<i32>(-2147483647i, u_input.c.x, u_input.d), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, false), true), _wgslsmith_f_op_f32(631f * 2066f), 252f), true))));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1157f - _wgslsmith_f_op_f32(min(-1072f, 276f)))), 1u, !(!select(vec3<bool>(false, false, var_0.a.x), var_0.c.d.xyz, vec3<bool>(false, true, var_0.c.d.x))), _wgslsmith_f_op_vec3_f32(abs(var_0.c.b.wzw))).c;
    let var_2 = Struct_2(!(!var_1.d.wzx), var_0.b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-894f * var_1.b.x))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, arg_1.x, 9235u, u_input.a), vec4<u32>(arg_1.x, u_input.a, arg_1.x, arg_1.x), var_0.b), vec4<u32>(arg_1.x, 1u, var_0.b.x, var_0.b.x), select(vec4<bool>(false, var_0.c.d.x, false, var_0.c.d.x), vec4<bool>(false, var_1.d.x, var_1.d.x, var_0.a.x), var_0.c.d)), ~vec4<u32>(34710u, var_0.b.x, 22459u, arg_1.x)), !(!var_1.d.yxw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_0.x, var_1.b.x), var_1.b.x))).c, vec2<i32>(_wgslsmith_mod_i32(~(-1i) << (u_input.a % 32u), u_input.d & 1i), i32(-1i) * -27790i));
    let var_3 = _wgslsmith_f_op_f32(-var_2.c.b.x) <= 1135f;
    var var_4 = Struct_1(min(2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.e, var_2.d.x) >> (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.b.x, var_0.d.x), firstTrailingBit(vec4<i32>(u_input.d, 1i, var_0.c.c.x, -1i))))), vec4<f32>(898f, 667f, _wgslsmith_f_op_f32(sign(550f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.b.x)))), var_2.c.c, select(var_0.c.d, select(!var_0.c.d, var_1.d, false), true));
    return !var_0.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_1(vec3<f32>(1804f, _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1839f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<u32>(1u, u_input.a, _wgslsmith_mult_u32(u_input.a, min(26750u, 3999u)), 5579u)), func_3(-firstLeadingBit(firstTrailingBit(-1i)), Struct_4(!func_3(u_input.b.x, Struct_4(true, Struct_3(957f, Struct_1(-29484i, vec4<f32>(-1156f, 522f, -1489f, 1298f), u_input.c, vec4<bool>(true, false, true, true)), Struct_1(1i, vec4<f32>(1326f, -719f, 1881f, 1881f), u_input.c, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, false, true), false), Struct_2(vec3<bool>(false, true, false), vec4<u32>(u_input.a, 1u, 71704u, u_input.a), Struct_1(u_input.e, vec4<f32>(596f, -264f, 1954f, -533f), vec3<i32>(1i, u_input.d, 13589i), vec4<bool>(false, true, false, true)), vec2<i32>(-30206i, u_input.e)))).x, Struct_3(_wgslsmith_div_f32(-442f, 513f), Struct_1(u_input.e, vec4<f32>(-486f, 1497f, 1218f, 314f), vec3<i32>(-19842i, u_input.c.x, 47726i), vec4<bool>(true, true, true, true)), Struct_1(u_input.c.x, vec4<f32>(1231f, -798f, 1225f, -1175f), u_input.c, vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), true), Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec4<u32>(u_input.a, 55573u, 30718u, u_input.a), func_4(622f, u_input.a, vec3<bool>(false, false, false), vec3<f32>(1369f, 2948f, -1320f)).c, -u_input.b.zw))).x, true);
    var_0 = vec3<bool>(any(!var_0.zz), !var_0.x, !all(vec3<bool>(!var_0.x, true, !var_0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-134f, 1000f), vec2<f32>(-409f, -340f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-164f, -402f), vec2<f32>(-1055f, 2036f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(sign(-873f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1059f, _wgslsmith_div_f32(var_1.x, 1324f), var_1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-424f, -625f, var_1.x)))))), 1u, -(u_input.e << (func_4(var_1.x, select(19611u, u_input.a, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(212f, var_1.x, -960f), vec3<f32>(var_1.x, -1329f, -2011f))).b.x % 32u)));
}

