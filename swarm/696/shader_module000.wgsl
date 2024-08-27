struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 323f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> vec2<f32> {
    var var_0 = Struct_2(arg_0.e, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d, abs(~u_input.a), arg_0.b), min(firstTrailingBit(~vec3<u32>(arg_0.d, 57315u, u_input.a)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 10567u, arg_0.d), vec3<u32>(arg_0.d, u_input.a, 105282u)))));
    global0 = var_0.a.d.x;
    var var_1 = vec3<u32>(arg_0.d, ~6603u, u_input.a);
    let var_2 = Struct_1(abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, var_0.a.a.x, u_input.d), ~vec3<i32>(arg_0.c, 1i, arg_0.e.a.x))), var_0.a.b, !(!any(vec3<bool>(arg_0.e.c, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1379f, arg_2.x, arg_2.x), vec3<f32>(2214f, arg_2.x, -1023f)))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, -396f)) + arg_2.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + var_0.a.d.x))))), -1000f);
    return var_0.a.d.zz;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = ~(-1i);
    var_0 = abs(31i);
    var_0 = -u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(-1000f, 75643u, -12935i, 14355u, arg_0), arg_0.c, arg_0.d, 1i)))) + vec2<f32>(arg_0.d.x, 1129f)));
    var var_2 = select(select(vec3<bool>(select(true, false, true) && arg_0.b.x, true, !any(vec2<bool>(arg_0.c, arg_0.c))), vec3<bool>(u_input.d > ~arg_0.a.x, (4336u << (u_input.a % 32u)) <= 0u, any(!vec4<bool>(arg_0.c, true, arg_0.c, arg_0.b.x))), all(!select(vec2<bool>(false, false), arg_0.b, false))), select(!(!select(vec3<bool>(false, arg_0.b.x, arg_0.c), vec3<bool>(true, true, arg_0.b.x), true)), vec3<bool>(!all(vec3<bool>(false, true, false)), false, false), all(!vec4<bool>(true, arg_0.c, false, arg_0.c))), !(!select(vec3<bool>(arg_0.c, false, false), !vec3<bool>(false, true, arg_0.c), all(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true)))));
    return 1u >> (_wgslsmith_div_u32(u_input.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)))) % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec2<bool> {
    global0 = _wgslsmith_div_f32(-166f, -102f);
    var var_0 = (vec3<u32>(u_input.a, 16714u, u_input.a) | select(arg_0.b, vec3<u32>(arg_1.d, arg_0.b.x, _wgslsmith_mult_u32(85843u, arg_0.b.x)), arg_1.e.b.x)) | firstTrailingBit(vec3<u32>(arg_0.b.x, countOneBits(func_2(Struct_1(arg_1.e.a, vec2<bool>(true, arg_0.a.b.x), arg_1.e.b.x, vec3<f32>(arg_1.a, -1240f, -1001f)))), 48606u));
    var var_1 = 0u;
    global0 = -1214f;
    var var_2 = Struct_2(arg_1.e, _wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(~var_0.x, arg_0.b.x, abs(101968u)) >> (arg_0.b % vec3<u32>(32u)), select(arg_0.b, arg_0.b, true)));
    return select(select(select(!arg_1.e.b, arg_1.e.b, arg_1.e.b), select(vec2<bool>(false, !var_2.a.c), vec2<bool>(var_2.a.c, any(vec4<bool>(true, true, true, true))), arg_0.a.c), select(arg_0.a.b, vec2<bool>(var_2.a.c, false), var_2.a.b)), arg_0.a.b, !any(!(!vec3<bool>(false, arg_1.e.b.x, arg_1.e.b.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = 2690u < reverseBits(reverseBits(arg_1.x));
    var var_1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_add_i32(min(1i, u_input.c), 1i), 9771i, _wgslsmith_clamp_i32(firstTrailingBit(u_input.c), abs(-2147483647i), _wgslsmith_mod_i32(u_input.d, u_input.d))), !func_1(Struct_2(Struct_1(vec3<i32>(44178i, u_input.d, -2147483647i), vec2<bool>(true, false), arg_2.x, vec3<f32>(-1118f, 1734f, arg_0.x)), vec3<u32>(u_input.a, 4294967295u, 12926u)), Struct_3(arg_0.x, 1u, 0i, 0u, Struct_1(vec3<i32>(u_input.d, u_input.d, 14601i), vec2<bool>(arg_2.x, true), true, vec3<f32>(arg_0.x, 310f, arg_0.x))), -2147483647i, _wgslsmith_f_op_f32(-825f + -166f)), false, arg_0.zzx), arg_1.zxy);
    let var_2 = 0u;
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(~(~57418u)), ~4294967295u), 4294967295u, ~arg_1.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + _wgslsmith_f_op_f32(f32(-1f) * -312f))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2495f)), _wgslsmith_f_op_f32(-var_1.a.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1151f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_1.a.d.x + _wgslsmith_f_op_f32(-var_1.a.d.x))))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1650f, -986f, 582f, 2069f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(174f, 1189f, 114f, 1000f)))))), vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(~4294967295u), ~u_input.a), 4294967295u | ~u_input.a, _wgslsmith_mod_u32(~u_input.a, ~u_input.a), ~u_input.a), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(_wgslsmith_f_op_f32(floor(-1540f)) < -992f, select(true, all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)))), select(vec2<bool>(false, true), !func_1(Struct_2(Struct_1(vec3<i32>(u_input.b, -14311i, 24832i), vec2<bool>(true, true), false, vec3<f32>(-217f, 2259f, -724f)), vec3<u32>(4848u, 24780u, u_input.a)), Struct_3(783f, u_input.a, -1i, u_input.a, Struct_1(vec3<i32>(u_input.c, u_input.d, u_input.b), vec2<bool>(false, true), false, vec3<f32>(-320f, 403f, -803f))), -1i, 548f), vec2<bool>(true, true))), u_input.a);
    global0 = _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(207f, u_input.a, -39033i, u_input.a, var_0), true, var_0.d, 14366i)).x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1685f), var_0.c))))));
    global0 = var_0.d.x;
    var var_1 = var_0;
    var var_2 = vec2<bool>(!(~abs(u_input.c) <= ~(-1i & var_0.a.x)), true);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.x - var_0.d.x), _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-304f, var_0.d.x)))))), _wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, 0u, 27082u, abs(_wgslsmith_clamp_u32(27111u, u_input.a, u_input.a)))), 0i, reverseBits(countOneBits(~3710u)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(582f + var_1.d.x), _wgslsmith_f_op_f32(sign(551f)), -431f, _wgslsmith_f_op_f32(-var_1.d.x))), reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 67946u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), min(vec4<u32>(u_input.a, 3281u, u_input.a, 1u), vec4<u32>(u_input.a, 12282u, u_input.a, 62337u)))), func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 1290f, -231f, var_1.d.x) * vec4<f32>(var_1.d.x, -756f, 1000f, var_0.d.x)))), ~(~vec4<u32>(0u, 0u, 35621u, 0u)), vec2<bool>(false, true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(23679u, u_input.a))).b, func_2(Struct_1(-vec3<i32>(-91605i, var_1.a.x, var_0.a.x), vec2<bool>(var_2.x, false), 1i > u_input.d, vec3<f32>(var_0.d.x, var_0.d.x, var_1.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1434f, var_1.d.x, var_1.d.x, -1722f))))), vec4<u32>(1u, ~(~var_3.b), 4294967295u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1214u, var_3.b, 15893u), u_input.a)), var_1.b, 13383u).a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.e.d.xx)) - var_0.d.zz));
}

