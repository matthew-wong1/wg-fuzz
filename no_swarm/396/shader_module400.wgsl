struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b) ^ min(u_input.d, vec3<u32>(u_input.c.x, 2396u, u_input.b)), u_input.d), _wgslsmith_f_op_f32(-578f + 597f), !(select(false, true, true) & false), -59317i, arg_1.a));
    let var_1 = Struct_3(var_0.a);
    var_0 = var_1;
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    return _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(select(countOneBits(vec4<i32>(u_input.a.x, 11743i, var_0.a.d, -1i)), vec4<i32>(var_0.a.d, -13773i, -1i, -1i), true), ~abs(vec4<i32>(71015i, -18297i, u_input.a.x, var_0.a.d))), -select(countOneBits(vec4<i32>(-53881i, var_0.a.d, u_input.a.x, -26214i)), -vec4<i32>(var_0.a.d, -2147483647i, 2147483647i, -10147i), vec4<bool>(var_1.a.c, true, var_0.a.c, false))), -max(-vec4<i32>(22978i, var_1.a.d, var_0.a.d, 2147483647i) | vec4<i32>(var_0.a.d, -2147483647i, -52878i, 38120i), ~select(vec4<i32>(var_0.a.d, var_1.a.d, var_0.a.d, -1i), vec4<i32>(var_1.a.d, 49149i, 2147483647i, u_input.a.x), var_0.a.c)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> i32 {
    global0 = array<vec4<f32>, 20>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-722f, -186f) + vec2<f32>(arg_3.a.e, arg_2.x)) + vec2<f32>(arg_3.a.e, arg_2.x)))), vec2<f32>(723f, arg_2.x));
    let var_1 = Struct_1(u_input.d, _wgslsmith_f_op_f32(-var_0.x), !select(any(arg_1) || arg_1.x, arg_1.x, true), -(~_wgslsmith_clamp_i32(-21483i, arg_3.a.d, arg_3.a.d)) | (firstLeadingBit(_wgslsmith_mult_i32(1i, 2147483647i)) ^ func_3(Struct_2(829f), Struct_2(arg_3.a.e))), var_0.x);
    var var_2 = arg_1.x;
    var_2 = var_1.c;
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global0 = array<vec4<f32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f - -240f) + arg_3.a.e)), arg_3.a.e, false)) - arg_3.a.b);
    var var_1 = false;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, var_0), vec3<f32>(1000f, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1553f, arg_3.a.b, var_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1357f, 1024f, _wgslsmith_f_op_f32(988f + -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.a.b, -322f, var_0), vec3<f32>(-1767f, 335f, -635f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-649f, -2011f, -225f))))))));
    let var_3 = arg_3;
    return Struct_2(609f);
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b, 20u)];
    let var_1 = firstLeadingBit(i32(-1i) * -6013i);
    let var_2 = func_4(select(firstLeadingBit(~vec4<i32>(53807i, 5163i, var_1, -24523i)), -vec4<i32>(~u_input.a.x, -35570i, _wgslsmith_mult_i32(u_input.a.x, -5557i), u_input.a.x), true), vec2<i32>(~func_2(u_input.d.xz, vec4<bool>(true, true, false, true), var_0.ywy, Struct_3(Struct_1(vec3<u32>(u_input.c.x, 9459u, 59833u), arg_0, true, var_1, arg_0))), u_input.a.x) | u_input.a, u_input.a.x, Struct_3(Struct_1(vec3<u32>(firstTrailingBit(u_input.c.x), 4294967295u, ~u_input.b), var_0.x, true, u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_0), var_0.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), 261f)), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -18674i, 33897i, var_1), vec4<i32>(var_1, var_1, 0i, var_1)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -13885i), u_input.a), u_input.a.x, Struct_3(Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, u_input.b), 1326f, false, -13347i, -557f))).a)) * 534f), var_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, 769f))), _wgslsmith_f_op_f32(min(var_2.a, var_2.a))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1806f, _wgslsmith_f_op_f32(-var_2.a), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -359f) + _wgslsmith_f_op_f32(-766f + -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, 1000f, var_0.x, 257f) - global0[_wgslsmith_index_u32(43350u, 20u)]) * vec4<f32>(var_0.x, 916f, -1593f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 137f, -1000f, var_0.x)))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)))));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(reverseBits(u_input.a.x), -u_input.a.x) ^ (_wgslsmith_mult_i32(_wgslsmith_mult_i32(-3822i, 1i), u_input.a.x) ^ 24126i), _wgslsmith_dot_vec4_i32(vec4<i32>(func_1(956f), select(u_input.a.x, 0i, false), u_input.a.x, 1i) << (firstTrailingBit(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.d.x)) % vec4<u32>(32u)), -(~(~vec4<i32>(0i, -4416i, -32609i, u_input.a.x)))));
    var var_1 = func_2(u_input.c.wx ^ _wgslsmith_mult_vec2_u32(~u_input.c.xy, ~countOneBits(vec2<u32>(u_input.b, u_input.c.x))), vec4<bool>(true, false, select(false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), true), 165f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-614f)) * _wgslsmith_f_op_f32(sign(-768f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(455f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1427f, 651f)) - _wgslsmith_f_op_f32(trunc(1000f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-408f, -933f)), _wgslsmith_f_op_f32(-1975f * 1722f), -868f))), Struct_3(Struct_1(vec3<u32>(~1u, 0u | u_input.b, u_input.d.x), _wgslsmith_f_op_f32(select(-1051f, 1000f, true)), all(vec2<bool>(true, true)), u_input.a.x, _wgslsmith_f_op_f32(-1630f + _wgslsmith_f_op_f32(f32(-1f) * -1038f)))));
    global0 = array<vec4<f32>, 20>();
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_div_u32(max(4294967295u | u_input.d.x, countOneBits(u_input.b)), 64122u), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), u_input.d), vec3<u32>(u_input.c.x, u_input.c.x, min(u_input.b, u_input.b))), abs(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f + -333f)), true, firstLeadingBit(u_input.a.x) & -85329i, _wgslsmith_f_op_f32(-1472f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i), u_input.a, u_input.a.x, Struct_3(Struct_1(u_input.c.xwx, -353f, false, -5131i, -163f))).a + _wgslsmith_f_op_f32(ceil(-266f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), 1258f)))));
    global0 = array<vec4<f32>, 20>();
    let var_3 = Struct_3(Struct_1(((vec3<u32>(var_2.a.x, 34262u, u_input.b) << (vec3<u32>(u_input.b, var_2.a.x, 62663u) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(var_2.a, var_2.a)) & vec3<u32>(var_2.a.x, ~4294967295u, firstTrailingBit(4294967295u)), _wgslsmith_f_op_f32(-func_4(-vec4<i32>(-1i, -7828i, -32594i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.d, 0i), vec2<i32>(u_input.a.x, var_2.d)), u_input.a.x, Struct_3(Struct_1(vec3<u32>(var_2.a.x, 1u, var_2.a.x), var_2.e, var_2.c, -1i, -241f))).a), select(false, _wgslsmith_sub_u32(var_2.a.x, u_input.d.x) <= _wgslsmith_dot_vec3_u32(u_input.d, u_input.c.xzx), (u_input.a.x | 1i) == func_2(var_2.a.yy, vec4<bool>(false, var_2.c, var_2.c, var_2.c), vec3<f32>(1612f, -1366f, var_2.e), Struct_3(Struct_1(u_input.d, var_2.b, true, u_input.a.x, var_2.b)))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(53761i, -19104i, 2147483647i, var_2.d) ^ vec4<i32>(-1i, u_input.a.x, 2147483647i, var_2.d)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.d, var_2.d, u_input.a.x, 0i), vec4<i32>(var_2.d, 28445i, var_2.d, -13165i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))));
    var var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

