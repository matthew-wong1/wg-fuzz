struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(182f, Struct_1(21448i), false, vec2<i32>(i32(-2147483648), 1i), Struct_1(-24751i));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-662f, Struct_1(38466i), true, vec2<i32>(1i, 55515i), Struct_1(25507i)), Struct_2(-1000f, Struct_1(i32(-2147483648)), false, vec2<i32>(2147483647i, 0i), Struct_1(1i)), Struct_2(1810f, Struct_1(18141i), true, vec2<i32>(54960i, -20387i), Struct_1(-1i)), Struct_2(602f, Struct_1(17903i), true, vec2<i32>(1i, 1i), Struct_1(0i)), Struct_2(-459f, Struct_1(30223i), false, vec2<i32>(-9311i, 28173i), Struct_1(-17337i)), Struct_2(161f, Struct_1(2147483647i), false, vec2<i32>(0i, -1i), Struct_1(-1735i)), Struct_2(491f, Struct_1(2147483647i), false, vec2<i32>(5857i, i32(-2147483648)), Struct_1(-1i)), Struct_2(624f, Struct_1(-1i), false, vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(-5942i)), Struct_2(-1380f, Struct_1(-30602i), false, vec2<i32>(i32(-2147483648), 0i), Struct_1(38742i)), Struct_2(673f, Struct_1(67267i), true, vec2<i32>(-34349i, -17218i), Struct_1(5101i)), Struct_2(-583f, Struct_1(11118i), true, vec2<i32>(-1i, 71556i), Struct_1(-7872i)), Struct_2(344f, Struct_1(0i), false, vec2<i32>(0i, -1i), Struct_1(2147483647i)), Struct_2(337f, Struct_1(i32(-2147483648)), true, vec2<i32>(-1i, 1i), Struct_1(25301i)), Struct_2(-1241f, Struct_1(1i), false, vec2<i32>(0i, i32(-2147483648)), Struct_1(-13305i)), Struct_2(-1000f, Struct_1(0i), false, vec2<i32>(-30219i, -22833i), Struct_1(38829i)), Struct_2(1230f, Struct_1(19593i), true, vec2<i32>(-69529i, -5391i), Struct_1(36364i)), Struct_2(609f, Struct_1(-5488i), true, vec2<i32>(34766i, -4110i), Struct_1(i32(-2147483648))), Struct_2(1000f, Struct_1(-45096i), true, vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(1375i)), Struct_2(-526f, Struct_1(17701i), false, vec2<i32>(2836i, -6923i), Struct_1(-2438i)), Struct_2(-698f, Struct_1(i32(-2147483648)), true, vec2<i32>(-24820i, 1i), Struct_1(-1i)), Struct_2(399f, Struct_1(0i), false, vec2<i32>(2777i, -45604i), Struct_1(28682i)), Struct_2(643f, Struct_1(0i), true, vec2<i32>(2899i, 37461i), Struct_1(i32(-2147483648))), Struct_2(1174f, Struct_1(28894i), false, vec2<i32>(22387i, i32(-2147483648)), Struct_1(2147483647i)), Struct_2(1049f, Struct_1(-59482i), true, vec2<i32>(38251i, i32(-2147483648)), Struct_1(2147483647i)), Struct_2(-921f, Struct_1(-16788i), false, vec2<i32>(-18148i, 1i), Struct_1(i32(-2147483648))));

var<private> global2: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    return 45042u;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))) * global0.a));
    let var_1 = arg_0.ywz;
    global2 = array<vec3<bool>, 19>();
    return vec4<bool>(!(-9122i <= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3.a, global0.e.a, global0.d.x), arg_2), 1i)), global0.c, any(vec2<bool>(true, !all(vec4<bool>(true, global0.c, true, global0.c)))), true);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(global3.a ^ ~arg_3.d.x, _wgslsmith_clamp_i32(global0.d.x, -global3.a, global0.e.a), -27050i, 1i), ~vec4<i32>(min(83978i, firstTrailingBit(1i)), _wgslsmith_sub_i32(abs(global0.e.a), ~(-2147483647i)), -1i, ~global0.b.a), countOneBits(abs(select(vec4<i32>(-2147483647i, global0.d.x, global0.d.x, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, -7766i), vec4<i32>(-681i, arg_3.e.a, arg_1.a, 1i)), select(vec4<bool>(true, false, false, global0.c), vec4<bool>(global0.c, arg_3.c, false, false), vec4<bool>(false, false, arg_3.c, arg_3.c))))));
    global1 = array<Struct_2, 25>();
    let var_1 = Struct_1(-2147483647i);
    var var_2 = global3.a;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f))))), arg_1, all(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -544f, global0.a, arg_3.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1847f, arg_3.a, -816f, global0.a))), 75424u, select(vec4<i32>(arg_3.e.a, -1i, var_0.x, var_0.x), ~vec4<i32>(23227i, 0i, 13810i, global0.b.a), true), arg_3.b)), _wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(max(vec2<i32>(arg_3.d.x, arg_1.a), global0.d), firstTrailingBit(vec2<i32>(arg_1.a, 0i)))), vec2<i32>(-23283i, arg_1.a)), arg_3.b);
    return Struct_2(global0.a, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -61635i, global0.e.a, 1i) >> (arg_2 % vec4<u32>(32u)), vec4<i32>(arg_3.b.a, -1i, -48801i, arg_1.a) & vec4<i32>(arg_1.a, 4044i, var_3.e.a, arg_3.b.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, arg_3.e.a, -65910i, arg_1.a) ^ vec4<i32>(var_1.a, 69703i, global3.a, arg_3.e.a), vec4<i32>(var_0.x, arg_1.a, var_1.a, 33042i)))), true && !(!(false && arg_3.c)), max(select(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.e.a, -19959i), var_0.xz), select(vec2<i32>(arg_1.a, var_0.x), var_0.xx, select(vec2<bool>(arg_3.c, false), vec2<bool>(global0.c, false), true)), true), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-2147483647i, -1i)) >> (arg_0.xx % vec2<u32>(32u))), Struct_1(global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(reverseBits(vec3<u32>(_wgslsmith_clamp_u32(13258u >> (u_input.a.x % 32u), ~4294967295u, func_1(Struct_1(global0.d.x), vec4<f32>(global0.a, -241f, -955f, -278f), global0.d.x)), ~21344u, u_input.b.x)), Struct_1(_wgslsmith_mult_i32(global0.d.x, select(0i, global0.d.x, global0.c))), ~(~vec4<u32>(26022u, 1u, 1u, u_input.b.x) | abs(vec4<u32>(22358u, u_input.a.x, u_input.a.x, u_input.b.x))) | _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(533u, 0u, 20218u, 1u)), ~(~vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x))), global1[_wgslsmith_index_u32(u_input.b.x, 25u)]);
    let var_1 = ~firstTrailingBit(reverseBits(-(~vec3<i32>(-1i, global3.a, global0.e.a))));
    var var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 4469u) | _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 31194u, 1u), vec4<u32>(73602u, u_input.a.x, u_input.b.x, 1u)), ~10171u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(8972u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x)), ~vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.a.x)), vec4<u32>(0u, u_input.a.x, 30093u, 5674u) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, 41683u, u_input.a.x), vec4<u32>(11113u, 1u, 3117u, 22301u))) >> (~(~vec4<u32>(u_input.b.x, 7299u, 3911u, u_input.a.x)) % vec4<u32>(32u)));
    global3 = func_2(var_2.ywy, Struct_1(-12942i), vec4<u32>(~var_2.x, var_2.x, ~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, var_2.x), _wgslsmith_add_u32(firstTrailingBit(30237u), ~u_input.a.x)), func_2(countOneBits(abs(u_input.a)) ^ vec3<u32>(_wgslsmith_div_u32(u_input.b.x, 19865u), var_2.x, ~var_2.x), var_0.b, vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~0u), u_input.b.x, var_2.x), Struct_2(func_2(firstTrailingBit(var_2.zwz), func_2(vec3<u32>(0u, 37092u, 19742u), Struct_1(var_1.x), vec4<u32>(4294967295u, 51917u, u_input.b.x, u_input.b.x), Struct_2(global0.a, global0.b, var_0.c, vec2<i32>(-1i, 14218i), Struct_1(global3.a))).b, vec4<u32>(u_input.a.x, u_input.b.x, 81786u, 4294967295u), global1[_wgslsmith_index_u32(0u, 25u)]).a, Struct_1(~global3.a), var_0.c && true, -global0.d, func_2(countOneBits(var_2.wzx), Struct_1(global0.b.a), vec4<u32>(14155u, 1u, 21577u, 4294967295u) >> (vec4<u32>(0u, 102367u, u_input.b.x, 41554u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(23191u, 25u)]).e))).b;
    var var_3 = 102f;
    global3 = func_2(abs(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 12327u, 510u, 42778u), vec4<u32>(0u, u_input.b.x, var_2.x, u_input.a.x)), var_2.x, ~33713u & ~var_2.x)), func_2(select(select(vec3<u32>(var_2.x, 486u, 3491u), u_input.a, false), ~(~vec3<u32>(77386u, var_2.x, 30366u)), true), var_0.e, ~vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 37077u), abs(1u)), Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_0.e, any(func_3(vec4<f32>(-1273f, global0.a, global0.a, var_0.a), var_2.x, vec4<i32>(global3.a, global0.d.x, -1i, 14082i), Struct_1(-29862i))), -(vec2<i32>(var_0.e.a, global3.a) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u))), func_2(var_2.yxy, Struct_1(2147483647i), vec4<u32>(26634u, var_2.x, 33414u, 25505u) & vec4<u32>(var_2.x, var_2.x, 4294967295u, var_2.x), var_0).e)).b, ~(~vec4<u32>(12011u, func_1(Struct_1(1i), vec4<f32>(var_0.a, var_0.a, -1163f, -662f), global0.d.x), 32210u, 0u)), var_0).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, u_input.b.x, var_2.x << (~1u % 32u)), max(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, var_2.x, 81328u)), ~var_2.wyw), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.x, u_input.a.x), u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_0.a, var_0.a, var_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2605f, 948f, 407f, -1325f) + vec4<f32>(767f, 385f, 815f, -661f))) - vec4<f32>(261f, _wgslsmith_f_op_f32(round(-763f)), -1000f, global0.a))), func_1(Struct_1(reverseBits(-28472i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, var_0.a, 362f, var_0.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, 1537f, 216f, global0.a) + vec4<f32>(-1991f, global0.a, 1248f, var_0.a))), _wgslsmith_add_i32(0i, countOneBits(1647i))) << (32123u % 32u));
}

