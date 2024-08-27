struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, vec3<u32>(32275u, 30333u, 5051u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = Struct_4(~reverseBits(min(arg_0.b, 1u)) <= max(global0.b.x, arg_0.b), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4925u, arg_0.b, arg_0.b), global0.b, global0.b), abs(vec3<u32>(0u, 26501u, 19292u)))));
    global0 = Struct_4(all(arg_0.c.xyx), global0.b ^ ~global0.b);
    global0 = Struct_4(true, ~vec3<u32>(~(~global0.b.x), ~_wgslsmith_div_u32(arg_0.b, arg_0.b), 4294967295u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a.wwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1670f, 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(243f, 1745f))))), any(!arg_0.c) | !(!(arg_0.c.x | true))));
    return _wgslsmith_add_u32(~global0.b.x, _wgslsmith_mod_u32(arg_0.b, global0.b.x & 57264u));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-828f, 895f, 1074f, -716f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-192f, 1000f, -3097f, -204f))))))), arg_0.x, vec4<bool>(!(-u_input.a > ~(-31497i)), global0.a, (46697u << (_wgslsmith_mod_u32(0u, 20203u) % 32u)) <= _wgslsmith_clamp_u32(1u, ~arg_0.x, func_3(Struct_1(vec4<f32>(1220f, 761f, 629f, -2003f), arg_0.x, vec4<bool>(true, false, true, false)), 292f)), true));
    global0 = Struct_4(true, select(max(global0.b, select(global0.b | global0.b, ~global0.b, var_0.c.x)), global0.b, all(var_0.c.zw)));
    let var_1 = firstLeadingBit(u_input.a);
    var var_2 = Struct_1(var_0.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(select(firstLeadingBit(3579u), arg_0.x, global0.a), ~13357u, _wgslsmith_add_u32(~4294967295u, _wgslsmith_add_u32(global0.b.x, 68930u))), 0u), vec4<bool>(true, all(!var_0.c), !var_0.c.x, !(!any(vec4<bool>(var_0.c.x, true, true, false)))));
    return Struct_2(Struct_1(var_2.a, ~global0.b.x, !vec4<bool>(any(var_2.c.wxw), var_0.c.x == false, !global0.a, var_0.c.x)), all(var_2.c.yw), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-149f)), -1639f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(exp2(var_2.a.x)))), 4294967295u, var_2.c), Struct_1(var_2.a, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.b.x, var_0.b, 33662u, 13408u)), vec4<u32>(40848u, 49096u, var_0.b, 1u)), select(vec4<bool>(var_2.c.x, select(global0.a, false, global0.a), select(var_2.c.x, var_0.c.x, false), var_2.c.x), select(!vec4<bool>(false, true, var_0.c.x, var_0.c.x), select(var_0.c, vec4<bool>(false, global0.a, false, var_2.c.x), false), all(vec3<bool>(global0.a, global0.a, false))), select(vec4<bool>(var_2.c.x, false, false, false), vec4<bool>(false, false, var_2.c.x, false), true))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(arg_2.c.c.zw, arg_2.a.c.zzz, countOneBits(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a) << (global0.b.xy % vec2<u32>(32u)), vec2<i32>(1i, u_input.a)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -65911i), vec2<i32>(-1607i, -37518i))), arg_1.a.c.x)), func_2(~(~(~global0.b.xy))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.d.c.a * arg_2.d.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-858f, var_0.d.c.a.x, -252f, -419f))), arg_1.c.b < 16094u)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-771f, 1185f) - _wgslsmith_div_f32(var_0.d.a.a.x, 1027f)), arg_2.a.a.x, var_0.d.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.d.a.x)))), _wgslsmith_dot_vec4_u32(~abs(reverseBits(vec4<u32>(0u, arg_1.a.b, 4294967295u, arg_2.c.b))), vec4<u32>(~arg_3, _wgslsmith_sub_u32(firstLeadingBit(64079u), global0.b.x), _wgslsmith_div_u32(select(10476u, 1u, global0.a), global0.b.x), 4294967295u)), !vec4<bool>(!select(global0.a, false, arg_1.a.c.x), !(var_0.d.a.b >= 0u), arg_0 <= _wgslsmith_f_op_f32(-arg_0), u_input.a != var_0.c.x));
    global0 = Struct_4(_wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(647f)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1131f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.a.a.x, var_1.a.x) * _wgslsmith_f_op_f32(select(1011f, 805f, arg_2.c.c.x)))), firstTrailingBit(firstLeadingBit(vec3<u32>(~var_0.d.c.b, _wgslsmith_clamp_u32(arg_2.a.b, 0u, var_0.d.a.b), arg_3))));
    let var_2 = Struct_4(any(vec3<bool>(true, max(1u, 3400u) > arg_3, true)), select(global0.b, min(global0.b, ~firstLeadingBit(global0.b)), true));
    var var_3 = vec3<i32>(reverseBits(~min(var_0.c.x, -19683i)), _wgslsmith_div_i32(~(-var_0.c.x), 1i), _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(-62828i, -6544i), -51320i)));
    return func_2(vec2<u32>(arg_2.a.b, global0.b.x)).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> f32 {
    global0 = Struct_4(any(arg_1.b), ~(vec3<u32>(func_4(-243f, Struct_2(Struct_1(vec4<f32>(-377f, arg_0.a.x, 1260f, 1620f), arg_3.c.b, arg_1.d.c.c), false, Struct_1(vec4<f32>(2241f, arg_2, -356f, arg_1.d.d.a.x), arg_1.d.d.b, vec4<bool>(global0.a, false, global0.a, arg_1.b.x)), arg_1.d.d), arg_1.d, global0.b.x).b, _wgslsmith_mult_u32(0u, arg_3.d.b), ~4294967295u) | ~(~global0.b)));
    let var_0 = Struct_4(global0.a, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(arg_0.b & global0.b.x, arg_0.b, 34610u)), _wgslsmith_sub_vec3_u32(vec3<u32>(26431u, ~arg_3.d.b, arg_3.a.b), vec3<u32>(arg_0.b, ~32988u, 75596u))));
    global0 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1467f, _wgslsmith_f_op_f32(-arg_3.a.a.x), func_4(-1733f, Struct_2(arg_3.c, arg_3.b, arg_3.d, arg_1.d.c), arg_1.d, 47990u).c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - -992f), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(trunc(-1090f)))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = Struct_4(global0.a, global0.b);
    global0 = Struct_4(!(!(!func_4(arg_2.x, Struct_2(Struct_1(vec4<f32>(arg_2.x, 1601f, arg_2.x, arg_2.x), global0.b.x, vec4<bool>(global0.a, true, global0.a, global0.a)), false, Struct_1(vec4<f32>(arg_2.x, arg_2.x, -377f, arg_1.x), 18515u, vec4<bool>(global0.a, global0.a, true, global0.a)), Struct_1(vec4<f32>(-1892f, arg_2.x, arg_1.x, -411f), 1u, vec4<bool>(global0.a, false, global0.a, true))), Struct_2(Struct_1(vec4<f32>(-1230f, -2936f, 989f, 1000f), 58663u, vec4<bool>(global0.a, global0.a, global0.a, false)), false, Struct_1(vec4<f32>(433f, 489f, arg_2.x, arg_1.x), global0.b.x, vec4<bool>(global0.a, false, global0.a, global0.a)), Struct_1(vec4<f32>(-389f, arg_1.x, -701f, 679f), 0u, vec4<bool>(global0.a, global0.a, false, global0.a))), 70125u).c.x)), ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global0.b, global0.b), abs(global0.b))));
    let var_0 = ~(-5486i);
    var var_1 = Struct_4(true, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 0u, global0.b.x) << (vec4<u32>(23684u, global0.b.x, global0.b.x, global0.b.x) % vec4<u32>(32u)), ~vec4<u32>(1u, global0.b.x, 0u, global0.b.x)) >> (45568u % 32u), ~firstLeadingBit(15479u), global0.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1148f, func_4(1000f, func_2(var_1.b.xy), func_2(vec2<u32>(global0.b.x, 78177u)), global0.b.x).a.x, _wgslsmith_f_op_f32(-964f * arg_2.x), _wgslsmith_div_f32(805f, arg_1.x))));
    return func_2(vec2<u32>(select(1u, 1u, true), countOneBits(global0.b.x) | countOneBits(var_1.b.x)) << (~(~var_1.b.zx) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = func_6(~select(-vec2<i32>(u_input.a, u_input.a), ~(-vec2<i32>(-1i, -7089i)), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -456f))) * 201f), _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(1000f - 2637f), func_2(arg_0.b.xz), func_2(global0.b.xx), _wgslsmith_mod_u32(arg_0.b.x, 1u)), Struct_3(func_2(vec2<u32>(arg_0.b.x, 35297u)).a.c.zw, vec3<bool>(false, arg_0.a, false), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(23468i, u_input.a)), func_2(vec2<u32>(4294967295u, 1u))), _wgslsmith_f_op_f32(floor(841f)), func_2(~global0.b.xx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-288f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f + 1715f) * _wgslsmith_f_op_f32(max(-2233f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(152f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1889f + 1000f), -2329f)), -1352f));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(var_0.d.a, _wgslsmith_f_op_vec4_f32(var_0.d.a + var_0.d.a), var_0.c.c.x)), _wgslsmith_mult_u32(1u, 4294967295u), vec4<bool>(arg_0.a, false, true && any(vec2<bool>(true, arg_0.a)), all(var_0.d.c.xy))), false && arg_0.a, var_0.c, Struct_1(var_0.c.a, _wgslsmith_div_u32(34587u, 36761u), !(!vec4<bool>(false, arg_0.a, false, var_0.d.c.x))));
    global0 = Struct_4(global0.a, reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(arg_0.b), arg_0.b | arg_0.b), arg_0.b)));
    var_0 = func_2(vec2<u32>(_wgslsmith_div_u32(1u, ~func_6(vec2<i32>(2147483647i, u_input.a), vec3<f32>(1488f, 689f, 934f), vec3<f32>(1409f, 400f, 366f)).d.b), 4294967295u));
    var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(599f, var_0.d.a.x, -120f, -929f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(859f, var_0.a.a.x, -282f, -592f) + vec4<f32>(-870f, var_0.c.a.x, var_0.d.a.x, var_0.d.a.x))), var_0.c.a), ~var_0.c.b, func_6(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.a, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -2147483647i), vec2<i32>(2147483647i, 0i))), var_0.c.a.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a.wwx + vec3<f32>(-1000f, -158f, var_0.a.a.x)))).c.c), true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_0.c.a.x, _wgslsmith_f_op_f32(floor(1388f)), _wgslsmith_f_op_f32(func_5(Struct_1(vec4<f32>(174f, var_0.d.a.x, 1375f, -442f), arg_0.b.x, vec4<bool>(global0.a, false, true, var_0.a.c.x)), Struct_3(var_0.a.c.yy, var_0.a.c.zwx, vec2<i32>(2147483647i, 1i), Struct_2(var_0.d, var_0.d.c.x, var_0.c, var_0.d)), var_0.a.a.x, Struct_2(Struct_1(var_0.c.a, 0u, var_0.a.c), false, var_0.c, Struct_1(vec4<f32>(var_0.d.a.x, 452f, var_0.a.a.x, var_0.d.a.x), var_0.a.b, var_0.a.c)))))), global0.b.x, !var_0.d.c), Struct_1(func_2(arg_0.b.yy).c.a, 34580u, func_6(vec2<i32>(~(-1i), -u_input.a), vec3<f32>(_wgslsmith_f_op_f32(364f + var_0.c.a.x), _wgslsmith_f_op_f32(-276f + var_0.d.a.x), var_0.c.a.x), vec3<f32>(100f, _wgslsmith_f_op_f32(-var_0.a.a.x), var_0.a.a.x)).c.c));
    return !func_2(~_wgslsmith_clamp_vec2_u32(arg_0.b.yy, ~arg_0.b.yx, _wgslsmith_sub_vec2_u32(global0.b.yz, vec2<u32>(global0.b.x, var_0.c.b)))).a.c.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(u_input.a < _wgslsmith_div_i32(1i, -2147483647i), global0.a), select(vec3<bool>(false, false, 31329u >= global0.b.x), func_1(Struct_4(global0.a != global0.a, global0.b)), vec3<bool>(any(select(vec4<bool>(false, false, global0.a, true), vec4<bool>(global0.a, global0.a, false, true), global0.a)), any(func_4(773f, Struct_2(Struct_1(vec4<f32>(-1723f, 512f, -424f, 885f), 0u, vec4<bool>(global0.a, global0.a, false, global0.a)), false, Struct_1(vec4<f32>(887f, -565f, 1792f, 254f), global0.b.x, vec4<bool>(global0.a, true, true, false)), Struct_1(vec4<f32>(-436f, -1335f, -1000f, -857f), global0.b.x, vec4<bool>(global0.a, true, global0.a, global0.a))), Struct_2(Struct_1(vec4<f32>(908f, 1000f, -1000f, -1000f), global0.b.x, vec4<bool>(false, global0.a, false, false)), false, Struct_1(vec4<f32>(-416f, 1000f, -291f, 415f), global0.b.x, vec4<bool>(global0.a, false, global0.a, true)), Struct_1(vec4<f32>(455f, 270f, -337f, 895f), global0.b.x, vec4<bool>(false, false, true, false))), global0.b.x).c), false)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(select(countOneBits(vec2<i32>(0i, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -5924i), vec2<i32>(-1i, 2147483647i)), !vec2<bool>(global0.a, false)), ~vec2<i32>(u_input.a, u_input.a)), vec2<i32>((u_input.a >> (1u % 32u)) << (max(global0.b.x, global0.b.x) % 32u), 47995i)), func_6(vec2<i32>(-u_input.a, _wgslsmith_clamp_i32(reverseBits(u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a), -1i)), vec3<f32>(func_4(_wgslsmith_f_op_f32(step(-248f, -1984f)), func_2(global0.b.yx), func_2(global0.b.xy), firstTrailingBit(19830u)).a.x, -617f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 399f), -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(282f, 589f, 749f) + vec3<f32>(-1000f, -562f, -171f))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1815f, -659f, 1478f), vec3<f32>(1895f, -131f, -2720f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(886f, -597f, 293f)))))));
    global0 = Struct_4(!(!var_0.b.x), ~_wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(var_0.d.d.b, global0.b.x, global0.b.x)), global0.b, select(~vec3<u32>(var_0.d.c.b, 4294967295u, global0.b.x), global0.b, !var_0.d.a.c.x)));
    let var_1 = global0.b.x;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(1505f, var_0.d, var_0.d, 18804u).a.x)) * 527f)));
    let var_3 = ~firstLeadingBit(global0.b);
    let var_4 = countOneBits(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~vec2<i32>(~var_0.c.x, -31265i), -vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(-2147483647i, u_input.a)), u_input.a)), func_4(-972f, var_0.d, func_2(vec2<u32>(global0.b.x, max(1u, 72548u))), ~(var_4 ^ _wgslsmith_sub_u32(var_3.x, var_3.x))).a.x, -var_0.c.x, _wgslsmith_f_op_vec4_f32(var_0.d.d.a - vec4<f32>(_wgslsmith_div_f32(1666f, func_2(vec2<u32>(var_4, var_4)).d.a.x), -1000f, _wgslsmith_f_op_f32(step(func_2(vec2<u32>(global0.b.x, var_0.d.a.b)).c.a.x, var_2)), _wgslsmith_f_op_f32(-818f + -1924f))), countOneBits(vec2<u32>(~var_4 >> (4294967295u % 32u), ~var_3.x)));
}

