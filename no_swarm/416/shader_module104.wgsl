struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = countOneBits(abs(1u)) | _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.c, 75865u, u_input.c)), abs(max(vec4<u32>(1u, u_input.c, u_input.c, 35793u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, u_input.a.x)))));
    global0 = array<f32, 11>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, var_0, abs(~(u_input.c ^ 4294967295u))), 11u)];
    var var_2 = Struct_2(select(select(reverseBits(u_input.a & u_input.a), _wgslsmith_div_vec3_u32(u_input.a, ~vec3<u32>(u_input.c, u_input.d.x, 0u)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), u_input.a), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), Struct_1(-1429f, vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(13369u, 23109u, var_0), vec3<u32>(u_input.a.x, 16598u, 15264u))), ~firstTrailingBit(87893u)), true, vec2<u32>(~abs(67416u), var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-976f, _wgslsmith_f_op_f32(662f + _wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-240f, -686f), global0[_wgslsmith_index_u32(8232u & var_0, 11u)]), -272f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(796f, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 871f, -2069f) + vec4<f32>(2338f, global0[_wgslsmith_index_u32(0u, 11u)], -149f, -1690f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(28588u, 11u)], -1301f, global0[_wgslsmith_index_u32(0u, 11u)], 971f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], 794f, 617f, 792f))), vec4<f32>(983f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 11u)]), _wgslsmith_f_op_f32(-1588f - global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(43450u, 11u)] * global0[_wgslsmith_index_u32(52958u, 11u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], global0[_wgslsmith_index_u32(var_0, 11u)]))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], _wgslsmith_f_op_f32(548f - global0[_wgslsmith_index_u32(var_0, 11u)])) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(38995u, 11u)], 1686f) - vec2<f32>(-2674f, -114f)), vec2<f32>(global0[_wgslsmith_index_u32(37288u, 11u)], 1802f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)), u_input.d, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), all(vec3<bool>(true, true, true)))), _wgslsmith_mod_vec2_u32(~abs(u_input.a.xy), ~vec2<u32>(u_input.d.x, 106271u) << (u_input.a.zx % vec2<u32>(32u)))));
    var var_3 = var_2.c.x;
    return _wgslsmith_dot_vec3_u32(var_2.a & ~(~u_input.a), var_2.a);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = countOneBits(select(vec4<u32>(arg_0.x, 13761u, ~10677u, func_3()), ~arg_0, vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(26511u, 1u)) | ((0u >> (var_0.x % 32u)) | arg_0.x)), 11u)], vec2<u32>(min(u_input.a.x, 22860u & u_input.c), reverseBits(_wgslsmith_add_u32(var_0.x | 4294967295u, 0u))), true, ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.d, select(var_0.zy, u_input.d, true)), _wgslsmith_mod_vec2_u32(~vec2<u32>(53023u, var_0.x), var_0.wz)));
    let var_2 = arg_0.yz;
    var var_3 = vec2<u32>(var_1.b.x >> (~54769u % 32u), _wgslsmith_clamp_u32(max(172755u, ~1u), countOneBits(var_2.x >> (12349u % 32u)), u_input.a.x)) & _wgslsmith_sub_vec2_u32(reverseBits(var_1.b), vec2<u32>((4294967295u ^ var_2.x) >> (~4294967295u % 32u), var_0.x));
    var var_4 = all(select(vec3<bool>(!select(var_1.c, false, var_1.c), true, !(var_1.b.x >= 1u)), select(select(!vec3<bool>(var_1.c, false, var_1.c), select(vec3<bool>(var_1.c, false, false), vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, false, true)), select(false, var_1.c, false)), vec3<bool>(select(var_1.c, true, var_1.c), var_1.c & var_1.c, any(vec2<bool>(var_1.c, var_1.c))), select(!var_1.c, var_1.c, -22573i <= u_input.b)), true));
    return 4294967295u;
}

fn func_4(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = array<f32, 11>();
    let var_0 = Struct_2(vec3<u32>(~arg_0.x, ~countOneBits(~2129u), abs(_wgslsmith_mult_u32(1u, 16166u))), Struct_1(-126f, arg_0.zz, true, _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d.x), vec2<u32>(0u, 1u))), arg_0.yz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(917f - global0[_wgslsmith_index_u32(arg_0.x, 11u)]), global0[_wgslsmith_index_u32(~u_input.c, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_f32(183f * global0[_wgslsmith_index_u32(u_input.d.x, 11u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], 2286f, global0[_wgslsmith_index_u32(4294967295u, 11u)], 982f) * vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 11u)], 705f, global0[_wgslsmith_index_u32(0u, 11u)], -174f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-916f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] + global0[_wgslsmith_index_u32(35027u, 11u)]))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_0.x, 11u)]))) * global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(0u, u_input.c)), 11u)]), select(_wgslsmith_sub_vec2_u32(arg_0.zy, vec2<u32>(arg_0.x, 0u) << (arg_0.xx % vec2<u32>(32u))), ~(~vec2<u32>(u_input.d.x, u_input.c)), !all(vec4<bool>(false, false, false, true))), 11311i == _wgslsmith_sub_i32(0i | u_input.b, 360i), _wgslsmith_mod_vec2_u32(arg_0.zz, vec2<u32>(u_input.c | arg_0.x, ~u_input.d.x))));
    var var_1 = -min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, ~u_input.b), -16160i), select(1i, ~u_input.b, true));
    var_1 = 2147483647i;
    var var_2 = Struct_1(-1394f, arg_0.xz, 17044u >= arg_0.x, arg_0.zy);
    return ~select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 5994u, arg_0.x, 31065u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(15151u, 4294967295u, u_input.c, arg_0.x), vec4<u32>(arg_0.x, 36624u, 35146u, 46241u))), vec4<u32>(var_2.b.x, 3313u, _wgslsmith_add_u32(~var_0.b.d.x, 0u), _wgslsmith_add_u32(~u_input.c, ~6383u)), !select(select(vec4<bool>(var_2.c, var_2.c, var_2.c, false), vec4<bool>(false, var_2.c, var_2.c, false), vec4<bool>(true, var_0.b.c, false, var_0.b.c)), vec4<bool>(var_2.c, true, true, true), select(vec4<bool>(false, var_0.e.c, var_2.c, true), vec4<bool>(true, var_2.c, var_2.c, false), false)));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    var var_0 = vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-39476i, -14899i), max(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b))), countOneBits(-_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(1i, 54531i)))), -_wgslsmith_mult_i32(~(-55003i), countOneBits(~(-1405i))));
    global0 = array<f32, 11>();
    var var_1 = func_4(~max(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 5737u), u_input.a)), vec3<u32>(u_input.c, firstLeadingBit(u_input.d.x), func_2(vec4<u32>(arg_0, u_input.d.x, 148326u, 4294967295u)))));
    global0 = array<f32, 11>();
    let var_2 = ~(~(~(~vec4<u32>(55713u, 9690u, 0u, arg_0) | abs(vec4<u32>(66530u, 4294967295u, u_input.d.x, 1u)))));
    return select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), any(vec4<bool>(true, false, true, false)))), !select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec2<bool>(false, true)))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_0 = Struct_1(-717f, u_input.d, any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), func_1(12056u)), func_1(~u_input.d.x))), _wgslsmith_mod_vec2_u32(u_input.d, ~vec2<u32>(0u, 16671u)));
    let var_1 = vec4<bool>(true, var_0.c, func_1(~1u).x, all(vec4<bool>(var_0.c, !var_0.c == false, !all(vec4<bool>(false, false, false, false)), false != all(vec2<bool>(var_0.c, false)))));
    let var_2 = _wgslsmith_dot_vec4_i32(min(~vec4<i32>(2147483647i << (0u % 32u), ~u_input.b, max(u_input.b, 1i), u_input.b), select(vec4<i32>(-u_input.b, -u_input.b, 32239i, -10819i), firstLeadingBit(~vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), select(select(var_1, var_1, false), select(var_1, var_1, var_1.x), all(var_1)))), min((-vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.d.x) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), 0i, u_input.b, _wgslsmith_div_i32(u_input.b, 6096i)), vec4<i32>(0i, u_input.b, _wgslsmith_clamp_i32(firstTrailingBit(-1i), u_input.b, ~u_input.b), _wgslsmith_mult_i32(max(u_input.b, u_input.b), abs(u_input.b)))));
    global0 = array<f32, 11>();
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec4<i32>(var_2, 9913i, var_2, 2147483647i), _wgslsmith_add_vec4_i32(~vec4<i32>(-16102i, -36126i, -28030i, var_2), vec4<i32>(var_2, u_input.b, var_2, var_2)), var_1), select(firstLeadingBit(vec3<i32>(var_2 ^ -28788i, ~var_2, _wgslsmith_mod_i32(u_input.b, -1i))), ~firstLeadingBit(~vec3<i32>(13628i, var_2, u_input.b)), false));
}

