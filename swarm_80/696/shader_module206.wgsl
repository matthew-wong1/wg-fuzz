struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: Struct_3;

var<private> global2: vec4<f32> = vec4<f32>(-3151f, 139f, -769f, 1602f);

var<private> global3: Struct_4 = Struct_4(-215f, vec2<u32>(4123u, 10926u), vec4<bool>(true, true, false, true), Struct_1(false), 0i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    var var_0 = !(!any(global3.c.wxw)) && (reverseBits(~select(34047u, global3.b.x, global1.b.a)) > 0u);
    var var_1 = global3.d.a | (20690i < _wgslsmith_clamp_i32(~global3.e | ~2147483647i, global3.e, 80195i));
    let var_2 = _wgslsmith_f_op_vec3_f32(global1.c.a - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + global2.x)), _wgslsmith_div_f32(-623f, _wgslsmith_f_op_f32(-global1.c.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-299f, 1000f)))))));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) * global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2362f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.a, global2.x), -983f, !global3.d.a)) * var_2.x)));
    let var_4 = global3.c.x;
    return -306f;
}

fn func_2() -> u32 {
    var var_0 = global1.c;
    global3 = Struct_4(-827f, ~vec2<u32>(global3.b.x, 1u), vec4<bool>(false, false, true, global1.b.a), Struct_1(true), 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~25963i, _wgslsmith_div_vec4_u32(vec4<u32>(14865u, 26109u, 1u, 0u), vec4<u32>(global3.b.x, 4294967295u, u_input.a, u_input.a)), select(u_input.a, u_input.a, global1.b.a)))) + -530f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(612f))));
    global1 = Struct_3(2147483647i, global1.b, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.a.x, 2013f, 1630f))))), ~vec4<i32>(-(~37373i), 37648i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.a, global3.e), reverseBits(u_input.d))));
    global0 = array<vec2<bool>, 30>();
    return ~_wgslsmith_add_u32(abs(u_input.e), 31248u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = vec3<bool>(true, any(select(!vec4<bool>(false, true, global3.d.a, global3.d.a), !vec4<bool>(true, true, global1.b.a, true), arg_1.a && global1.b.a)) && any(global3.c.wzw), !((_wgslsmith_add_u32(4471u, arg_3.x) <= u_input.e) & ((arg_0 | 0u) != global3.b.x)));
    var var_1 = vec2<bool>(!all(!global3.c.zwy), !any(vec2<bool>(true, true)));
    global1 = Struct_3(abs(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(-6466i, u_input.c), arg_2)), Struct_1(_wgslsmith_f_op_f32(-global1.c.a.x) > _wgslsmith_f_op_f32(467f - _wgslsmith_f_op_f32(-911f - 1490f))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(1483f - global3.a)), global3.a, global3.a)), vec4<i32>(global1.d.x, 0i, 33695i, ~(-40419i)));
    var var_2 = ~abs(vec4<u32>(3926u, firstTrailingBit(0u), ~reverseBits(82509u), arg_3.x));
    var var_3 = Struct_4(-485f, ~arg_3.zx, vec4<bool>(global1.b.a, !arg_1.a, var_0.x || false, global1.b.a), arg_1, 2147483647i);
    return Struct_4(_wgslsmith_f_op_f32(func_3(-(~22450i << (_wgslsmith_add_u32(u_input.e, var_3.b.x) % 32u)), ~vec4<u32>(0u, ~arg_0, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_3.x), var_3.b)), global3.b.x)), arg_3.yz, select(vec4<bool>(false, true, false, !any(vec4<bool>(var_1.x, false, arg_1.a, true))), !select(select(var_3.c, global3.c, vec4<bool>(var_1.x, false, true, false)), select(vec4<bool>(true, false, true, arg_1.a), vec4<bool>(global1.b.a, var_1.x, true, var_3.c.x), true), any(vec3<bool>(var_1.x, arg_1.a, global3.c.x))), var_1.x), Struct_1(((47752u | var_3.b.x) & _wgslsmith_dot_vec2_u32(var_2.wx, vec2<u32>(1u, arg_0))) > var_3.b.x), global3.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1047f, 521f)))), global3.a));
    global3 = func_4(u_input.a, global1.b, firstTrailingBit(~_wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.c, u_input.d.x))), vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(func_2(), func_2())), func_2() >> (countOneBits(u_input.a) % 32u), max(u_input.e << (_wgslsmith_dot_vec2_u32(global3.b, global3.b) % 32u), global3.b.x)));
    var var_1 = vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, 32094i) >> (~(4294967295u >> (u_input.a % 32u)) % 32u), u_input.d.x), -u_input.b, -1i);
    var var_2 = !(global3.a <= _wgslsmith_f_op_f32(ceil(-813f)));
    global3 = Struct_4(_wgslsmith_f_op_f32(-arg_1.x), ~max(global3.b, vec2<u32>(~24924u, 1u)), arg_2, func_4(global3.b.x << (abs(abs(4294967295u)) % 32u), func_4(global3.b.x, arg_0, u_input.c, ~vec3<u32>(global3.b.x, global3.b.x, global3.b.x) ^ (vec3<u32>(4294967295u, 65910u, u_input.e) | vec3<u32>(114313u, u_input.e, global3.b.x))).d, global1.d.x, ~abs(vec3<u32>(u_input.e, u_input.e, global3.b.x) << (vec3<u32>(18168u, u_input.a, 25121u) % vec3<u32>(32u)))).d, -68245i);
    return 1722f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(global1.c.a.zy * global1.c.a.zx);
    let var_2 = global3.c;
    let var_3 = (global3.b.x >> (85428u % 32u)) >> (global3.b.x % 32u);
    global0 = array<vec2<bool>, 30>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(round(-672f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_1(global3.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1041f, global2.x, global2.x, global1.c.a.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, 667f, -1069f, global2.x))))), global3.c)));
    var var_4 = ~vec3<u32>(~var_3, abs(~43194u), global3.b.x);
    var var_5 = func_4(global3.b.x, func_4(_wgslsmith_mod_u32(u_input.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 92490u, var_4.x), vec3<u32>(var_3, 9483u, 0u))), func_4(_wgslsmith_mod_u32(4294967295u, 4294967295u), func_4(~var_3, global3.d, ~global3.e, vec3<u32>(4294967295u, 8315u, var_4.x)).d, _wgslsmith_sub_i32(global3.e, 1i), _wgslsmith_mult_vec3_u32(vec3<u32>(14132u, 1u, u_input.e), firstLeadingBit(vec3<u32>(47195u, 4294967295u, 1u)))).d, -2147483647i, _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a, 4294967295u, 28104u)), ~vec3<u32>(1u, var_3, u_input.a) << (vec3<u32>(49416u, 1u, var_3) % vec3<u32>(32u)))).d, min(-32167i, _wgslsmith_sub_i32(global3.e, reverseBits(firstTrailingBit(global1.a)))), ~vec3<u32>(~(var_4.x & 4294967295u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, var_3, 1u, u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 4463u, 44853u, 26235u), vec4<u32>(4294967295u, 1u, var_4.x, var_4.x))))).c.xyz;
    let var_6 = func_4(_wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(16014u, 1217u | var_3)), min(~firstLeadingBit(1u), 17142u)), global3.d, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global3.e), global3.e, global1.d.x), (u_input.d ^ vec3<i32>(-31900i, -2147483647i, global3.e)) << ((vec3<u32>(1u, 4294967295u, 82735u) | vec3<u32>(4294967295u, var_3, 1u)) % vec3<u32>(32u))) | global3.e, _wgslsmith_mult_vec3_u32(min(~vec3<u32>(var_4.x, 2412u, var_4.x), vec3<u32>(30745u, var_4.x, ~var_3)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(35035u, var_3, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global3.b.x), ~vec3<u32>(var_3, var_3, u_input.a)), ~(vec3<u32>(var_4.x, 4294967295u, 28650u) << (vec3<u32>(1u, var_4.x, 1u) % vec3<u32>(32u)))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global1.c.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, var_1.x)), _wgslsmith_f_op_vec2_f32(global2.zy + global1.c.a.yy)), var_6.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, var_1.x) + global2.zx)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1011f, _wgslsmith_f_op_f32(var_1.x * 1343f)))))), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, abs(_wgslsmith_div_i32(global3.e, -2147483647i))), u_input.d.yz ^ _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(0i, -2147483647i)), firstLeadingBit(vec2<i32>(-61431i, -39150i)))));
}

