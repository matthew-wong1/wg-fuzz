struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-12539i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), -40439i), vec2<i32>(49876i, 0i), vec2<i32>(0i, 0i), vec2<i32>(-41512i, -36719i), vec2<i32>(-1i, -37543i), vec2<i32>(0i, 48567i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(false, vec2<f32>(1401f, -1186f), 9507i, Struct_1(vec4<i32>(0i, -1i, 36628i, 21184i), vec4<f32>(-180f, -2539f, -601f, 256f), false, 58974u), false), Struct_3(true, vec2<f32>(-982f, 664f), 47138i, Struct_1(vec4<i32>(6004i, i32(-2147483648), 35144i, 15094i), vec4<f32>(1139f, 773f, -1902f, -949f), true, 25612u), false), Struct_3(false, vec2<f32>(1046f, -867f), -7217i, Struct_1(vec4<i32>(1i, 2072i, -5252i, -47329i), vec4<f32>(-280f, 563f, -1459f, 673f), false, 4294967295u), true), Struct_3(false, vec2<f32>(859f, 437f), 48920i, Struct_1(vec4<i32>(5641i, 1i, 1i, 36431i), vec4<f32>(-125f, 1000f, 190f, 1337f), true, 4627u), true), Struct_3(true, vec2<f32>(1165f, -737f), 1i, Struct_1(vec4<i32>(-33007i, 20039i, i32(-2147483648), 0i), vec4<f32>(246f, 1000f, -1000f, -1605f), false, 4294967295u), false), Struct_3(false, vec2<f32>(926f, -669f), -37830i, Struct_1(vec4<i32>(-15841i, -7782i, -1i, 2147483647i), vec4<f32>(-195f, 288f, 571f, -543f), true, 20680u), false), Struct_3(true, vec2<f32>(-545f, 348f), 0i, Struct_1(vec4<i32>(851i, -3560i, -49439i, 2147483647i), vec4<f32>(222f, 1685f, -1062f, 1000f), true, 6344u), true), Struct_3(false, vec2<f32>(704f, 421f), -1i, Struct_1(vec4<i32>(27432i, 1i, -1i, -1i), vec4<f32>(-1000f, 1136f, -636f, -622f), false, 1u), false), Struct_3(false, vec2<f32>(-374f, 867f), 9769i, Struct_1(vec4<i32>(12410i, 55634i, -20568i, 2147483647i), vec4<f32>(1000f, -929f, -1000f, -745f), true, 4294967295u), true));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(select(_wgslsmith_mod_vec4_i32(vec4<i32>(10813i, u_input.b, u_input.c, u_input.b), vec4<i32>(u_input.c, u_input.c, u_input.c, 6593i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -66295i, u_input.b, u_input.c), vec4<i32>(-1i, 16565i, u_input.b, u_input.b)), abs(vec4<i32>(-1i, u_input.c, u_input.b, u_input.b)), !select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, false, arg_0, arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1044f, -1139f, 166f, 1189f))), vec4<f32>(1f, 1f, 1f, 1f)), any(vec2<bool>(true, true)), 4294967295u));
    let var_1 = _wgslsmith_dot_vec3_u32(~min(vec3<u32>(firstTrailingBit(0u), var_0.a.d, ~arg_1), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, var_0.a.d, u_input.d), ~vec3<u32>(4294967295u, 90012u, 1u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, arg_1, 15874u), ~(~vec3<u32>(u_input.a, 0u, 35772u))), ~vec3<u32>(0u | u_input.a, ~4294967295u, ~66805u)));
    var var_2 = select(vec4<bool>(any(vec3<bool>(all(vec4<bool>(true, false, arg_0, false)), true, arg_0)), var_0.a.c, var_0.a.c, var_0.a.c), select(vec4<bool>(!var_0.a.c == (var_0.a.b.x > 2068f), (arg_0 || arg_0) && all(vec2<bool>(arg_0, false)), false, var_0.a.c | true), !(!select(vec4<bool>(true, arg_0, var_0.a.c, arg_0), vec4<bool>(false, true, arg_0, var_0.a.c), var_0.a.c)), vec4<bool>(!arg_0, true, all(!vec4<bool>(arg_0, true, true, false)), !any(vec3<bool>(var_0.a.c, true, var_0.a.c)))), -1624f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.b.x)))));
    var var_3 = var_0.a.d;
    global3 = array<Struct_3, 9>();
    return ~(~(~var_0.a.d));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<u32>(u_input.d, ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a >> (4294967295u % 32u)), abs(vec2<u32>(u_input.d, 4294967295u)))) | vec3<u32>(~_wgslsmith_add_u32(1u << (u_input.d % 32u), u_input.a), 4294967295u, ~func_3(false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 15362u, 58055u), vec4<u32>(u_input.a, u_input.d, u_input.a, 4051u))));
    let var_1 = u_input.c;
    let var_2 = ~vec4<u32>(13429u, var_0.x, u_input.a, u_input.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -404f))))), 663f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(134f, -1000f, -627f)))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(1389f, 864f, -867f)))), vec3<f32>(_wgslsmith_div_f32(286f, _wgslsmith_div_f32(-1000f, -388f)), _wgslsmith_div_f32(340f, -234f), -1151f)));
    var var_4 = true;
    return Struct_2(Struct_1(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_1), var_1, var_1 << (u_input.d % 32u), firstLeadingBit(-1i)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + 526f), -620f), _wgslsmith_f_op_f32(select(var_3.x, -147f, all(vec3<bool>(false, true, true)))), 1031f, _wgslsmith_f_op_f32(-var_3.x)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), true)), 21936u));
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1481f - -2452f) * _wgslsmith_f_op_f32(f32(-1f) * -1582f))))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), 272f))));
    let var_1 = func_2();
    var var_2 = -453f;
    global2 = array<vec2<i32>, 11>();
    return vec4<i32>(~func_2().a.a.x, var_1.a.a.x, _wgslsmith_sub_i32(-2147483647i, ~(-u_input.c >> (~u_input.a % 32u))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -833f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1089f, 456f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(f32(-1f) * -412f))), _wgslsmith_dot_vec4_i32(min(firstTrailingBit(~vec4<i32>(-45472i, u_input.b, u_input.b, u_input.b)), -(vec4<i32>(-1i, u_input.b, 1i, 0i) >> (vec4<u32>(0u, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, -2147483647i), u_input.b, u_input.b, ~57538i), func_1())), Struct_1(_wgslsmith_div_vec4_i32(-(vec4<i32>(39594i, u_input.c, u_input.b, -2147483647i) >> (vec4<u32>(u_input.a, 58810u, 94755u, u_input.d) % vec4<u32>(32u))), -reverseBits(vec4<i32>(24017i, u_input.c, -8823i, u_input.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, -1381f, -1929f, -1685f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(629f, 254f, 1391f, -1000f), vec4<f32>(-383f, 461f, -993f, 1763f))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, 1267f, 116f, -1884f)))), all(vec2<bool>(any(vec4<bool>(true, false, false, false)), true)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.a, 1u), u_input.d, func_3(any(vec2<bool>(false, false)), firstTrailingBit(u_input.a)))), true);
    var var_1 = var_0.d.b;
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, ~var_0.d.d) & (firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 0u)) | vec3<u32>(u_input.d, var_0.d.d, 34301u)), vec3<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.d, 3u)] | global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1274u), 3u)]), u_input.d, 4294967295u & countOneBits(u_input.d))) | (vec3<u32>(u_input.d, 0u, u_input.a) & firstLeadingBit(~(vec3<u32>(0u, var_0.d.d, u_input.a) | vec3<u32>(u_input.a, var_0.d.d, var_0.d.d))));
    let var_3 = ~(~(~vec4<u32>(0u, max(u_input.d, 0u), ~0u, ~u_input.d)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.d.b.zyx + var_0.d.b.ywy))))));
    var var_5 = var_0.d.a.x;
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(func_2().a.b.xxz)) * vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2074f * var_0.b.x), _wgslsmith_f_op_f32(-2019f - 310f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 768f) - _wgslsmith_f_op_f32(floor(var_0.d.b.x))))), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-618f))))))));
    var var_7 = Struct_1(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.d.a.x, var_0.c, -16719i), var_0.d.a), _wgslsmith_clamp_i32(5433i, u_input.b, u_input.b), 1i, _wgslsmith_add_i32(-2147483647i, var_0.d.a.x)), vec4<f32>(-1000f, 797f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.d.b.x, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(select(var_6.x, var_0.b.x, var_0.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), true, 45457u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-905f, _wgslsmith_f_op_f32(-var_0.d.b.x))), -492f) - 1166f), vec4<u32>(var_0.d.d, 19785u ^ var_3.x, firstLeadingBit(u_input.d), min(~func_2().a.d, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(72872u)))), ~_wgslsmith_clamp_i32(select(var_0.d.a.x, 14024i & u_input.b, var_0.b.x < -417f), abs(0i), max(min(var_7.a.x, -63175i), u_input.b)), 0i);
}

