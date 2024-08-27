struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_5(max(9145i, ~u_input.c.x), 1u, _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~(~1u), 21u)]), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) * 676f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-372f, -456f)))), select(vec3<bool>(-30274i < u_input.c.x, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), 174f, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 39649i, u_input.c.x) | vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x), -vec3<i32>(1i, u_input.c.x, -34281i)), true), ~u_input.a.x);
    global0 = array<vec2<f32>, 21>();
    let var_1 = vec3<i32>(u_input.c.x, ~_wgslsmith_div_i32(u_input.c.x, ~_wgslsmith_sub_i32(2147483647i, u_input.c.x)), 0i);
    let var_2 = -1000f;
    global0 = array<vec2<f32>, 21>();
    return !select(select(!vec4<bool>(var_0.d.e, var_0.d.e, false, true), !(!vec4<bool>(var_0.d.b.x, true, var_0.d.b.x, var_0.d.e)), vec4<bool>(false, 41171i != u_input.c.x, var_0.d.e, true)), vec4<bool>(true, !(!var_0.d.e), false, var_0.d.e), !select(vec4<bool>(true, var_0.d.e, false, var_0.d.b.x), select(vec4<bool>(true, false, false, var_0.d.e), vec4<bool>(false, var_0.d.e, var_0.d.b.x, false), true), false));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: i32) -> bool {
    let var_0 = !(!(0u < u_input.a.x));
    var var_1 = vec4<bool>(var_0 & all(vec4<bool>(var_0, true, true, true)), select(true, true, var_0), all(!func_2()), true);
    let var_2 = ~(~(~(arg_2 << (vec2<u32>(u_input.d.x, arg_2.x) % vec2<u32>(32u)))));
    global0 = array<vec2<f32>, 21>();
    var var_3 = vec4<bool>(all(!vec4<bool>(u_input.c.x < arg_3, true | var_0, true, true)), arg_1.x != -1102f, var_0, !var_0);
    return var_1.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, firstTrailingBit(countOneBits(14842i)), arg_0.x | 1i), reverseBits(_wgslsmith_dot_vec2_i32(arg_0.xw, u_input.c))), firstTrailingBit(_wgslsmith_div_i32(1i, firstLeadingBit(arg_1))), arg_0.x, arg_0.x);
    let var_1 = Struct_3(Struct_2(Struct_1(~vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(max(77741u, 1u), u_input.b << (0u % 32u), ~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 7218u, u_input.d.x, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 33300u, 0u, 4294967295u), vec4<u32>(60978u, u_input.a.x, 11689u, 48496u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1574f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -213f))), 4294967295u), vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 46583u), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(53601u, u_input.d.x), u_input.a.x, 1u), abs(u_input.d.x), ~4294967295u), (~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 0i), vec3<i32>(-3388i, u_input.c.x, var_0.x)) ^ min(min(50319i, var_0.x), var_0.x >> (24024u % 32u))) >= u_input.c.x, -257f);
    global0 = array<vec2<f32>, 21>();
    let var_2 = func_2().xyz;
    var var_3 = -46321i;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!all(vec2<bool>(true, true)), true, !all(vec3<bool>(true, true, true)), func_1(~u_input.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], _wgslsmith_clamp_vec2_u32(u_input.d.zx, reverseBits(vec2<u32>(1u, u_input.d.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(u_input.d.x, u_input.b))), max(~(u_input.c.x >> (1u % 32u)), _wgslsmith_clamp_i32(u_input.c.x, 1i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)))));
    global1 = array<Struct_2, 20>();
    let var_1 = ~vec2<u32>(u_input.b, u_input.d.x ^ 1u);
    var_0 = vec4<bool>(!func_3(-firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), 1i), !var_0.x, true, all(func_2().zxx));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec2<f32>(1f, 1f));
    let var_3 = min(~vec4<u32>(u_input.a.x, u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(118832u, 20573u, 8712u, 1u), vec4<u32>(70943u, 100309u, u_input.d.x, var_1.x)), 21339u), (4294967295u >> (u_input.a.x % 32u)) | select(u_input.b, 61252u, true)), _wgslsmith_clamp_vec4_u32(min(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, u_input.a.x, u_input.b, 18737u), vec4<u32>(var_1.x, u_input.d.x, var_1.x, 16470u)), ~vec4<u32>(u_input.a.x, 0u, u_input.d.x, 58925u)), ~min(vec4<u32>(var_1.x, var_1.x, u_input.d.x, 0u), vec4<u32>(19911u, 3469u, var_1.x, u_input.b))), vec4<u32>(1u, ~_wgslsmith_div_u32(0u, 5610u), _wgslsmith_dot_vec3_u32(~vec3<u32>(6928u, 51719u, u_input.a.x), u_input.d), u_input.b), vec4<u32>(27925u, 25071u, 4294967295u, 37828u)));
    let var_4 = Struct_5(_wgslsmith_sub_i32(~1i, _wgslsmith_clamp_i32(-u_input.c.x, -u_input.c.x, -3280i >> (firstTrailingBit(u_input.a.x) % 32u))), countOneBits(var_1.x), vec2<f32>(732f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -740f)), var_2.x, u_input.c.x <= 8927i))), Struct_4(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(ceil(var_2.x))), var_0.wxw, _wgslsmith_f_op_f32(step(713f, -1830f)), u_input.c.x, var_0.x), 35465u);
    var var_5 = 4294967295u | ~var_1.x;
    var var_6 = Struct_3(Struct_2(Struct_1(vec2<u32>(select(var_3.x, 1u, false), var_3.x)), ~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)), u_input.b), ~(~var_3), func_1(min(countOneBits(-1i), ~(-653i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1486f, var_2.x))), ~vec2<u32>(4294967295u, var_4.b), -(~(-39203i))), _wgslsmith_f_op_f32(f32(-1f) * -1406f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, var_4.d.d) ^ vec3<i32>(935i, var_4.d.d, 38269i), ~vec3<i32>(0i, u_input.c.x, 49977i)), 1i) & (-(~vec3<i32>(-54998i, u_input.c.x, 17714i)) << (vec3<u32>(1u >> (var_1.x % 32u), _wgslsmith_dot_vec3_u32(u_input.d, var_3.wyy), 121505u << (var_3.x % 32u)) % vec3<u32>(32u))), _wgslsmith_mod_u32(31886u, countOneBits(var_6.b.x)), reverseBits(firstLeadingBit(var_4.a)) ^ u_input.c.x, _wgslsmith_sub_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_6.a.a.a, var_1), ~var_1, vec2<u32>(u_input.a.x, 1u))), _wgslsmith_mult_vec2_u32(~(~u_input.a), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(58214u, 0u)), u_input.a, vec2<u32>(0u, var_4.e) ^ var_3.zw))), _wgslsmith_clamp_i32(var_4.d.d, abs(_wgslsmith_mult_i32(u_input.c.x, 1i)), _wgslsmith_clamp_i32(countOneBits(-6988i), max(-1i, 6461i), _wgslsmith_sub_i32(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 4936i, 6438i, 29283i), vec4<i32>(8793i, 1i, -24212i, u_input.c.x))))));
}

