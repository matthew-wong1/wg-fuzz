struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(i32(-2147483648), Struct_1(i32(-2147483648), -11017i), Struct_1(i32(-2147483648), 0i), vec2<i32>(0i, -1i), Struct_1(0i, -2853i)), Struct_2(2147483647i, Struct_1(0i, 0i), Struct_1(27785i, 1i), vec2<i32>(-1i, 2147483647i), Struct_1(-1i, 8629i)), Struct_2(25599i, Struct_1(12089i, -30405i), Struct_1(1i, -1i), vec2<i32>(1i, 18345i), Struct_1(1i, 0i)), Struct_2(0i, Struct_1(-9246i, 15863i), Struct_1(8539i, 19683i), vec2<i32>(2147483647i, 34641i), Struct_1(-1i, -56280i)), Struct_2(-11907i, Struct_1(-1i, -33176i), Struct_1(6155i, i32(-2147483648)), vec2<i32>(0i, 0i), Struct_1(-22470i, 34616i)), Struct_2(11165i, Struct_1(-19973i, 12034i), Struct_1(i32(-2147483648), -50630i), vec2<i32>(i32(-2147483648), -62812i), Struct_1(-1i, 2147483647i)), Struct_2(1i, Struct_1(-31829i, 1i), Struct_1(0i, 2147483647i), vec2<i32>(-26290i, 1i), Struct_1(-72340i, 1i)), Struct_2(13048i, Struct_1(8773i, 30475i), Struct_1(0i, i32(-2147483648)), vec2<i32>(20024i, 30933i), Struct_1(0i, 34004i)));

var<private> global1: array<i32, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(abs(abs(~u_input.c))), 19036u), 8u)];
    var var_1 = Struct_4(vec3<bool>(!arg_0.x, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), arg_0.x), vec4<f32>(-290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1695f, -656f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))), _wgslsmith_f_op_f32(step(-1371f, 1f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(1380f)))), Struct_3(_wgslsmith_div_u32(max(max(arg_1, 0u), firstLeadingBit(u_input.a.x)), 0u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-697f, 747f, -1000f, -528f), vec4<f32>(-1621f, 923f, -409f, 2225f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1025f, -341f, -461f), vec4<f32>(1644f, 107f, -385f, -1000f), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), !arg_0.x)))), true, var_0.d, Struct_2(_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(72359u, u_input.c), 6u)]), var_0.b, Struct_1(2147483647i, global1[_wgslsmith_index_u32(arg_1, 6u)] ^ 48310i), u_input.b.xz, Struct_1(2147483647i ^ u_input.b.x, u_input.b.x))), Struct_3(abs(_wgslsmith_div_u32(u_input.c, ~u_input.c)), vec4<f32>(-1822f, _wgslsmith_f_op_f32(1489f * -290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, 787f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(769f + -657f) + -299f)), true, _wgslsmith_mult_vec2_i32(vec2<i32>(select(u_input.b.x, var_0.d.x, false), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(74269u, 6u)], -1i), vec2<i32>(26973i, -2147483647i))), ~(-vec2<i32>(2147483647i, var_0.e.a))), Struct_2(~u_input.b.x, Struct_1(u_input.b.x, ~var_0.b.b), var_0.b, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, 2147483647i) << (u_input.a % vec2<u32>(32u)), var_0.d << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_i32(18164i, 28277i), ~var_0.d.x))));
    var_0 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.d, var_1.d.e.d & ~vec2<i32>(-1i, 0i)), 35771i), var_1.d.e.c, var_0.c, firstTrailingBit(var_1.c.d), var_1.c.e.c);
    global0 = array<Struct_2, 8>();
    var var_2 = Struct_4(vec3<bool>(false, (any(arg_0.xy) != any(var_1.a)) | var_1.a.x, !var_1.c.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(min(1884f, 1390f)), -1024f, var_1.c.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c.b) * _wgslsmith_f_op_vec4_f32(var_1.c.b - var_1.d.b))), var_1.c, var_1.c);
    return !(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.a), arg_1) >= var_2.c.a);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    global1 = array<i32, 6>();
    let var_0 = func_3(!vec3<bool>(true, true | select(true, false, false), ~u_input.c <= ~u_input.c), 0u);
    var var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(~541i, _wgslsmith_add_i32(0i, 58116i))), _wgslsmith_clamp_i32(reverseBits(select(arg_1, 58047i, var_0)), min(~arg_1, -arg_0.b), reverseBits(global1[_wgslsmith_index_u32(51532u, 6u)]) & global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), 6u)]), arg_0.a, i32(-1i) * -2147483647i) << (~vec4<u32>(~u_input.c, ~firstLeadingBit(u_input.c), 80297u, u_input.a.x & reverseBits(1u)) % vec4<u32>(32u));
    let var_2 = vec4<bool>(true, true, true, true);
    var_1 = -vec4<i32>(25665i, _wgslsmith_mod_i32(-2147483647i ^ global1[_wgslsmith_index_u32(4294967295u, 6u)], -1i) >> ((u_input.a.x | ~0u) % 32u), 0i, arg_0.b);
    return ~abs(~(~u_input.c & u_input.c));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.c, 6u)], arg_0), arg_0), 4294967295u, u_input.a.x ^ u_input.a.x, ~1u), ~countOneBits(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x))), _wgslsmith_clamp_vec4_u32((vec4<u32>(4910u, 24821u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x)) << ((vec4<u32>(25468u, 43597u, u_input.a.x, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.a.x, 0u)) % vec4<u32>(32u)), abs(~vec4<u32>(42622u, 92236u, u_input.c, u_input.c)), ~vec4<u32>(5965u, 7715u, u_input.a.x, 30393u))) & vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_add_u32(select(21673u, 1u, false) << ((u_input.c | 27935u) % 32u), 47566u), abs(1u));
    global0 = array<Struct_2, 8>();
    var var_1 = Struct_1(arg_0, _wgslsmith_sub_i32(u_input.b.x, -select(-global1[_wgslsmith_index_u32(4902u, 6u)], -36825i, false)));
    var_1 = Struct_1(~(-1i), reverseBits(~firstLeadingBit(global1[_wgslsmith_index_u32(6791u, 6u)]) & -(-2147483647i ^ var_1.b)));
    global1 = array<i32, 6>();
    return !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(58833u, ~var_0.x), 6u)] > (_wgslsmith_sub_i32(arg_0, 20744i) | _wgslsmith_mod_i32(4713i, global1[_wgslsmith_index_u32(4294967295u, 6u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(func_1(global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), func_1(0i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), func_3(vec3<bool>(false, false, false), countOneBits(u_input.a.x))), false);
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    let var_1 = Struct_1(466i, ~(_wgslsmith_mod_i32(u_input.b.x, -31058i) & u_input.b.x));
    let var_2 = 650f;
    global0 = array<Struct_2, 8>();
    var_0 = !(!vec3<bool>(all(func_1(7960i).xy), _wgslsmith_dot_vec4_u32(vec4<u32>(16814u, u_input.c, 4294967295u, 40573u), vec4<u32>(u_input.c, u_input.a.x, 37567u, 0u)) > ~u_input.a.x, false & any(vec3<bool>(false, var_0.x, false))));
    global0 = array<Struct_2, 8>();
    var var_3 = func_1(reverseBits(global1[_wgslsmith_index_u32(0u, 6u)] ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, u_input.b.x, -1i), ~vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 61050i, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_div_vec4_u32(vec4<u32>(45539u, 50685u, 35826u, u_input.a.x), vec4<u32>(u_input.c, 4294967295u, 44648u, u_input.a.x)) << (vec4<u32>(func_2(var_1, global1[_wgslsmith_index_u32(u_input.c, 6u)]), firstLeadingBit(29446u), _wgslsmith_mult_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c))) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c), 4294967295u, countOneBits(abs(u_input.c)), u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_div_f32(var_2, var_2), true)));
}

