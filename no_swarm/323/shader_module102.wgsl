struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 13780u), vec2<u32>(1u, 67978u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(25355u, 1u), vec2<u32>(10495u, 32304u), vec2<u32>(31210u, 76691u), vec2<u32>(1450u, 4294967295u), vec2<u32>(4294967295u, 36570u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 83567u), vec2<u32>(15927u, 71916u), vec2<u32>(4294967295u, 41471u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(10114u, 48140u), vec2<u32>(4294967295u, 4883u), vec2<u32>(50525u, 27574u), vec2<u32>(0u, 92395u), vec2<u32>(31080u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4333u, 84621u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 65362u), vec2<u32>(14979u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(59547u, 41794u));

var<private> global2: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(2147483647i, -6304i, 1i), vec3<i32>(2147483647i, -11940i, 2147483647i), vec3<i32>(i32(-2147483648), 3965i, -1i), vec3<i32>(0i, i32(-2147483648), 66855i));

var<private> global3: array<u32, 29> = array<u32, 29>(4294967295u, 9159u, 75338u, 1u, 0u, 100707u, 4294967295u, 9850u, 19330u, 59672u, 26631u, 96690u, 0u, 0u, 33512u, 1u, 31459u, 34537u, 36247u, 4294967295u, 0u, 4294967295u, 43988u, 24453u, 0u, 36230u, 2934u, 8199u, 2780u);

var<private> global4: array<Struct_3, 9>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = arg_1;
    global0 = array<Struct_2, 28>();
    var var_2 = u_input.b << (36975u % 32u);
    var var_3 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(33459u, arg_2.d, 6132u), arg_1.b.a.x ^ var_0.a), ~(~4294967295u), 0u);
    return !arg_1.b.e;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c, arg_1.c))) - vec2<f32>(arg_1.c, arg_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c)) * vec2<f32>(1000f, arg_1.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-111f, 915f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-706f, 206f))), any(vec4<bool>(arg_0.e.x, arg_1.b.e.x, arg_1.b.e.x, arg_0.e.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -216f)))));
    global0 = array<Struct_2, 28>();
    global3 = array<u32, 29>();
    var var_1 = ~(~(~(-vec4<i32>(-13335i, 1i, -2147483647i, arg_0.b) >> (~vec4<u32>(arg_1.b.d, u_input.d, 43755u, 0u) % vec4<u32>(32u)))));
    global1 = array<vec2<u32>, 29>();
    return Struct_1(arg_0.a, reverseBits(_wgslsmith_mult_i32(0i, -22821i)), vec3<i32>(~(-(~arg_0.b)), _wgslsmith_div_i32(13851i, arg_1.b.c.x ^ firstLeadingBit(var_1.x)), arg_0.b), arg_0.d, func_2(min(~(0u >> (arg_1.a % 32u)), _wgslsmith_add_u32(4294967295u, ~u_input.d)), Struct_2(51157u, Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(58751u, global3[_wgslsmith_index_u32(0u, 29u)], arg_0.a.x), vec3<u32>(1u, 94770u, 17543u)), 0i, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, 2147483647i), vec3<i32>(26229i, 2147483647i, arg_1.b.b)), _wgslsmith_div_u32(13574u, u_input.d), select(vec3<bool>(true, arg_1.b.e.x, arg_0.e.x), vec3<bool>(arg_1.b.e.x, true, false), arg_0.e.x)), 2172f), arg_1.b, u_input.d));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<u32>, 29>();
    let var_0 = -768f;
    let var_1 = _wgslsmith_sub_vec4_i32(abs(abs(vec4<i32>(u_input.a, -1i, u_input.c, -51861i)) ^ ~vec4<i32>(u_input.c, 47782i, u_input.a, -44641i)), -max(-vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), select(vec4<i32>(u_input.b, u_input.c, 26073i, u_input.a), vec4<i32>(1i, -2147483647i, u_input.c, 19917i), false))) >> (((vec4<u32>(1u, ~40961u, ~15769u, ~u_input.d) ^ ~vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(u_input.d, 29u)], 0u, 1u)) & vec4<u32>(~1295u, u_input.d, 10612u, 44631u)) % vec4<u32>(32u));
    let var_2 = Struct_2(u_input.d, func_3(Struct_1(vec3<u32>(0u, u_input.d >> (0u % 32u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15156u, 29u)], 29u)]), -24085i, -var_1.ywx, 0u, func_2(u_input.d, global0[_wgslsmith_index_u32(~0u, 28u)], Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(u_input.d, 29u)], u_input.d, global3[_wgslsmith_index_u32(1u, 29u)]), -2147483647i, var_1.xwy, u_input.d, vec3<bool>(true, true, false)), 5171u ^ global3[_wgslsmith_index_u32(u_input.d, 29u)])), global0[_wgslsmith_index_u32(~54431u, 28u)]), var_0);
    global2 = array<vec3<i32>, 4>();
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(global3[_wgslsmith_index_u32(37003u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 66719u, u_input.d), var_2.b.a), 29u)]) << (max(select(global3[_wgslsmith_index_u32(4294967295u, 29u)], 57732u, false) & firstTrailingBit(u_input.d), var_2.a) % 32u), (global3[_wgslsmith_index_u32(4294967295u, 29u)] & 4294967295u) ^ 12228u), 9u)];
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_1 {
    return arg_1.a;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = Struct_2(4294967295u, arg_1.a, _wgslsmith_f_op_f32(-305f + _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<Struct_2, 28>();
    var var_1 = _wgslsmith_dot_vec3_i32(abs(~(-vec3<i32>(0i, -85289i, -22625i))) | vec3<i32>(_wgslsmith_div_i32(func_3(Struct_1(vec3<u32>(0u, 94271u, 0u), -16575i, vec3<i32>(2147483647i, u_input.c, arg_1.a.c.x), arg_1.d.d, var_0.b.e), Struct_2(var_0.a, Struct_1(vec3<u32>(1u, u_input.d, 54761u), 0i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 29u)], 4u)], global3[_wgslsmith_index_u32(1u, 29u)], vec3<bool>(false, false, false)), 1000f)).c.x, 14840i), min(_wgslsmith_sub_i32(0i, -626i), -1i), max(arg_1.e, _wgslsmith_mod_i32(u_input.b, -35796i))), global2[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(26422u << (_wgslsmith_div_u32(77906u, u_input.d) % 32u), 54721u), 29u)], _wgslsmith_clamp_u32(func_1().d.a.x, u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 29u)], 29u)], 4294967295u), var_0.a << (var_0.b.a.x % 32u), u_input.d)), !arg_1.c.x), 4u)]);
    var var_2 = vec2<u32>(var_0.b.d, countOneBits(_wgslsmith_mod_u32(var_0.a, arg_1.d.a.x)) & firstLeadingBit(~1u));
    var_0 = global0[_wgslsmith_index_u32(abs(~u_input.d ^ ~14147u) >> (44889u % 32u), 28u)];
    return StorageBuffer(i32(-1i) * -(~_wgslsmith_mult_i32(u_input.b, 2147483647i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -454f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1251f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_div_f32(532f, 1555f), -281f, _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 107f, arg_0, arg_0)))))), vec4<i32>(-((arg_1.b.b | var_0.b.c.x) & arg_1.a.c.x), -59458i, ~0i, u_input.c | abs(arg_1.d.b >> (var_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(174f, -553f) - vec2<f32>(194f, 240f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-370f, 216f) + vec2<f32>(-723f, 1390f)), vec2<bool>(false, false)))))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(16009u, u_input.d, u_input.d, 1u), ~vec4<u32>(u_input.d, 56760u, 4294967295u, global3[_wgslsmith_index_u32(u_input.d, 29u)])), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 33357u), vec2<u32>(89163u, 0u)), countOneBits(~u_input.d)), vec3<u32>(4294967295u, ~reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.d), 29u)]), 64046u)), 28u)];
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.c));
    global0 = array<Struct_2, 28>();
    global2 = array<vec3<i32>, 4>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-246f, _wgslsmith_f_op_f32(580f * var_0.x)))));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2)))) * _wgslsmith_f_op_f32(-var_2)), Struct_3(func_4(~(~0u), func_1(), var_1.b.e.x, -1000f), func_1().d, vec3<bool>(all(func_3(Struct_1(vec3<u32>(var_1.a, 27435u, u_input.d), -18443i, vec3<i32>(u_input.b, -2147483647i, -45062i), global3[_wgslsmith_index_u32(u_input.d, 29u)], vec3<bool>(false, var_1.b.e.x, var_1.b.e.x)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 28u)]).e), !var_1.b.e.x && var_1.b.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a.x, 33545u, 15226u, 32149u), vec4<u32>(var_1.b.d, global3[_wgslsmith_index_u32(u_input.d, 29u)], u_input.d, var_1.b.d)) >= 0u), func_1().a, _wgslsmith_div_i32(u_input.a, ~1726i)));
}

