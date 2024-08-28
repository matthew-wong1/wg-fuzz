struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(41736i, 6551i, 8827i, -1i, -1i, 22197i, i32(-2147483648), 31454i, -24572i, 1i, 1i, -13441i, 22672i, 49938i, -14458i, -61607i, 22694i, 0i, -27358i, 2147483647i, -29913i, 16254i, 0i, 2445i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(2524u, u_input.a.x)), u_input.a);
    let var_1 = Struct_1(var_0.x, reverseBits(u_input.b), u_input.a.x);
    global0 = array<i32, 24>();
    var var_2 = -min(global0[_wgslsmith_index_u32(countOneBits((4294967295u ^ var_0.x) ^ 1u), 24u)], -arg_1.x);
    var var_3 = _wgslsmith_mult_i32(46645i, ~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~var_0.x, 24u)], arg_1.x) | global0[_wgslsmith_index_u32(max(var_1.c, _wgslsmith_mult_u32(~u_input.b.x, abs(0u))), 24u)]);
    return any(!vec4<bool>(false, true, true, _wgslsmith_clamp_u32(70632u, var_1.b.x, 28240u) < 55799u));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f));
    let var_1 = 18292u;
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 707f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-205f, _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-751f, var_0)))))), Struct_1(53926u, _wgslsmith_mod_vec4_u32(u_input.b, ~(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 61416u) | vec4<u32>(arg_0, arg_0, 0u, u_input.a.x))), 1u), 968f, Struct_3(Struct_1(~4294967295u, vec4<u32>(0u, arg_0, var_1, ~4294967295u), arg_0), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 1i, global0[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(36725i, 90467i, -15038i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(min(var_0, 1700f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), !select(!vec4<bool>(true, arg_1.x, arg_1.x, true), select(arg_1, arg_1, arg_1), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x))));
    var var_3 = Struct_1(3483u, vec4<u32>(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), abs(var_1)), 0u), 38875u, abs(~countOneBits(1u))), countOneBits(~_wgslsmith_add_u32(0u, var_2.d.a.c) << (u_input.b.x % 32u)));
    var_3 = Struct_1(var_3.c >> (firstLeadingBit(38392u) % 32u), var_3.b, var_3.b.x);
    return vec4<u32>(0u, _wgslsmith_add_u32(var_3.b.x, ~(~var_3.b.x)), firstTrailingBit(_wgslsmith_clamp_u32(var_3.c ^ var_1, 1u, var_2.b.a)) & 47339u, 4816u);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_i32(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_1, 24u)], -2147483647i), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 38667i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), 0i), global0[_wgslsmith_index_u32(u_input.b.x, 24u)]);
    let var_1 = countOneBits(func_4(u_input.b.x, select(vec4<bool>(true, false && arg_0, arg_1 == arg_1, arg_0), vec4<bool>(all(vec2<bool>(false, arg_0)), false, true, func_3(vec2<f32>(385f, -1000f), vec4<i32>(1172i, -19435i, -1i, var_0))), arg_0)));
    global0 = array<i32, 24>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-3058f, 923f))) + vec2<f32>(-460f, 548f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2110f, -1682f), _wgslsmith_f_op_vec2_f32(vec2<f32>(646f, -706f) + vec2<f32>(-115f, -815f)))), vec2<bool>(false, arg_0))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1461f, 463f)), vec2<f32>(1000f, -380f), arg_0))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - -882f) * var_2.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(858f, _wgslsmith_f_op_f32(max(131f, var_2.x)))))), var_2.x));
    return Struct_1(89036u, vec4<u32>(4294967295u, firstTrailingBit(var_1.x), 11146u, 27090u), _wgslsmith_add_u32(_wgslsmith_mult_u32(~53715u, _wgslsmith_clamp_u32(arg_1 ^ 101728u, arg_1, ~36078u)), _wgslsmith_dot_vec2_u32(~(~var_1.wy), u_input.b.zx)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_2(func_2(false, u_input.a.x));
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_u32(36713u, func_2(select(true, false, true), func_4(u_input.b.x, vec4<bool>(false, false, false, true)).x).b.x), vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, 18244u), u_input.b.x, ~0u, 1u), u_input.b.x));
    var var_2 = Struct_3(var_1.a, -arg_1.xzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-331f, 1221f, all(vec3<bool>(true, true, true))))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true));
    var_0 = var_1;
    var_2 = Struct_3(var_1.a, _wgslsmith_mod_vec3_i32(vec3<i32>(abs(~(-47937i)), -10357i, _wgslsmith_sub_i32(arg_0, global0[_wgslsmith_index_u32(11114u, 24u)] << (var_2.a.b.x % 32u))), ~max(vec3<i32>(arg_1.x, 0i, arg_1.x), _wgslsmith_mult_vec3_i32(arg_1.zyx, arg_1.xyx))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + var_2.c), _wgslsmith_f_op_f32(var_2.c + -157f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c))) - var_2.c))), select(!var_2.d, !vec4<bool>(all(vec2<bool>(true, var_2.d.x)), true, true, all(vec2<bool>(false, var_2.d.x))), !select(select(vec4<bool>(false, var_2.d.x, var_2.d.x, false), vec4<bool>(true, true, false, true), var_2.d), select(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x), vec4<bool>(true, var_2.d.x, false, var_2.d.x), vec4<bool>(true, var_2.d.x, false, var_2.d.x)), var_2.c > 1087f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + 1114f) * var_2.c), _wgslsmith_f_op_f32(-1047f + -1132f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, 389f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(228f, 736f), vec2<f32>(-1000f, -2336f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, 1258f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 15712i;
    let var_1 = _wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(341f)), _wgslsmith_f_op_f32(-590f + _wgslsmith_f_op_f32(-234f * -1151f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1789f)))));
    global0 = array<i32, 24>();
    var_0 = -(countOneBits(global0[_wgslsmith_index_u32(1u, 24u)]) & 13373i);
    let var_2 = Struct_1(u_input.b.x, u_input.b, _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(11341u, 0u))));
    var_0 = global0[_wgslsmith_index_u32(~reverseBits(66986u), 24u)];
    var_0 = -7974i;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(abs(220f))) - _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 21948i), vec3<i32>(2147483647i, -11810i, global0[_wgslsmith_index_u32(var_2.c, 24u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 4383i, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(18148u, 24u)], 0i)))))), Struct_1(39750u, countOneBits(_wgslsmith_div_vec4_u32(~u_input.b, abs(var_2.b))), u_input.a.x | u_input.a.x), _wgslsmith_f_op_f32(step(162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-677f)) + var_1))), Struct_3(var_2, min(vec3<i32>(2147483647i, 6842i, 57544i), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(var_2.a, 24u)], global0[_wgslsmith_index_u32(1028u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))) << (~u_input.b.wyx % vec3<u32>(32u)), -1440f, vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(603f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_3.c)))), var_1, _wgslsmith_f_op_f32(var_1 * var_3.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1555f, -1000f, var_1, var_3.a.x) + vec4<f32>(-1939f, -186f, var_1, 1945f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, var_3.d.c, 1038f, var_3.c) * vec4<f32>(-1765f, var_3.a.x, var_3.a.x, -836f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_3.a + vec2<f32>(-168f, -197f)))) * var_3.a)), var_3.d.a.b.x);
}

