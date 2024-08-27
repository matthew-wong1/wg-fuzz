struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = true && (true & !(!any(vec4<bool>(true, false, true, true))));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(1u, firstLeadingBit(1u)), 109019u, 52102u, _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(1u, 0u, 24633u)), ~(~(~vec3<u32>(52660u, 4294967295u, 1u)))));
    var_0 = any(vec3<bool>(true, true, select(true, true, !any(vec2<bool>(false, false)))));
    let var_2 = ~(~_wgslsmith_mult_vec2_u32(var_1.xw, countOneBits(~var_1.zz)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1294f, -1580f)) * _wgslsmith_div_f32(-517f, 1775f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-460f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + 1064f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-269f)) + _wgslsmith_f_op_f32(sign(-1617f)))), ~var_1.zyx), 10736u);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1997f, 440f)) + vec2<f32>(-698f, -297f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a.b * _wgslsmith_f_op_vec2_f32(-var_3.a.b)) - vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.a.b.x)), 237f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_3.a.b - var_3.a.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.a.a, -886f)))))))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.a, -42264i))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -1101f) + vec2<f32>(arg_2, arg_2)))), ~(~(~vec3<u32>(27821u, 0u, 4294967295u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(58165u, 1u), 1u, ~40228u, 4294967295u) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, 1u), 1u, 68214u, ~59922u) % vec4<u32>(32u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = u_input.a;
    global1 = true;
    let var_2 = var_0.a.b;
    var var_3 = ~(~max(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_0.a.c.x, 62141u, var_0.a.c.x), vec4<u32>(76513u, 1u, 33968u, 18873u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b)), ~vec4<u32>(var_0.a.c.x, 96850u, 0u, var_0.b))));
    return arg_2;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-430f * arg_0.d.a.a) < _wgslsmith_f_op_f32(func_2(arg_0.c.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.a)))) - -811f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1949f))))));
    return arg_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec3<u32> {
    global0 = array<vec2<bool>, 29>();
    let var_0 = firstTrailingBit(select(vec4<i32>(-_wgslsmith_div_i32(u_input.a, u_input.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-23745i, 0i)), ~2147483647i, ~reverseBits(u_input.a)), vec4<i32>(u_input.a | u_input.a, -(~u_input.a), max(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), ~u_input.a), u_input.a), vec4<bool>(any(select(global0[_wgslsmith_index_u32(arg_0.a.c.x, 29u)], global0[_wgslsmith_index_u32(11689u, 29u)], false)), !all(vec2<bool>(false, true)), select(true, true, true), _wgslsmith_f_op_f32(arg_1 + 113f) <= arg_1)));
    let var_1 = -(_wgslsmith_add_vec3_i32(~vec3<i32>(-39973i, u_input.a, u_input.a) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 11760i, var_0.x), vec3<i32>(var_0.x, 2147483647i, var_0.x)), var_0.wwy) & var_0.zyw);
    let var_2 = select(any(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0.b >> (arg_0.a.c.x % 32u), 38225u), 29u)]), !(!(-1450f < func_1(Struct_4(arg_0.a.a, vec3<f32>(arg_1, arg_0.a.a, -826f), Struct_3(arg_0.a, 1u), arg_0, vec3<bool>(true, true, true))).a.a)), false);
    global0 = array<vec2<bool>, 29>();
    return vec3<u32>(~(~(~arg_0.b) << (~(4294967295u << (arg_0.a.c.x % 32u)) % 32u)), arg_0.a.c.x, ~arg_0.a.c.x);
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    global1 = true;
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(i32(-1i) * -2147483647i), 0i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 21880i, -2147483647i, u_input.a) >> (vec4<u32>(arg_0.c.x, arg_0.c.x, 23699u, 0u) % vec4<u32>(32u))), abs(vec4<i32>(55288i, 3911i, -2147483647i, -59403i) << (vec4<u32>(4294967295u, 42203u, arg_0.c.x, 1u) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -2147483647i, 19336i), ~vec3<i32>(-30626i, -2147483647i, u_input.a))), abs(_wgslsmith_add_vec4_i32(max(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1359i, -21602i), vec4<i32>(0i, -2147483647i, -22121i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(34414i, u_input.a, u_input.a, u_input.a))), countOneBits(abs(vec4<i32>(5736i, -1i, u_input.a, u_input.a))))));
    let var_1 = Struct_1(false);
    var var_2 = func_1(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-370f - 353f), _wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) - arg_0.b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, 390f, arg_0.a))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1089f, -1318f, arg_0.a)))))), func_1(Struct_4(821f, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.b.x, arg_0.b.x) * vec3<f32>(arg_0.b.x, arg_0.a, -436f)), func_1(Struct_4(1719f, vec3<f32>(arg_0.b.x, arg_0.a, arg_0.b.x), Struct_3(Struct_2(760f, arg_0.b, vec3<u32>(1u, arg_0.c.x, arg_0.c.x)), arg_0.c.x), Struct_3(arg_0, 15196u), vec3<bool>(false, var_1.a, var_1.a))), Struct_3(Struct_2(arg_0.b.x, vec2<f32>(arg_0.b.x, arg_0.a), vec3<u32>(1u, 4294967295u, arg_0.c.x)), 0u), vec3<bool>(var_1.a, true, false))), Struct_3(func_1(Struct_4(1257f, vec3<f32>(arg_0.a, arg_0.a, arg_0.a), Struct_3(Struct_2(-1000f, vec2<f32>(-643f, arg_0.a), arg_0.c), arg_0.c.x), Struct_3(arg_0, 63977u), vec3<bool>(true, var_1.a, true))).a, min(_wgslsmith_mult_u32(arg_0.c.x, arg_0.c.x), func_1(Struct_4(-1000f, vec3<f32>(arg_0.a, -660f, arg_0.b.x), Struct_3(arg_0, arg_0.c.x), Struct_3(Struct_2(-242f, arg_0.b, vec3<u32>(27962u, arg_0.c.x, arg_0.c.x)), 1u), vec3<bool>(true, var_1.a, true))).a.c.x)), select(select(vec3<bool>(false, true, var_1.a), vec3<bool>(var_1.a, var_1.a, true), var_1.a), vec3<bool>(var_1.a, var_0.x != u_input.a, true), vec3<bool>(var_1.a || true, true, all(vec2<bool>(false, true)))))).a;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(303f, var_2.a, var_2.a) * vec3<f32>(-139f, 649f, arg_0.a))))), Struct_3(arg_0, 0u), func_1(Struct_4(_wgslsmith_f_op_f32(abs(619f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, 1221f, -312f), vec3<f32>(552f, arg_0.a, 2196f))))), func_1(Struct_4(arg_0.b.x, vec3<f32>(var_2.b.x, 333f, 2689f), Struct_3(Struct_2(1381f, vec2<f32>(var_2.b.x, -999f), vec3<u32>(1u, arg_0.c.x, var_2.c.x)), var_2.c.x), Struct_3(Struct_2(-156f, vec2<f32>(var_2.b.x, 816f), vec3<u32>(4294967295u, 4294967295u, arg_0.c.x)), 4294967295u), vec3<bool>(var_1.a, true, var_1.a))), Struct_3(arg_0, _wgslsmith_clamp_u32(arg_0.c.x, var_2.c.x, 16827u)), select(select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), !vec3<bool>(var_1.a, var_1.a, var_1.a)))), select(vec3<bool>(all(select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(true, true, true), vec3<bool>(true, var_1.a, true))), !var_1.a, all(select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false), false))), select(!(!vec3<bool>(var_1.a, var_1.a, true)), vec3<bool>(var_1.a != false, var_1.a, !var_1.a), select(vec3<bool>(var_1.a, var_1.a, var_1.a), !vec3<bool>(false, var_1.a, false), vec3<bool>(true, true, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 29>();
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1535f + 203f) - -1100f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1282f, 1083f)))))), func_4(func_1(Struct_4(1000f, vec3<f32>(1236f, -501f, -1231f), Struct_3(Struct_2(-829f, vec2<f32>(-1167f, 1948f), vec3<u32>(0u, 40950u, 66677u)), 41315u), Struct_3(Struct_2(-700f, vec2<f32>(-254f, -1130f), vec3<u32>(20498u, 32931u, 0u)), 0u), vec3<bool>(false, true, false))), 1971f)));
    let var_1 = select(vec4<u32>(var_0.c.a.c.x, firstLeadingBit(_wgslsmith_mult_u32(var_0.d.b, var_0.d.b)) | 1u, 4294967295u, 19907u), max(~vec4<u32>(~21621u, ~0u, ~var_0.c.a.c.x, 4294967295u), firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), vec4<u32>(var_0.d.b, 23114u, var_0.d.a.c.x, 23491u) << (vec4<u32>(4294967295u, 14975u, var_0.c.a.c.x, 56959u) % vec4<u32>(32u))))), var_0.e.x);
    var var_2 = 0i;
    var var_3 = Struct_3(func_1(var_0).a, 15663u);
    let var_4 = var_0.d.a.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(max(_wgslsmith_add_i32(15371i, ~u_input.a), u_input.a), max(abs(2147483647i | u_input.a), -u_input.a)), reverseBits(-vec4<i32>(_wgslsmith_mult_i32(u_input.a, -1i), 1i, -43632i << (var_3.a.c.x % 32u), u_input.a)), (~vec4<i32>(u_input.a, u_input.a, 2147483647i, -31590i) ^ -vec4<i32>(41563i, u_input.a, 41845i, -2147483647i)) >> (vec4<u32>(~(~var_0.c.a.c.x), abs(~37886u), min(var_1.x, min(var_0.d.a.c.x, var_3.b)), ~4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1426f * _wgslsmith_f_op_f32(select(func_5(func_1(Struct_4(455f, var_0.b, var_0.d, var_0.c, vec3<bool>(false, true, false))).a).d.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.a))), false))), 2147483647i);
}

