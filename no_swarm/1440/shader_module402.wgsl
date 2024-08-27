struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = countOneBits(firstTrailingBit(select(vec4<u32>(arg_0.e.a, 78740u, 3204u, arg_1.x), arg_0.a.d, true))) ^ firstLeadingBit(_wgslsmith_sub_vec4_u32(~min(vec4<u32>(1u, 1u, arg_1.x, 14587u), vec4<u32>(1258u, arg_1.x, arg_1.x, 4294967295u)), arg_0.a.d));
    let var_1 = Struct_5(Struct_3(select(select(select(vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x), arg_0.a.a, false), arg_0.a.a, arg_0.d <= arg_0.d), select(arg_0.a.a, !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.c.x, true), vec4<bool>(arg_0.c.x, true, arg_0.a.a.x, arg_0.a.a.x)), false), arg_0.a.c, Struct_1(max(-vec4<i32>(26717i, -26916i, 20520i, -13178i), firstTrailingBit(vec4<i32>(arg_0.b, 0i, arg_0.b, u_input.b))), 24621u), ~(~(~vec4<u32>(var_0.x, 3496u, 60141u, 86714u))), Struct_1(_wgslsmith_sub_vec4_i32(arg_0.a.e.a, arg_0.a.e.a >> (vec4<u32>(0u, arg_1.x, 30387u, 1u) % vec4<u32>(32u))), arg_1.x)), vec2<f32>(-1000f, -148f), _wgslsmith_add_i32(arg_0.b, u_input.a.x) << (_wgslsmith_mod_u32(1399u, _wgslsmith_div_u32(~arg_1.x, _wgslsmith_mod_u32(arg_1.x, var_0.x))) % 32u), arg_0.a.c, arg_0.a.a.x & true);
    let var_2 = var_1;
    var var_3 = arg_0.e;
    var var_4 = all(!select(select(vec4<bool>(true, false, var_1.e, true), select(vec4<bool>(true, var_2.a.a.x, arg_0.c.x, true), vec4<bool>(var_2.a.a.x, var_1.e, true, var_2.e), var_1.a.a.x), vec4<bool>(var_2.a.a.x, var_2.e, false, arg_0.c.x)), vec4<bool>(var_3.a < 68563u, false || var_1.a.a.x, var_1.a.a.x || true, true), vec4<bool>(var_2.a.a.x, !var_2.a.a.x, arg_0.d < -203f, true)));
    return !vec4<bool>(all(vec4<bool>(any(arg_0.a.a.xwz), !arg_0.c.x, true, all(var_1.a.a))), !any(select(var_2.a.a.ywz, vec3<bool>(false, var_1.a.a.x, var_1.a.a.x), var_1.e)), var_2.a.a.x, var_1.a.a.x & var_2.e);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    let var_0 = arg_1.b.b;
    var var_1 = Struct_4(arg_1, -max(0i, -1i), select(!func_3(Struct_4(Struct_3(arg_1.a, Struct_1(arg_1.b.a, arg_1.c.b), arg_1.b, vec4<u32>(1u, 4294967295u, 1u, var_0), arg_1.b), arg_0, vec2<bool>(arg_1.a.x, arg_1.a.x), -903f, Struct_2(4294967295u)), vec2<u32>(4294967295u, 36884u) ^ vec2<u32>(var_0, var_0)).wz, vec2<bool>(true, true && (arg_1.a.x & arg_1.a.x)), arg_1.a.x), arg_3, Struct_2(var_0));
    global0 = ~68645u;
    var_1 = Struct_4(var_1.a, select(~arg_1.b.a.x, u_input.d, true), select(var_1.c, arg_1.a.zw, var_1.c), -198f, Struct_2(~35349u));
    var_1 = Struct_4(arg_1, -2147483647i, !vec2<bool>(var_1.c.x, (var_1.a.d.x <= var_0) && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - -1974f)), Struct_2(var_1.e.a));
    return abs(1u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_2(func_4(reverseBits(_wgslsmith_mod_i32(arg_3, 1i)), Struct_3(func_3(Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec4<i32>(arg_3, 7551i, arg_1, u_input.a.x), arg_0), Struct_1(vec4<i32>(-27813i, 14545i, arg_3, -2147483647i), 26646u), vec4<u32>(47714u, 0u, 0u, 2846u), Struct_1(vec4<i32>(0i, -27722i, arg_3, u_input.c.x), 40857u)), u_input.a.x, vec2<bool>(false, true), -1241f, Struct_2(0u)), arg_2.zx), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, -2147483647i, 1i, u_input.b), vec4<i32>(u_input.b, arg_1, 0i, arg_3), vec4<i32>(-12218i, arg_1, 0i, arg_3)), 30022u), Struct_1(-vec4<i32>(u_input.c.x, 45099i, 2147483647i, arg_1), ~arg_2.x), vec4<u32>(0u, 3013u >> (arg_0 % 32u), _wgslsmith_mult_u32(arg_2.x, 71694u), ~arg_0), Struct_1(-vec4<i32>(arg_3, -2147483647i, 1i, -2147483647i), 65192u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 516f) + vec2<f32>(345f, 751f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(174f * -1000f))))));
    var var_1 = Struct_3(select(vec4<bool>(true, func_3(Struct_4(Struct_3(vec4<bool>(false, false, true, false), Struct_1(vec4<i32>(-2147483647i, arg_1, -1i, arg_3), 0u), Struct_1(vec4<i32>(1i, 97629i, 0i, arg_1), 11880u), vec4<u32>(0u, 64848u, 0u, var_0.a), Struct_1(vec4<i32>(0i, arg_1, 34924i, arg_1), arg_0)), 0i, vec2<bool>(false, false), -239f, Struct_2(50898u)), arg_2.yx).x, all(func_3(Struct_4(Struct_3(vec4<bool>(false, true, true, false), Struct_1(vec4<i32>(arg_1, 1i, arg_1, -57762i), 0u), Struct_1(vec4<i32>(arg_3, u_input.b, arg_3, -10529i), arg_0), vec4<u32>(29849u, 23595u, 27348u, var_0.a), Struct_1(vec4<i32>(arg_3, -4098i, -1i, arg_1), arg_0)), arg_1, vec2<bool>(true, true), 1685f, Struct_2(arg_0)), arg_2.zx).wz), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), Struct_1(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(arg_3, 0i, 12573i, arg_1), vec4<i32>(-46726i, arg_3, -32185i, arg_1)), vec4<i32>(64468i, -1i, arg_1, 576i)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), select(vec4<u32>(var_0.a, 0u, 4294967295u, arg_0), vec4<u32>(arg_0, 33101u, var_0.a, arg_2.x), false)), ~vec4<u32>(49586u, 8334u, arg_2.x, arg_0) & (vec4<u32>(arg_0, var_0.a, var_0.a, arg_2.x) | vec4<u32>(arg_2.x, 1577u, 47765u, arg_0)))), Struct_1(vec4<i32>(~31032i >> (arg_0 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, u_input.b), vec3<i32>(-1i, arg_1, -50536i)), _wgslsmith_div_i32(arg_3, u_input.c.x), _wgslsmith_div_i32(max(-1i, -43696i), u_input.c.x)), 31081u), ~vec4<u32>(arg_2.x, 0u, 17873u, _wgslsmith_dot_vec2_u32(arg_2.zz, vec2<u32>(arg_0, 0u))), Struct_1(vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(0i, arg_1)), u_input.d, arg_1, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_3, 2147483647i, 2147483647i, -20367i), vec4<i32>(arg_1, -1i, arg_3, arg_3), true), -vec4<i32>(47801i, -2147483647i, 37760i, arg_3))), func_4(11355i, Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), Struct_1(vec4<i32>(arg_3, -16034i, u_input.c.x, 2147483647i), 4294967295u), Struct_1(vec4<i32>(1i, 58513i, 37978i, 27800i), 0u), vec4<u32>(1u, 1u, 22318u, arg_0), Struct_1(vec4<i32>(-1i, -19341i, -48551i, arg_3), 2838u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1020f, -148f)), vec2<f32>(1288f, -684f), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), 1f)));
    var var_2 = !any(var_1.a.zz);
    var var_3 = var_1.b;
    let var_4 = ~vec4<i32>(max(select(select(var_1.c.a.x, 0i, var_1.a.x), 2147483647i, !var_1.a.x), ~1i), var_3.a.x << (_wgslsmith_div_u32(1u, 1u) % 32u), ~41394i, -11176i);
    return Struct_2(_wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(var_0.a, arg_0)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = Struct_4(arg_2.a, -firstTrailingBit(select(arg_2.a.e.a.x ^ 48134i, abs(arg_0), true)), select(select(arg_2.c, select(vec2<bool>(arg_2.c.x, arg_2.a.a.x), !arg_2.c, select(arg_2.c, arg_2.c, arg_2.c)), select(arg_2.e.a < 22124u, true, any(arg_2.a.a))), arg_2.a.a.xx, arg_2.a.a.x), 453f, func_2(1u, -arg_1, ~(~select(arg_2.a.d.zyz, vec3<u32>(36203u, 1u, 0u), arg_2.a.a.yzz)), _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(arg_1, -2147483647i)))));
    var var_1 = 1u;
    return ~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.a.e.a.zy, arg_2.a.c.a.wy), vec2<i32>(i32(-1i) * -5815i, arg_0)), ~arg_2.a.c.a.x, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a.x | ~abs(select(u_input.a.x, -56631i, true)), -2147483647i, -(~u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.c, func_1(~u_input.c.x, -1i, Struct_4(Struct_3(vec4<bool>(false, false, false, false), Struct_1(vec4<i32>(u_input.c.x, 28387i, 0i, u_input.c.x), 14639u), Struct_1(vec4<i32>(1i, u_input.c.x, u_input.c.x, 12247i), 48196u), vec4<u32>(4294967295u, 47177u, 0u, 8908u), Struct_1(vec4<i32>(u_input.c.x, u_input.b, -10871i, -2147483647i), 1u)), u_input.d, vec2<bool>(false, true), 1420f, Struct_2(511u))) ^ u_input.c));
    let var_1 = abs(reverseBits(-countOneBits(vec4<i32>(var_0.x, 0i, -2147483647i, var_0.x))));
    global0 = ~(~57305u) ^ ~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_mult_u32(func_2(3635u, u_input.a.x, vec3<u32>(0u, 25702u, 4294967295u), 15103i).a, countOneBits(1u)), ~(0u << (1u % 32u)));
    var var_2 = i32(-1i) * -58089i;
    var var_3 = Struct_1(~select(countOneBits(vec4<i32>(2468i, 0i, var_0.x, -38169i)), vec4<i32>(_wgslsmith_clamp_i32(-1i, 1i, var_0.x), u_input.c.x, 1i, _wgslsmith_mod_i32(var_1.x, -1i)), vec4<bool>(true, true, true, true)), 49540u);
    var var_4 = ~(~(~(~(vec2<u32>(23240u, 13640u) << (vec2<u32>(var_3.b, 1u) % vec2<u32>(32u))))));
    let var_5 = Struct_3(vec4<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(-1351f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2816f))), !(any(vec2<bool>(false, false)) == true), true), Struct_1(firstLeadingBit(firstLeadingBit(max(var_1, var_1))), var_3.b), Struct_1(var_1 << (vec4<u32>(0u, var_4.x, min(4294967295u, 4294967295u), _wgslsmith_sub_u32(var_4.x, 66711u)) % vec4<u32>(32u)), var_3.b << (~(~var_3.b) % 32u)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.b, 4294967295u, var_3.b, 75914u), vec4<u32>(var_3.b, 0u, var_3.b, var_4.x), vec4<u32>(var_3.b, 18394u, var_3.b, 78021u)))), Struct_1(countOneBits(-var_1), var_4.x));
    var var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(360f - _wgslsmith_f_op_f32(405f - 205f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1668f + -1087f))))), -640f));
    var var_7 = vec4<bool>(false, !(!(true | var_5.a.x)), var_5.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~var_5.d.xxy, ~vec3<u32>(var_5.b.b, var_5.c.b, 1u)), var_5.d.yzz) == 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2297f, 672f, 1176f, -475f) * vec4<f32>(-1115f, -330f, 488f, 699f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, 1120f, 192f, 1255f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, 1330f, 678f, 1126f))))));
}

