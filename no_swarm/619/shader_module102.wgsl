struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-901f, -368f, -168f), vec3<f32>(-697f, 203f, 126f), vec3<f32>(-501f, 353f, 120f), vec3<f32>(-1000f, 211f, -603f), vec3<f32>(-1568f, -852f, 2394f), vec3<f32>(-938f, -1000f, 738f), vec3<f32>(364f, -404f, -157f), vec3<f32>(620f, -210f, -511f), vec3<f32>(-1072f, 1000f, 102f), vec3<f32>(441f, 1000f, -856f), vec3<f32>(-466f, -422f, -934f), vec3<f32>(1550f, -1755f, 1166f), vec3<f32>(-749f, 184f, -962f), vec3<f32>(1000f, 1133f, -845f), vec3<f32>(812f, -1692f, 123f), vec3<f32>(-1212f, -317f, 632f), vec3<f32>(-2139f, -674f, 844f), vec3<f32>(532f, 596f, -1000f), vec3<f32>(-1000f, -1541f, 1114f), vec3<f32>(-417f, 335f, 1258f), vec3<f32>(-573f, 882f, 1180f), vec3<f32>(1203f, 499f, -234f), vec3<f32>(1043f, -606f, 358f));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -80029i), vec2<i32>(0i, 38140i), vec2<i32>(i32(-2147483648), 17817i), vec2<i32>(1i, -2119i), vec2<i32>(0i, 1i), vec2<i32>(12955i, 0i), vec2<i32>(-2630i, 30542i), vec2<i32>(-9204i, -9005i), vec2<i32>(-21644i, 0i), vec2<i32>(-12241i, -31081i), vec2<i32>(-1530i, -1i), vec2<i32>(-7241i, -1i), vec2<i32>(-13752i, 51689i), vec2<i32>(40864i, -28667i), vec2<i32>(2147483647i, 1i), vec2<i32>(-15072i, i32(-2147483648)), vec2<i32>(-16065i, -36358i), vec2<i32>(0i, -1601i), vec2<i32>(40683i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    global0 = array<vec3<f32>, 23>();
    var var_0 = Struct_4(Struct_3(arg_3, _wgslsmith_dot_vec3_u32(~arg_0, reverseBits(arg_0) | arg_0), arg_1.d.d, arg_3.a.x), arg_3.b.zx, Struct_3(arg_1.d, ~41698u, ~(~1u) << (abs(1u) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b.e.x, _wgslsmith_f_op_f32(691f * arg_1.d.e.x)), _wgslsmith_f_op_f32(-181f + arg_3.e.x)))), arg_1);
    var_0 = Struct_4(var_0.a, vec2<bool>(true, !select(false, var_0.b.x, true)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_3.e, vec4<f32>(arg_1.d.a.x, arg_3.a.x, -421f, var_0.d.d.a.x)))), arg_3.c, vec3<bool>(!arg_1.d.b.x, true, arg_1.b.c.x && false), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.b.a.x), _wgslsmith_f_op_f32(floor(856f)), -264f, 1818f)), u_input.a.x, 3291u, -1758f), arg_1);
    global1 = array<vec2<i32>, 20>();
    let var_1 = var_0.a;
    return all(arg_1.b.b);
}

fn func_2() -> vec4<u32> {
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true)), !(u_input.c.x == u_input.c.x), func_3(~vec3<u32>(u_input.b.x, 66612u, u_input.b.x), Struct_2(vec2<u32>(u_input.b.x, u_input.a.x), Struct_1(vec4<f32>(737f, -891f, 874f, -449f), vec3<bool>(true, false, false), vec3<bool>(true, true, true), 1u, vec4<f32>(2218f, -754f, -238f, -734f)), u_input.c.x, Struct_1(vec4<f32>(117f, 404f, 471f, 1046f), vec3<bool>(true, true, false), vec3<bool>(true, false, true), u_input.a.x, vec4<f32>(788f, 520f, -976f, 1019f)), u_input.c.xwy), vec2<bool>(true, true), Struct_1(vec4<f32>(-2479f, -564f, -441f, -585f), vec3<bool>(true, false, true), vec3<bool>(true, true, true), u_input.b.x, vec4<f32>(-1631f, -147f, 1814f, 360f)))), vec4<bool>(true, true, true, true)), !vec4<bool>(true, false, select(false, u_input.a.x > u_input.b.x, true), true), u_input.a.x == (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & (u_input.b.x ^ _wgslsmith_clamp_u32(0u, 4415u, 4294967295u))));
    global1 = array<vec2<i32>, 20>();
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(727f, -1606f)), -706f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -512f)), !vec3<bool>(true, func_3(vec3<u32>(1u, u_input.b.x, 27035u), Struct_2(vec2<u32>(0u, u_input.a.x), Struct_1(vec4<f32>(-156f, 993f, 160f, 1112f), var_0.www, var_0.xzy, u_input.a.x, vec4<f32>(-525f, 827f, 488f, 856f)), u_input.c.x, Struct_1(vec4<f32>(435f, -356f, 301f, -143f), vec3<bool>(var_0.x, false, var_0.x), var_0.wxx, u_input.a.x, vec4<f32>(-416f, 705f, -2223f, 1816f)), vec3<i32>(-2147483647i, 1i, 33070i)), var_0.ww, Struct_1(vec4<f32>(176f, 346f, -1816f, -2392f), vec3<bool>(var_0.x, var_0.x, true), var_0.zwz, 1u, vec4<f32>(896f, -197f, -160f, 382f))), var_0.x), var_0.zzy, _wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 67496u, 27657u, u_input.a.x)), u_input.a.x), 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(605f, 415f, 1223f, 1000f), vec4<f32>(450f, -1076f, 1473f, -1811f), false))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(803f, -2198f, 267f, 1000f), vec4<f32>(1120f, -831f, 1462f, 587f)) - vec4<f32>(-163f, -2273f, -1000f, 610f)))), ~4294967295u, u_input.b.x, -1119f);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a - var_1.a.e)), vec3<bool>(!var_0.x, true, all(vec2<bool>(var_0.x, false))), !var_0.yzx, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.a.a, _wgslsmith_f_op_vec4_f32(var_1.a.a * vec4<f32>(var_1.d, var_1.a.a.x, var_1.d, 655f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.e - vec4<f32>(var_1.a.e.x, -162f, var_1.d, var_1.d))))), 0u, _wgslsmith_mod_u32(0u, var_1.c), var_1.d);
    var var_3 = vec4<f32>(-227f, var_1.a.e.x, var_1.a.a.x, -739f);
    return ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, ~(vec4<u32>(u_input.a.x, 2486u, 50318u, var_2.b) | vec4<u32>(4294967295u, 108091u, 46486u, 1u))), ~vec4<u32>(var_1.c, 11005u, _wgslsmith_sub_u32(4294967295u, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.a.d, 4294967295u), u_input.b.wzz)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    global1 = array<vec2<i32>, 20>();
    var var_0 = ~(_wgslsmith_mult_vec4_u32(max(u_input.a & u_input.a, vec4<u32>(u_input.b.x, u_input.b.x, 0u, 56436u)), func_2()) ^ (func_2() << (u_input.a % vec4<u32>(32u))));
    var var_1 = ~vec2<i32>(0i, max(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), global1[_wgslsmith_index_u32(4294967295u, 20u)]), ~u_input.c.x)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, -131f)))) * 1f) - 1000f)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(2052f - 1807f), select(false, false, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f * var_2))) * _wgslsmith_div_f32(_wgslsmith_div_f32(278f, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(f32(-1f) * -2042f));
    return min(_wgslsmith_dot_vec2_u32(~(arg_1 & vec2<u32>(arg_1.x, arg_1.x)) << ((firstLeadingBit(arg_1) & var_0.xw) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(var_0.zw, max(vec2<u32>(var_0.x, arg_1.x), var_0.yw)) << (vec2<u32>(arg_0, ~3392u) % vec2<u32>(32u))), ~firstLeadingBit(firstLeadingBit(arg_0)) | ~(~var_0.x >> (~4294967295u % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = reverseBits(u_input.c.zzx);
    global0 = array<vec3<f32>, 23>();
    global1 = array<vec2<i32>, 20>();
    var var_1 = ~min(~u_input.b, u_input.b);
    var var_2 = any(!(!select(select(vec4<bool>(true, arg_3.e.a.c.x, false, arg_3.d.b.x), vec4<bool>(arg_3.d.c.x, arg_3.d.b.x, false, true), vec4<bool>(arg_3.d.c.x, false, false, false)), select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.b.x, arg_3.d.c.x), vec4<bool>(true, false, true, false), arg_0.b.x), arg_3.a)));
    return -16137i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2233f)))));
    var var_1 = var_0.x;
    global0 = array<vec3<f32>, 23>();
    let var_2 = vec3<i32>(u_input.c.x ^ min(46564i, firstTrailingBit(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(13238u, 20u)], u_input.c.yz))), ~func_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 759f, var_0.x, 278f))), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), func_1(u_input.b.x, u_input.b.yz), vec4<f32>(var_0.x, -1250f, -1000f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1273f))), u_input.c.zwy, Struct_5(any(vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<f32>(-510f, -908f, 1000f, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.b.x, vec4<f32>(var_0.x, 229f, -340f, -738f)), 58858u, u_input.b.x, 964f), vec4<f32>(558f, var_0.x, -317f, 1864f), Struct_1(vec4<f32>(1557f, var_0.x, -342f, var_0.x), vec3<bool>(false, true, false), vec3<bool>(true, false, true), 76121u, vec4<f32>(var_0.x, 279f, var_0.x, 1238f)), Struct_3(Struct_1(vec4<f32>(var_0.x, 1138f, var_0.x, var_0.x), vec3<bool>(false, true, false), vec3<bool>(false, true, false), 0u, vec4<f32>(-463f, var_0.x, -2820f, var_0.x)), 43203u, 4294967295u, var_0.x))), u_input.c.x);
    let var_3 = Struct_5(all(vec3<bool>(true, _wgslsmith_f_op_f32(-var_0.x) > -312f, false)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -593f, var_0.x))), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), min(0u, 53094u << (0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), 129f, _wgslsmith_f_op_f32(var_0.x + var_0.x))), u_input.b.x, 4294967295u, var_0.x), vec4<f32>(734f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(1491f + var_0.x))), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_div_f32(_wgslsmith_div_f32(282f, var_0.x), _wgslsmith_f_op_f32(var_0.x - 192f))), _wgslsmith_f_op_f32(1212f * var_0.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -275f), _wgslsmith_f_op_f32(floor(var_0.x)))), var_0.x, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(floor(var_0.x))))), vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec3<bool>(true, true, true), 1813u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -510f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 307f, -2115f, var_0.x))))))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -828f, var_0.x, var_0.x))), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(u_input.a.zxy, Struct_2(vec2<u32>(u_input.b.x, u_input.a.x), Struct_1(vec4<f32>(var_0.x, -1320f, var_0.x, var_0.x), vec3<bool>(false, false, true), vec3<bool>(false, true, false), u_input.a.x, vec4<f32>(var_0.x, var_0.x, var_0.x, 769f)), u_input.c.x, Struct_1(vec4<f32>(var_0.x, var_0.x, 1000f, 1307f), vec3<bool>(true, true, false), vec3<bool>(false, true, true), u_input.a.x, vec4<f32>(var_0.x, var_0.x, -877f, var_0.x)), var_2), vec2<bool>(true, true), Struct_1(vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x), vec3<bool>(false, false, true), vec3<bool>(false, true, true), 0u, vec4<f32>(var_0.x, var_0.x, -714f, 1122f)))), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 1591f, -1118f)))))), u_input.b.x, 0u, _wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0), select(vec2<u32>(var_3.b.a.d, _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(u_input.a, u_input.b))), vec2<u32>(4294967295u, ~1u), vec2<bool>(true, false)));
}

