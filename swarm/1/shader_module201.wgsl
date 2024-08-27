struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 34654i, 999i, 1i);

var<private> global1: i32 = 0i;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: i32) -> u32 {
    global1 = global0.x;
    global0 = countOneBits(vec4<i32>(_wgslsmith_add_i32(arg_0.d.x, max(-47591i, -9543i)), 48807i, -global0.x, arg_0.a) | ~firstLeadingBit(~vec4<i32>(arg_3, arg_0.d.x, 7167i, arg_3)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1389f);
    return ~countOneBits(arg_0.e.x);
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    global0 = min(~_wgslsmith_sub_vec4_i32(vec4<i32>(~1i, firstLeadingBit(global0.x), _wgslsmith_add_i32(u_input.b.x, global0.x), 21739i), vec4<i32>(~u_input.c.x, max(global0.x, u_input.b.x), abs(u_input.a.x), 1i)), ~vec4<i32>(global0.x, i32(-1i) * -3672i, max(1i, u_input.c.x), -_wgslsmith_div_i32(18942i, u_input.b.x)));
    global1 = _wgslsmith_add_i32(~0i, _wgslsmith_mod_i32(-7663i, ~_wgslsmith_div_i32(u_input.b.x, -7943i) >> (func_2(Struct_1(-1i, global0.wx, 36535i, vec3<i32>(global0.x, -15483i, global0.x), vec2<u32>(4294967295u, 47249u)), !arg_0.xx, -1308f, u_input.a.x) % 32u)));
    global1 = _wgslsmith_sub_i32(u_input.b.x, -3714i) ^ ~global0.x;
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 549f, _wgslsmith_f_op_f32(145f + 526f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(688f, -741f, 812f) + vec3<f32>(637f, 1460f, -859f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(195f, -456f, 521f), vec3<f32>(217f, 1459f, -854f)))))), false, Struct_1(u_input.c.x, ~global0.yz | vec2<i32>(firstLeadingBit(2147483647i), i32(-1i) * -21209i), _wgslsmith_add_i32(-1i, ~(-37176i) << (firstTrailingBit(1u) % 32u)), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(50230i, global0.x)), u_input.a.x >> (_wgslsmith_div_u32(18834u, 18375u) % 32u), 20322i), _wgslsmith_div_vec2_u32(~min(vec2<u32>(64293u, 0u), vec2<u32>(44053u, 13502u)), vec2<u32>(1u, 1u))), Struct_3(!select(!arg_0.yx, vec2<bool>(arg_0.x, false), arg_0.x)), max(global0.xwz, _wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.x, u_input.a.x, 2147483647i), -vec3<i32>(global0.x, 1i, 13091i), -(vec3<i32>(u_input.a.x, global0.x, global0.x) | u_input.c.xyx))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-165f + -432f))))), var_0.a.x));
    return vec4<bool>(var_0.b, all(vec4<bool>(var_0.d.a.x, !all(vec2<bool>(arg_0.x, true)), !all(vec3<bool>(var_0.b, false, var_0.d.a.x)), var_0.d.a.x)), !(!(!var_0.d.a.x)), true || !(!var_0.d.a.x));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> bool {
    let var_0 = Struct_4(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, max(20475u, 1u), arg_0.x, abs(arg_0.x)), vec4<u32>(1u, 0u, 4294967295u, 1u)), reverseBits(abs(~vec4<u32>(1u, 1u, arg_0.x, 44159u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 19438u), max(firstTrailingBit(arg_0.yz), vec2<u32>(arg_0.x, arg_0.x))), ~arg_0.yz << (vec2<u32>(arg_0.x, ~arg_0.x) % vec2<u32>(32u))), 54573u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32(-global0.x, 19511i ^ ~select(arg_1, 16983i, true), ~arg_1), -2147483647i, i32(-1i) * -1779i);
    let var_2 = all(func_1(vec3<bool>(true, true, true))) & true;
    var_1 = firstTrailingBit(~(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(global0.ywz, u_input.b)));
    var var_3 = Struct_3(!select(select(!vec2<bool>(var_2, var_2), !vec2<bool>(var_2, var_2), !var_2), select(vec2<bool>(var_2, true), vec2<bool>(var_2, false), vec2<bool>(var_2, var_2)), !select(vec2<bool>(var_2, var_2), vec2<bool>(true, false), true)));
    return any(select(!vec3<bool>(true, var_3.a.x, select(var_2, var_3.a.x, var_2)), vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_2), vec3<bool>(true, true, false))), true), !func_1(vec3<bool>(false, true, var_3.a.x)).x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    global1 = 0i;
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~43329u, _wgslsmith_mult_u32(1u, ~20614u), ~(~1935u), 1u), ~firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 15084u, 0u, 37076u))), select(~(~vec4<u32>(0u, 0u, 52886u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), func_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), ~(vec4<u32>(1u, 1u, 1u, 1u) << ((select(vec4<u32>(48721u, 4294967295u, 1u, 94948u), vec4<u32>(4096u, 1u, 10325u, 0u), vec4<bool>(true, true, true, false)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global1 = 1i;
    var var_1 = vec2<bool>(!any(vec2<bool>(false, func_3(vec4<u32>(0u, 0u, 62807u, 1u), u_input.b.x))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, func_1(vec3<bool>(false, false, true)).x), vec4<bool>(true, false, true, any(vec4<bool>(false, true, true, false))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(258f, -661f) * vec2<f32>(-277f, 955f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1066f)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1983f)) * _wgslsmith_f_op_f32(-var_2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(259f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x)))) - var_2.x));
    let var_4 = Struct_1(u_input.c.x, vec2<i32>(40526i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(44778u, 45082u, 2639u, 34544u)) % 32u), -(~_wgslsmith_mult_i32(u_input.c.x, global0.x))), ~_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_clamp_i32(select(-3221i, u_input.a.x, var_1.x), 21392i, ~global0.x)), u_input.b, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 4294967295u) >> (firstTrailingBit(vec2<u32>(21371u, 1u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(646f, -(vec4<i32>(-1i) * -vec4<i32>(-37405i, 1i, 2147483647i, global0.x)), reverseBits(vec4<i32>(~reverseBits(71331i), _wgslsmith_dot_vec4_i32(vec4<i32>(4674i, global0.x, -7911i, u_input.a.x), select(u_input.c, vec4<i32>(1i, 2147483647i, -13327i, var_4.a), vec4<bool>(false, var_1.x, var_1.x, true))), min(-14141i, global0.x), _wgslsmith_dot_vec3_i32(var_4.d ^ vec3<i32>(u_input.b.x, u_input.b.x, 9149i), firstLeadingBit(global0.zzz)))), -2147483647i);
}

