struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 23> = array<f32, 23>(-223f, -781f, 1006f, 2056f, 1879f, 331f, -965f, -387f, 784f, -749f, 1013f, 337f, 1757f, -986f, 297f, -1000f, 1250f, -706f, 121f, 129f, 269f, 749f, -328f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.a.x << (13205u % 32u), 23u)], u_input.a.x);
    let var_1 = -19711i;
    let var_2 = Struct_1(292f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 23u)] - -112f), 1u, ~(~(-(vec4<i32>(49119i, var_1, var_1, var_1) ^ vec4<i32>(var_1, var_1, -9490i, -40456i)))), abs(8956i));
    global1 = array<f32, 23>();
    var var_3 = vec3<f32>(-1090f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2.a, var_2.a, true)))))), _wgslsmith_f_op_f32(-314f - -661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -721f), -100f, true))) - _wgslsmith_f_op_f32(1483f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1369f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))))));
    return vec4<bool>(true, true, all(vec3<bool>(!select(false, false, true), true, all(vec4<bool>(true, true, true, true)))), all(vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true)) || !all(vec3<bool>(false, true, false)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_div_f32(1000f, 696f), (_wgslsmith_mod_u32(u_input.a.x, 31289u) | ~(u_input.a.x | 70042u)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.a.x, 23761u) % vec2<u32>(32u))), 1u) % 32u));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~abs(1i), -_wgslsmith_add_i32(14651i, -48775i), -(~(-2228i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(1i, 0i, -27024i))), countOneBits(vec4<i32>(1i, _wgslsmith_mod_i32(0i, -22357i), 1i, 9103i))), -(~7637i));
    global1 = array<f32, 23>();
    var var_2 = 580f;
    var var_3 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x != 0i, true, true, any(vec2<bool>(false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), func_3(), all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1191f, _wgslsmith_f_op_f32(-1182f * var_0.a), _wgslsmith_f_op_f32(arg_1.x * var_0.a), -1000f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> vec3<u32> {
    let var_0 = select(vec4<bool>(any(select(!vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, false, false), select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(true, false, arg_3), vec3<bool>(false, false, true)))), arg_3, arg_1.e != ~15661i, arg_3), vec4<bool>(!((arg_2.x != -485f) | all(vec4<bool>(true, arg_3, true, true))), !any(func_3().zz), func_3().x & arg_3, all(select(!vec4<bool>(true, false, arg_3, true), vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(false, arg_3, arg_3, arg_3)))), !select(vec4<bool>(arg_3, arg_3, all(vec4<bool>(arg_3, true, false, arg_3)), -7175i <= arg_1.e), vec4<bool>(false, all(vec2<bool>(false, true)), !arg_3, !arg_3), all(vec3<bool>(false, true, arg_3))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(0u, ~firstTrailingBit(27426u)), arg_1.c), 23u)], u_input.a.x);
    global0 = -35773i;
    let var_2 = Struct_2(var_1.a, ~(~select(4294967295u, 0u, arg_3)) ^ select(var_1.b, _wgslsmith_add_u32(69134u, 1u), arg_3));
    var var_3 = ~(~vec3<i32>(-2147483647i, -_wgslsmith_mod_i32(arg_1.d.x, -46198i), ~2147483647i));
    return max(abs(vec3<u32>(var_2.b, countOneBits(12589u & arg_1.c), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), select(u_input.a, u_input.a, arg_3)))), vec3<u32>(4294967295u, _wgslsmith_div_u32(var_2.b ^ var_2.b, ~var_2.b), _wgslsmith_dot_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_2.b), vec3<u32>(66429u, var_2.b, 31536u)), ~vec3<u32>(4294967295u, var_1.b, 3331u)), vec3<u32>(var_2.b, abs(82482u), var_1.b))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a), global1[_wgslsmith_index_u32(39883u, 23u)]) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2024f, arg_2.a))) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(arg_2.b, 23u)]))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(arg_2.b, 23u)])))))));
    let var_2 = select(-_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, -19246i), -vec3<i32>(15334i, 16545i, -2147483647i)), reverseBits(vec3<i32>(12709i, 7933i, 20329i))), vec3<i32>(1i, 1i, 1i), false);
    var var_3 = firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, var_2.x, var_2.x), vec3<i32>(-59721i, var_2.x, var_2.x), func_3().x), _wgslsmith_add_vec3_i32(-vec3<i32>(-37690i, -30077i, 29276i), ~vec3<i32>(var_2.x, 0i, -17467i))), vec3<i32>(-2147483647i & reverseBits(var_2.x), _wgslsmith_mult_i32(0i, var_2.x), max(1i, abs(-58851i)))));
    var var_4 = vec2<u32>(select(0u, arg_2.b, select(var_0, var_0, func_3().x)), firstLeadingBit(arg_0.x));
    return arg_2;
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<f32, 23>();
    var var_0 = func_5(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u), ~70151u)) >> (select(func_4(_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(global1[_wgslsmith_index_u32(24561u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 811f), vec2<f32>(-1000f, -1466f))), Struct_1(1362f, global1[_wgslsmith_index_u32(55786u, 23u)], u_input.a.x, vec4<i32>(arg_0, 2147483647i, arg_0, arg_0), 2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), false), vec3<u32>(u_input.a.x & u_input.a.x, ~u_input.a.x, ~38743u), !func_3().x) % vec3<u32>(32u)), vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))) * _wgslsmith_f_op_f32(ceil(-569f))), 54640u), !vec4<bool>(func_3().x && select(false, false, true), true, select(false, true, false), any(vec2<bool>(true, true))));
    global0 = min(arg_0, 2147483647i);
    var_0 = Struct_2(var_0.a, 56581u | _wgslsmith_div_u32(func_5(vec3<u32>(u_input.a.x, var_0.b, u_input.a.x) & vec3<u32>(var_0.b, var_0.b, 15595u), u_input.a, func_5(vec3<u32>(1u, 1u, u_input.a.x), vec2<u32>(52489u, var_0.b), Struct_2(1160f, var_0.b), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)).b, _wgslsmith_sub_u32(max(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(5239u, 4294967295u, u_input.a.x), vec3<u32>(0u, var_0.b, u_input.a.x)))));
    var var_1 = func_5(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, 54886u, 4294967295u) ^ vec3<u32>(1u, 1u, 2913u), select(vec3<u32>(var_0.b, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 139732u, 369u), vec3<bool>(true, false, true))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35566u, 4294967295u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 15643u, 15123u, var_0.b)), 31306u, u_input.a.x)), u_input.a, Struct_2(-309f, (~var_0.b | 47836u) & u_input.a.x), !vec4<bool>(true, (u_input.a.x < 15823u) || (arg_0 <= -1i), abs(-2147483647i) > (2147483647i & arg_0), !all(vec3<bool>(false, false, false))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u ^ u_input.a.x) & ~func_1(26038i), 23u)], global1[_wgslsmith_index_u32(select(~u_input.a.x, func_1(firstLeadingBit(0i)), false), 23u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(23446u, 23u)], 1178f), vec2<f32>(-1170f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, -303f)))) + vec2<f32>(401f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))));
    global1 = array<f32, 23>();
    global0 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(min(0i, 18589i), i32(-1i) * -1i), ~(-select(2147483647i, -42281i, false)), -20872i) ^ abs(19671i);
    global1 = array<f32, 23>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26909u, 23u)]), _wgslsmith_f_op_f32(f32(-1f) * -743f), ~1u, vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(-21148i, -40934i)) | -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -1i, 41888i)), abs(vec3<i32>(2147483647i, 0i, 51598i))), ~0i), 9819i, -38046i), _wgslsmith_add_i32(-(_wgslsmith_sub_i32(-1i, -38044i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(59697u, 12650u)) % 32u)), ~(-19573i)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, 199f, 135f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -1420f, 1308f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1554f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))) * vec2<f32>(_wgslsmith_f_op_f32(var_0.x + global1[_wgslsmith_index_u32(var_1.c, 23u)]), _wgslsmith_f_op_f32(1000f + global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))))).x, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(0u, 1u, 104476u), vec3<u32>(15666u, var_1.c, 58666u)), reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x))), countOneBits(~vec3<u32>(135677u, var_1.c, var_1.c)))));
    global0 = -1i;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-402f, 252f), _wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(var_1.a, -1375f, -1352f), vec2<f32>(var_2.a, 562f))).x) * vec2<f32>(_wgslsmith_f_op_f32(var_1.a + 1344f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(60201u, 23u)], var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a, 1035f), vec2<f32>(var_2.a, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))), vec2<f32>(102f, -361f))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_2.a))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1009f))))), reverseBits(u_input.a.x << (~u_input.a.x % 32u)), ~(-vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.d, vec4<i32>(var_1.d.x, -1i, 0i, 2147483647i)), i32(-1i) * -18137i, _wgslsmith_dot_vec2_i32(var_1.d.xx, vec2<i32>(var_1.d.x, var_1.d.x)), var_1.e)), -min(49684i, ~var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, var_1.a)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~abs(12050u), 23u)])));
}

