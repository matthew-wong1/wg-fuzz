struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(75922u, 12610u, 4294967295u), 0i, vec3<u32>(90730u, 1u, 1u), 576f);

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-1000f, 609f, -537f, 887f), vec4<f32>(-836f, 2250f, 145f, 410f), vec4<f32>(-1317f, 2328f, 1810f, 1000f), vec4<f32>(-1759f, -926f, -1445f, 113f), vec4<f32>(-2169f, 145f, -474f, -889f), vec4<f32>(238f, 129f, 102f, 271f), vec4<f32>(-488f, 356f, -1185f, 1000f), vec4<f32>(1000f, 2331f, 768f, -252f), vec4<f32>(639f, 247f, -2328f, -1000f), vec4<f32>(-1522f, 1000f, 1035f, 246f), vec4<f32>(-994f, -1000f, 1530f, 772f), vec4<f32>(-230f, -560f, 717f, 1386f), vec4<f32>(-876f, -1081f, 226f, -2355f), vec4<f32>(-589f, 355f, -323f, -1147f), vec4<f32>(-546f, 1882f, 978f, -257f), vec4<f32>(-176f, -328f, 288f, 315f), vec4<f32>(-220f, -1418f, 1720f, 503f), vec4<f32>(539f, 987f, 552f, 1722f), vec4<f32>(1853f, 361f, 2130f, 561f));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(19818u, 34777u, 16756u), 1i, vec3<u32>(34260u, 60763u, 1u), -377f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, global1.d, -254f) * vec3<f32>(-169f, global1.d, arg_2)), vec3<f32>(arg_2, -1430f, -448f)), vec3<f32>(_wgslsmith_f_op_f32(114f + global1.d), 1330f, _wgslsmith_div_f32(arg_1.d, arg_1.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d, arg_1.d, arg_1.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-206f, global3.d, -1398f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, global3.d, arg_2))))), false)))));
    global1 = Struct_1(arg_1.a ^ vec3<u32>(19262u, min(~global0[_wgslsmith_index_u32(4294967295u, 23u)], ~arg_3), countOneBits(min(arg_1.a.x, arg_1.a.x))), global1.b | 0i, vec3<u32>(0u, global3.c.x, _wgslsmith_mod_u32(arg_1.c.x, _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(global1.c, arg_1.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))))));
    let var_1 = false;
    let var_2 = Struct_2(arg_1, arg_1, !select(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1)), vec3<bool>(false, var_1, false), !vec3<bool>(var_1, false, var_1)), select(vec3<bool>(true, var_1, false), select(vec3<bool>(false, var_1, false), vec3<bool>(true, false, true), vec3<bool>(var_1, false, true)), all(vec2<bool>(false, false))), !(4294967295u > arg_1.a.x)));
    global3 = Struct_1(firstLeadingBit(~var_2.a.c), 2147483647i, vec3<u32>(~global3.c.x, reverseBits(0u), 1u), 1370f);
    return vec3<u32>(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(global1.a.x, 23u)], global3.a.x, 40305u) | global1.a), var_2.a.c), global0[_wgslsmith_index_u32(((~arg_1.c.x << (1u % 32u)) >> (_wgslsmith_mult_u32(~global1.c.x, global1.c.x | 33636u) % 32u)) ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~firstTrailingBit(global1.a.x), var_2.a.a.x), 23u)], 23u)], 8558u);
}

fn func_2() -> Struct_1 {
    global2 = array<vec4<f32>, 19>();
    global0 = array<u32, 23>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~4315u, 0u, 0u << (global1.a.x % 32u)), func_3(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, global3.b), vec3<i32>(global1.b, u_input.b, -12502i)), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 23u)], global1.c.x, 51526u), u_input.a.x, vec3<u32>(global0[_wgslsmith_index_u32(60322u, 23u)], 65851u, 74380u), -1371f), _wgslsmith_f_op_f32(ceil(-362f)), 92396u)), firstLeadingBit(_wgslsmith_add_i32(-41901i, global3.b) | 1i), vec3<u32>(1u, ~0u, ~(~global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d))), Struct_1(~(_wgslsmith_div_vec3_u32(global1.a, global1.c) ^ ~vec3<u32>(31913u, global1.a.x, 155256u)), ~_wgslsmith_div_i32(global3.b, -35586i), ~(~vec3<u32>(global0[_wgslsmith_index_u32(801u, 23u)], global3.c.x, global3.a.x)) >> (~vec3<u32>(global3.c.x, global1.c.x, global1.a.x) % vec3<u32>(32u)), -868f), vec3<bool>(abs(~global1.c.x) > ~firstTrailingBit(global3.a.x), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), true));
    return var_0.a;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    global2 = array<vec4<f32>, 19>();
    var var_0 = ~(~(~vec3<u32>(11500u, reverseBits(global1.c.x), global1.c.x)));
    var var_1 = arg_3;
    let var_2 = abs(_wgslsmith_div_i32(-33711i, u_input.b)) ^ -firstTrailingBit(global1.b);
    let var_3 = Struct_2(arg_3, Struct_1(~(~max(global1.a, var_1.a)), var_2, global3.c, _wgslsmith_f_op_f32(-global3.d)), vec3<bool>(true, max(-1i, -var_1.b) == 5244i, !(!all(arg_1))));
    return vec4<u32>(0u, abs(~arg_3.c.x), 36618u, ~max(~45526u, ~var_0.x) ^ ~max(var_0.x, ~var_3.a.a.x));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(((vec4<u32>(1u, global1.c.x, 4294967295u, 1166u) & ~vec4<u32>(42429u, global0[_wgslsmith_index_u32(global1.c.x, 23u)], global3.a.x, global3.c.x)) & func_4(843f, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true, func_2())) << ((~(vec4<u32>(global3.c.x, 1u, 34464u, 4294967295u) ^ vec4<u32>(global1.c.x, global1.a.x, 4294967295u, global1.a.x)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, global3.a.x, 1u, 1u), vec4<u32>(13825u, global0[_wgslsmith_index_u32(0u, 23u)], 60268u, global0[_wgslsmith_index_u32(0u, 23u)]))) % vec4<u32>(32u)), min(~(~(vec4<u32>(global0[_wgslsmith_index_u32(global1.a.x, 23u)], 0u, global1.c.x, 0u) | vec4<u32>(1u, global1.a.x, 41298u, 1u))), select(~vec4<u32>(global0[_wgslsmith_index_u32(global1.c.x, 23u)], global1.c.x, 3507u, 53167u), func_4(_wgslsmith_f_op_f32(sign(-642f)), vec2<bool>(false, false), any(vec2<bool>(false, false)), func_2()), select(all(vec2<bool>(true, true)), -533f > global1.d, true))));
    var var_1 = _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.d), global3.d)));
    var var_2 = _wgslsmith_sub_vec4_i32(max(vec4<i32>(reverseBits(1i), -(~1i), reverseBits(1i), 0i), vec4<i32>(i32(-1i) * -77603i, min(0i & global3.b, _wgslsmith_sub_i32(global1.b, global3.b)), -65736i << (abs(global1.c.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, 2147483647i, -11036i), abs(vec3<i32>(u_input.b, 11706i, global1.b))))), vec4<i32>(2147483647i, u_input.a.x, u_input.b, -5430i));
    let var_3 = func_2();
    let var_4 = Struct_1(var_3.a, 1i, vec3<u32>(~(~27637u), var_0, 1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(-516f * 2114f)))));
    return 25389u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.c | ~(vec3<u32>(global0[_wgslsmith_index_u32(49966u, 23u)], global1.c.x, global0[_wgslsmith_index_u32(83647u, 23u)]) >> ((global1.a ^ global3.c) % vec3<u32>(32u))), global3.b, ~vec3<u32>(func_1(), func_1(), _wgslsmith_clamp_u32(global3.c.x, 66337u, 50437u)), _wgslsmith_f_op_f32(-global3.d));
    global2 = array<vec4<f32>, 19>();
    let var_1 = var_0;
    var var_2 = Struct_2(func_2(), func_2(), select(vec3<bool>(true, true, true), vec3<bool>(true, _wgslsmith_sub_i32(var_1.b, u_input.b) != u_input.a.x, true), !(!any(vec2<bool>(true, false)))));
    var var_3 = Struct_1(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1299u, global1.a.x, 4294967295u)) >> (vec3<u32>(80469u, 4294967295u, var_0.a.x) % vec3<u32>(32u)), vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(553u, 23u)]) << (var_1.a % vec3<u32>(32u))), 0i, global1.a, -1307f);
    global2 = array<vec4<f32>, 19>();
    var var_4 = Struct_2(var_0, Struct_1(func_3(vec3<i32>(1i, -8951i, global3.b), var_2.b, func_2().d, global0[_wgslsmith_index_u32(countOneBits(0u), 23u)]) | vec3<u32>(~var_2.a.c.x, ~1u, countOneBits(31459u)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.b, 2147483647i, 9877i, var_3.b)) | -vec4<i32>(u_input.b, var_0.b, global1.b, -2296i), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, var_0.b, -13526i, 0i), ~vec4<i32>(-1i, var_0.b, u_input.b, var_0.b))), var_0.a, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) + _wgslsmith_f_op_f32(sign(592f)))))), select(vec3<bool>(true, var_2.b.a.x > 0u, var_2.c.x), select(!vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<bool>(any(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x)), true, any(vec3<bool>(true, var_2.c.x, true))), !any(var_2.c)), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.a.x, abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 13053i), vec2<i32>(var_1.b, global3.b) ^ u_input.a)));
}

