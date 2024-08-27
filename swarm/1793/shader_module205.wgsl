struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(select(~(~1u), ~0u, arg_0.b.b.c.x), u_input.d.x), ~_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(1u, countOneBits(arg_0.b.d.x))), u_input.d.x);
    var_0 = select(vec4<u32>(abs(48824u), ~0u, _wgslsmith_mult_u32(arg_0.b.d.x, ~arg_0.b.b.b.x), arg_0.a.x) & reverseBits(arg_0.b.d), arg_0.b.d, vec4<bool>(true, !(true && arg_0.b.b.c.x), arg_0.b.b.c.x, false));
    var_0 = _wgslsmith_clamp_vec4_u32(select(~(~select(arg_0.b.d, vec4<u32>(0u, 51272u, u_input.c.x, 45850u), vec4<bool>(arg_0.c.x, arg_0.c.x, false, true))), _wgslsmith_mult_vec4_u32(arg_0.b.d, ~min(vec4<u32>(22789u, u_input.c.x, 45747u, 2064u), vec4<u32>(arg_0.a.x, var_0.x, arg_0.b.b.b.x, var_0.x))), select(vec4<bool>(!arg_0.b.b.c.x, arg_0.c.x, false, false), arg_0.b.a, arg_0.b.b.c.x)), ~vec4<u32>(4294967295u, var_0.x, 1u, arg_0.b.d.x), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 41374u, 4294967295u), vec3<u32>(3551u, 0u, 4294967295u)), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d.x, u_input.c.x), ~4294967295u), ~countOneBits(48730u), _wgslsmith_mod_u32(4294967295u, firstLeadingBit(0u))));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.a.x, countOneBits(0u)), u_input.d.x), ~u_input.d.x, _wgslsmith_add_u32(0u, ~var_0.x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.d.x, 4294967295u, arg_0.a.x)), firstTrailingBit(vec3<u32>(arg_0.a.x, var_0.x, 1u))) >> ((~arg_0.a.x << (24847u % 32u)) % 32u)), ~_wgslsmith_div_vec4_u32(~select(vec4<u32>(6857u, arg_0.a.x, u_input.c.x, 26379u), arg_0.b.d, vec4<bool>(arg_0.b.b.c.x, false, false, false)), ~firstTrailingBit(vec4<u32>(83208u, 47918u, 4712u, arg_0.a.x))));
    let var_1 = arg_0.b.c;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), -1318f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1917f, var_1)))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1553f, 2077f, arg_0.c.x)) + _wgslsmith_f_op_f32(ceil(-1000f)))), -553f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 1669f, _wgslsmith_f_op_f32(-1845f - 918f), -197f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, arg_0.b.c, 660f, -932f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(432f, -480f, -788f, var_1))))), vec4<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 - arg_0.b.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.c * -1679f), -619f), arg_0.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(arg_0.b.c))))), select(select(select(vec4<bool>(true, true, arg_0.b.a.x, arg_0.c.x), arg_0.b.a, arg_0.b.a), arg_0.b.a, arg_0.c.x), arg_0.b.a, u_input.a <= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), vec2<i32>(-2147483647i, u_input.b))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), arg_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * -343f) - _wgslsmith_f_op_f32(arg_2 * -810f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))));
    var var_1 = arg_1;
    let var_2 = var_1.a.x;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(arg_0.xz, Struct_2(vec4<bool>(arg_1.a.x, false, arg_1.b.c.x, arg_1.b.c.x), Struct_1(u_input.c.yy, arg_1.b.b, vec3<bool>(false, arg_1.a.x, true)), var_0.x, arg_1.d), vec3<bool>(arg_1.b.c.x, var_1.a.x, false), -36625i))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3559f, -639f, 268f, -887f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, 508f, -258f, 1456f) * vec4<f32>(var_1.c, arg_2, var_1.c, 917f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_1.c, -1406f, arg_1.c)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, arg_2, -1004f, 300f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1441f, var_1.c, var_1.c, var_1.c) + vec4<f32>(var_1.c, 1155f, arg_2, -1047f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 1224f, var_0.x, -615f)) - vec4<f32>(728f, var_0.x, arg_2, -266f))), !select(select(vec4<bool>(true, false, true, false), arg_1.a, arg_1.a.x), !arg_1.a, false))));
    var var_3 = vec3<bool>(var_1.b.c.x, arg_1.a.x, true);
    return vec2<u32>(~abs(arg_0.x) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(78198u, var_1.b.a.x) & ~vec2<u32>(arg_0.x, 305u), max(u_input.c.yx, vec2<u32>(u_input.d.x, arg_1.b.a.x))) % 32u), 8403u);
}

fn func_1() -> bool {
    let var_0 = Struct_3(~_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(6532u), firstLeadingBit(u_input.c.x)), ~func_2(vec3<u32>(49556u, u_input.d.x, 48123u), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(u_input.c.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.c.x, 24193u), vec3<bool>(true, false, true)), 906f, vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x)), -508f)), Struct_2(vec4<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true)), true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), Struct_1(_wgslsmith_div_vec2_u32(func_2(vec3<u32>(13839u, 0u, 1u), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<u32>(25028u, 0u), u_input.c, vec3<bool>(false, false, false)), -894f, vec4<u32>(6169u, 1u, 70048u, 0u)), 1380f), u_input.c.yy), abs(abs(vec3<u32>(4294967295u, u_input.c.x, 0u))), vec3<bool>(true, u_input.c.x < 0u, all(vec4<bool>(true, false, true, true)))), -131f, min(vec4<u32>(~u_input.d.x, ~u_input.c.x, u_input.c.x ^ 78826u, _wgslsmith_mult_u32(17191u, 13353u)), firstLeadingBit(select(vec4<u32>(1u, u_input.c.x, u_input.c.x, 69135u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.d.x), vec4<bool>(true, true, false, false))))), vec3<bool>(true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true), true)), true), -u_input.a);
    var var_1 = u_input.e.x;
    var_1 = u_input.a;
    var_1 = -abs(var_0.d);
    var var_2 = 45700u;
    return any(var_0.b.b.c.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = 11969i;
    let var_2 = func_1();
    var var_3 = Struct_1(func_2(abs(u_input.c), Struct_2(!vec4<bool>(var_2, false, true, var_2), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(15856u, u_input.c.x), u_input.d), vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, var_2, false), true)), -1040f, _wgslsmith_add_vec4_u32(vec4<u32>(0u, 50496u, u_input.c.x, u_input.d.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d.x))), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(abs(u_input.c.zx), Struct_2(vec4<bool>(var_2, var_2, var_2, true), Struct_1(vec2<u32>(u_input.c.x, u_input.d.x), u_input.c, vec3<bool>(false, var_2, var_2)), -1039f, vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 33091u)), select(vec3<bool>(true, false, var_2), vec3<bool>(false, true, false), var_2), -u_input.a))).x), vec3<u32>(u_input.d.x, _wgslsmith_div_u32(~u_input.d.x, 11247u), ~1u), vec3<bool>(var_2, true & var_2, all(vec3<bool>(true, true, true))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(min(930f, 1177f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(935f, 996f, true))), -1495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2274f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_div_vec4_f32(vec4<f32>(505f, 898f, -686f, 3022f), vec4<f32>(659f, -1178f, 659f, -552f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -480f, 212f, 1413f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 369f, -938f, -1599f), vec4<f32>(-609f, -1158f, -1419f, -913f)), !vec4<bool>(false, var_3.c.x, var_2, var_2)))))));
    var_3 = Struct_1(abs(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c.x, var_3.b.x, 13716u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, var_3.a.x, var_3.b.x, 0u), vec4<u32>(40689u, u_input.c.x, u_input.d.x, var_3.a.x), vec4<u32>(u_input.c.x, 90694u, var_3.b.x, 4294967295u))))), _wgslsmith_sub_vec3_u32(u_input.c, u_input.c | abs(vec3<u32>(56963u, var_3.b.x, var_3.a.x))), !select(!var_3.c, var_3.c, var_3.c));
    var_0 = 22132u;
    var var_5 = Struct_3(var_3.b.yx, Struct_2(!vec4<bool>(var_3.c.x | var_2, true, var_2 && var_2, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) >> (vec2<u32>(17525u, var_3.b.x) % vec2<u32>(32u)), ~var_3.b.xy), (vec3<u32>(1u, 33567u, var_3.a.x) >> (vec3<u32>(0u, var_3.b.x, var_3.b.x) % vec3<u32>(32u))) ^ var_3.b, var_3.c), var_4.x, firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(37604u, 0u, 55740u, u_input.c.x), vec4<u32>(75159u, var_3.b.x, 25439u, 35019u))) >> (~max(vec4<u32>(u_input.d.x, var_3.b.x, u_input.d.x, 17758u), vec4<u32>(u_input.d.x, 35433u, u_input.d.x, 4294967295u)) % vec4<u32>(32u))), select(var_3.c, !var_3.c, any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_i32(~select(vec3<i32>(8034i, -28867i, 1i), reverseBits(vec3<i32>(u_input.b, 1i, 16008i)), all(vec2<bool>(var_3.c.x, var_3.c.x))), vec3<i32>(-1i, _wgslsmith_sub_i32(2147483647i, u_input.a), _wgslsmith_div_i32(i32(-1i) * -21649i, countOneBits(-1i)))));
    let var_6 = vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit((var_5.a.x >> (var_5.a.x % 32u)) | 46535u), 15416u), u_input.c.x, 1u, 40483u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-1000f)), ~countOneBits(reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.e.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_4.yz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 2182f)))), var_4.wy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.b.c * -304f), var_4.x))), var_5.b.d);
}

