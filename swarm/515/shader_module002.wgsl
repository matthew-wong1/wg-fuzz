struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<f32, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(select(~(~11620u), ~47631u, true | select(false, true, any(vec4<bool>(true, false, false, true)))) << (1u % 32u), 23u)];
    let var_1 = Struct_1(vec3<bool>(all(vec3<bool>(true, true, true)), false || !any(vec3<bool>(false, true, false)), true), vec2<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), 1432f)) != arg_1.a.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, 0u)), vec2<u32>(u_input.b, 0u)), u_input.b) == _wgslsmith_add_u32(~max(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(32980u, 28031u), vec2<u32>(61150u, 4294967295u))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, ~1u), 23u)]), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))) | (-1434f == global2[_wgslsmith_index_u32(4294967295u, 23u)]));
    global1 = array<Struct_2, 21>();
    var var_2 = arg_1;
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, false))), -695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-260f))), -280f), arg_2, true)));
    return countOneBits(~firstTrailingBit(reverseBits(0u)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global2 = array<f32, 23>();
    let var_0 = vec3<u32>(0u, func_3(-1i, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, 276f, 1748f, arg_0) + vec4<f32>(arg_0, -892f, global2[_wgslsmith_index_u32(77143u, 23u)], 1094f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(92764u, 23u)], 815f, global2[_wgslsmith_index_u32(15355u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)])))) | ~(~_wgslsmith_add_u32(424u, u_input.b)), 8377u);
    global2 = array<f32, 23>();
    let var_1 = vec4<bool>(false, !(514f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(543f, arg_0))), !all(vec4<bool>(true, true, true, true)) | (firstTrailingBit(abs(arg_1)) == countOneBits(max(-1i, 52475i))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), global0[_wgslsmith_index_u32(1u, 14u)])) && any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))));
    global0 = array<vec2<bool>, 14>();
    return Struct_1(var_1.xxy, !global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 1u, 30374u, var_0.x)))), 14u)], true, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 23u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1214f)))), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    global2 = array<f32, 23>();
    var var_0 = max(~func_3(max(u_input.a, -5134i), Struct_2(vec4<f32>(arg_3, arg_2.d, 1000f, 111f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, 148f, -929f, -1991f) * vec4<f32>(-1131f, global2[_wgslsmith_index_u32(0u, 23u)], -1000f, -485f))) ^ 63981u, 56082u);
    var var_1 = ~0u;
    return any(select(arg_1, vec4<bool>(select(u_input.a >= -26683i, all(global0[_wgslsmith_index_u32(u_input.b, 14u)]), !arg_0.x), all(arg_1), arg_2.b.x, true), !all(!vec3<bool>(false, arg_2.c, arg_2.e))));
}

fn func_5(arg_0: bool) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 21u)];
    var var_1 = select(select(select(vec4<bool>(arg_0, true, any(vec4<bool>(true, false, arg_0, false)), func_2(1267f, u_input.a).a.x), select(vec4<bool>(true, arg_0, arg_0, true), !vec4<bool>(arg_0, arg_0, true, arg_0), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), false), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_0, false, true), vec4<bool>(true, arg_0, true, true)), !vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, true))), vec4<bool>(arg_0, true, !arg_0, true), select(!arg_0, func_4(vec2<bool>(true, arg_0), vec4<bool>(arg_0, false, true, true), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), vec2<bool>(true, arg_0), false, 1598f, arg_0), global2[_wgslsmith_index_u32(u_input.b, 23u)]), arg_0)), !select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, false), false)), select(!select(vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, false), arg_0), u_input.b <= 86880u), !select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, true, false, true)), !(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, false, false, true), vec4<bool>(arg_0, arg_0, true, true)))), vec4<bool>(!arg_0, arg_0, !(~u_input.b > _wgslsmith_dot_vec2_u32(vec2<u32>(42864u, u_input.b), vec2<u32>(75238u, u_input.b))), arg_0));
    var var_2 = ~40170u;
    global2 = array<f32, 23>();
    let var_3 = -abs(max(vec4<i32>(-11167i, _wgslsmith_dot_vec4_i32(vec4<i32>(2443i, u_input.a, 1i, -1i), vec4<i32>(u_input.a, -17495i, 1170i, u_input.a)), i32(-1i) * -36412i, u_input.a), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)));
    return select(var_1.zyz, vec3<bool>(_wgslsmith_f_op_f32(sign(-286f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(289f + global2[_wgslsmith_index_u32(39634u, 23u)]) + 1072f), any(select(vec2<bool>(true, true), func_2(var_0.a.x, u_input.a).b, vec2<bool>(var_1.x, arg_0))), arg_0), var_1.yyz);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = -1192f;
    global0 = array<vec2<bool>, 14>();
    return global1[_wgslsmith_index_u32(~4294967295u, 21u)];
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> u32 {
    global2 = array<f32, 23>();
    let var_0 = arg_2;
    var var_1 = func_6(Struct_1(func_5(func_4(select(global0[_wgslsmith_index_u32(arg_2, 14u)], global0[_wgslsmith_index_u32(17306u, 14u)], global0[_wgslsmith_index_u32(var_0, 14u)]), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), func_2(arg_0, 2147483647i), -563f)), vec2<bool>(!func_2(836f, u_input.a).a.x, true), true || ((-33806i < u_input.a) || any(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2, 23u)] - _wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(4294967295u, 23u)])))), func_2(1000f, _wgslsmith_mod_i32(-u_input.a, _wgslsmith_sub_i32(arg_1, 2147483647i))).b.x), vec2<i32>(firstTrailingBit(arg_1), abs(u_input.a)) >> (~(~(vec2<u32>(1u, 0u) << (vec2<u32>(0u, arg_2) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_2 = arg_0;
    var_1 = Struct_2(vec4<f32>(1364f, _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_f_op_f32(trunc(arg_0)))), global2[_wgslsmith_index_u32(~abs(~var_0), 23u)]));
    return ~max(~_wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(65181u, 0u)), countOneBits(reverseBits(0u))));
}

fn func_7(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 14>();
    var var_0 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.b | 0u, 23u)])) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 939f)), (u_input.b << (arg_2.x % 32u)) >= ~1u, true), global0[_wgslsmith_index_u32(arg_2.x, 14u)], false, 2257f, true);
    var var_1 = arg_2.x > ~_wgslsmith_clamp_u32(~(~4294967295u), ~0u, 22324u);
    let var_2 = Struct_2(func_6(Struct_1(select(func_2(arg_1.x, u_input.a).a, func_5(var_0.c), var_0.b.x), vec2<bool>(any(vec4<bool>(var_0.b.x, var_0.e, false, true)), true), 46575i == u_input.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1000f) - -1172f), true), vec2<i32>(~0i, 1i)).a);
    var var_3 = _wgslsmith_add_i32(-1i, u_input.a);
    return func_2(-408f, ~firstTrailingBit(_wgslsmith_sub_i32(1i, abs(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(min(-481f, global2[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.b, 23u)], global2[_wgslsmith_index_u32(35091u, 23u)], true)), -52062i, ~4294967295u), 23u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(8491u, 23u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 23u)])), _wgslsmith_f_op_f32(-1067f * 279f))), vec2<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.b, 23u)])), _wgslsmith_f_op_f32(-267f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 23u)])))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 70163u, 18252u, 17789u)), ~vec4<u32>(21166u, 7141u, 43743u, 22034u)), vec4<u32>(~57632u, firstTrailingBit(3229u), u_input.b | u_input.b, ~4294967295u), ~(~vec4<u32>(1u, u_input.b, 48675u, 4294967295u))), vec4<u32>(u_input.b, 1u ^ u_input.b, firstLeadingBit(~u_input.b), min(u_input.b, u_input.b << (38452u % 32u)))));
    let var_1 = func_6(var_0, min(vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 0i), countOneBits(~vec2<i32>(u_input.a, u_input.a)))));
    var var_2 = var_1;
    var var_3 = var_1.a.x;
    global0 = array<vec2<bool>, 14>();
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1581f), var_0.d, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x - -100f))), -663f)));
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.x)) - -2077f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(472f)))), -117f, var_4.x), 219f, func_6(Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(var_0.c, var_0.a.x, var_0.e), vec3<bool>(var_0.a.x, var_0.c, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 4294967295u)), select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, var_0.c))), 14u)], 5117u == _wgslsmith_mult_u32(0u, u_input.b), func_2(-933f, firstLeadingBit(u_input.a)).d, func_5(all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.a.x))).x), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(8881i, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-1568i, -1i)) >> (~vec2<u32>(u_input.b, 11575u) % vec2<u32>(32u))).a.x, vec2<f32>(-789f, _wgslsmith_f_op_f32(-var_1.a.x)));
}

